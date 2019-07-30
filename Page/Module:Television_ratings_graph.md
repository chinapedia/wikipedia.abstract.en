-- This module implements .

local contrast_ratio = require('Module:Color contrast')._ratio

------------------------------------------------------------------------

-- TVRG class -- The main class.

------------------------------------------------------------------------

local TVRG = {}

-- Convert HEX codes to RGB values function TVRG.hex2rgb(hex)

   hex = hex:gsub('#', '')
   if #hex == 3 then
       -- #000 format
       return tonumber("0x"..hex:sub(1,1)..hex:sub(1,1))/256, tonumber("0x"..hex:sub(2,2)..hex:sub(2,2))/256,
              tonumber("0x"..hex:sub(3,3)..hex:sub(3,3))/256
   else
       -- #000000 format
       return tonumber("0x"..hex:sub(1,2))/256, tonumber("0x"..hex:sub(3,4))/256, tonumber("0x"..hex:sub(5,6))/256
   end

end

-- Allow usages of cells function TVRG.NACell(frame,text)

   local cell = mw.html.create('td')
   local attrMatch = '([%a-]*)="([^"]*)"'
   
   infoParam = frame:expandTemplate{title='N/A',args={text}}
   
   -- Gather styles of  and assign to node variable
   while true do
       local a,b = string.match(infoParam,attrMatch)
       if a == nil or b == nil then break end
       cell:attr(a,b)
       infoParam = string.gsub(infoParam,attrMatch,'',1)
   end

   infoParam = string.gsub(infoParam,'%s*|%s*','',1)
   cell:wikitext(infoParam)
   
   return cell

end

-- Create the graph and table function TVRG.new(frame,args)

   args = args or {}
   
   -- Variables
   local timeline = ''
   local longestseason = -1
   local average = args.average and 1 or 0
   local season_title = args.season_title or 'Season'
   local root = mw.html.create('div')
       :attr('align', 'center')
   
   -- Create the timeline
   
   -- Number of actual viewer numbers
   local numberargs = 0
   for k,v in pairs(args) do 
       if not string.match(k,'[^%d]+') and not string.match(v,'[^%d\.]+') then numberargs = numberargs + 1 end
   end

   -- Determine number of seasons
   local num_seasons = -1
   for k,v in pairs(args) do
       local thisseason = tonumber(string.sub(k,6))
       if string.sub(k,1,5) == 'color' and thisseason > num_seasons then
           num_seasons = thisseason
       end
   end

   -- Determine number of episodes
   local num_episodes
       -- Subtract averages if included (they should be equal to the number of seasons)
       if average == 1 then
           num_episodes = numberargs-num_seasons
       else
           num_episodes = numberargs
       end

   -- Bar width
   local barwidth
   if num_episodes < 20 then barwidth = 8
   elseif num_episodes >= 20 and num_episodes < 50 then barwidth = 7
   elseif num_episodes >= 50 and num_episodes < 80 then barwidth = 6
   elseif num_episodes >= 80 then barwidth = 5
   end

   -- Graph width
   local graphwidth
   if args.bar_width == nil then
       if num_episodes < 20 then graphwidth = num_episodes*13+98
       elseif num_episodes >= 20 and num_episodes < 50 then graphwidth = num_episodes*12+98
       elseif num_episodes >= 50 and num_episodes < 80 then graphwidth = num_episodes*11+98
       elseif num_episodes >= 80 then graphwidth = num_episodes*10+98
       end
   else
       if num_episodes < 20 then graphwidth = num_episodes*(13+args.bar_width-barwidth)+98
       elseif num_episodes >= 20 and num_episodes < 50 then graphwidth = num_episodes*(12+args.bar_width-barwidth)+98
       elseif num_episodes >= 50 and num_episodes < 80 then graphwidth = num_episodes*(11+args.bar_width-barwidth)+98
       elseif num_episodes >= 80 then graphwidth = num_episodes*(10+args.bar_width-barwidth)+98
       end
   end

   -- Basis parameters
   timeline = timeline .. "ImageSize  = width:" .. (args.width or graphwidth) .. " height:" .. (args.height or 300) .. "\n"
   timeline = timeline .. "PlotArea   = left:50 bottom:70 top:35 right:50\n"
   timeline = timeline .. "AlignBars  = justify\n"
   
   timeline = timeline .. "Colors     =\n"
   timeline = timeline .. " id:gray value:gray(0.7)\n"
   
   -- Add tracking categories
   if args.width and mw.title.getCurrentTitle().namespace == 0 then root:wikitext('') end

   -- Colour and legend variables
   local season = 1
   for season = 1,num_seasons do 
       local r,g,b = TVRG.hex2rgb(args['color' .. season] or '#006600')
       
       local GraphLegend = season_title .. " " .. season
       if args["legend" .. season] then
           local legendKey = string.sub(args["legend" .. season], 0, 1)
           if type(tonumber(legendKey)) == "number" then
               GraphLegend = season_title .. " " .. args["legend" .. season]
           else
               GraphLegend = args["legend" .. season]
           end
       end
       
       timeline = timeline .. " id:season" .. season .. " value:rgb("..r..","..g..","..b..") " ..
           (args.hidelegend == nil and "legend:" .. string.gsub(string.gsub(GraphLegend, ' ', '_'), "_(.-)_", '%1') or '') .. "\n"
       season = season + 1
   end

   -- Determine maximum viewer figure
   local maxviewers = -1
   local multiple = 'millions'
   for k,v in pairs(args) do
       local num = tonumber(v)
       if tonumber(k) ~= nil and num ~= nil and num > maxviewers then
           maxviewers = num
       end
   end
   if maxviewers <= 1.5 then
       multiple = 'thousands'
       maxviewers = maxviewers*1000
       for k, v in pairs(args) do
           local num = tonumber(v)
           if tonumber(k) ~= nil and num ~= nil then args[k] = tostring(num*1000) end
       end
   end

   -- Further parameters, with rounded-up viewer figures as maximum period
   timeline = timeline .. "DateFormat = x.y\n"
   timeline = timeline .. "Period     = from:0 till:" .. math.ceil(maxviewers) .. "\n"
   timeline = timeline .. "TimeAxis   = orientation:vertical\n"
   timeline = timeline .. "ScaleMajor = gridcolor:gray increment:" .. (args.y_intervals or 10^math.ceil(math.log10(maxviewers)-math.log10(15))) .. " start:0\n"
   timeline = timeline .. (args.hidelegend == nil and "Legend     = orientation:horizontal\n" or "")

   -- Interval parameter set to prevent overlapping bars
   local bar = 1
   if args.x_intervals then
       timeline = timeline .. "BarData    =\n"
       for k,v in pairs(args) do
           if string.lower(v) == 'n/a' then v = '' end
           if tonumber(k) ~= nil and (tonumber(v) ~= nil or v == '') and (average == 0 or (average == 1 and args[k+1] ~= '-' and args[k+1] ~= nil)) then
               timeline = timeline .. "  bar:"..bar.."  text:"..((bar == 1 or bar % args.x_intervals == 0) and bar or ' ').."\n"
               bar = bar + 1
           end
       end
   end

   -- Plot data
   timeline = timeline .. "PlotData   =\n"
   timeline = timeline .. "  width:" .. (args.bar_width or barwidth) .. "\n"
   
   -- Add bars to timeline, one per viewer figure
   local bar = 1
   local season = 0
   local thisseason = 0
   
   for k,v in pairs(args) do
       if string.lower(v) == 'n/a' then v = '' end
       if tonumber(k) ~= nil then
           if v == '-' then
               -- Hyphen means new season, so change season colour
               season = season + 1
               
               -- Determine highest number of episodes in a season
               if thisseason > longestseason then
                   longestseason = thisseason
               end
               thisseason = 0
           elseif average == 0 or (average == 1 and args[k+1] ~= '-' and args[k+1] ~= nil) then
               -- Include white/black bar to act as border
               local black_cr = contrast_ratio{args['color' .. season], 'black', ['error'] = 0}
               local white_cr = contrast_ratio{'white', args['color' .. season], ['error'] = 0}
               local bgrnd_cr = (black_cr > white_cr and 'black' or 'gray')
   
               timeline = timeline .. "  mark:(line," .. bgrnd_cr .. ")\n"
               timeline = timeline .. "  color:" .. bgrnd_cr .. "\n"
               timeline = timeline .. "  bar:" .. bar .. " width:" .. ((args.bar_width or barwidth)+2) .. " from:start till:" .. (v ~= '' and v or 'start') .. "\n"
               
               -- Include bar for viewer figure, do not include if averages are included and the next parameter is a new season marker
               timeline = timeline .. "  color:season" .. season .. "\n"
               timeline = timeline .. "  bar:" .. bar .. " from:start till:" .. (v ~= '' and v or 'start') .. "\n"
               
               -- Increment tracking variables
               thisseason = thisseason + 1
               bar = bar + 1
           end
       end
   end
   -- Determine highest number of episodes in a season after final season's bars
   if thisseason > longestseason then
       longestseason = thisseason
   end
   
   -- Axis labels
   local countryDisplayUS, countryDisplayUK, countryDisplayOther
   if args.country ~= nil and args.country ~= '' then
       if args.country == "U.S." or args.country == "US" or args.country == "United States" then countryDisplayUS = 'U.S.'
       elseif args.country == "U.K." or args.country == "UK" or args.country == "United Kingdom" then countryDisplayUK = 'U.K.'
       else countryDisplayOther = args.country
       end
   end
   timeline = timeline .. "TextData =\n"
   timeline = timeline .. "  pos:(" .. ((args.width or graphwidth)/2-18) .. ",40) textcolor:black fontsize:M text:Episode\n"
   timeline = timeline .. "  pos:(10," .. ((args.height or 300)-20) .. ") textcolor:black fontsize:M text:" .. ((countryDisplayUS or countryDisplayUK or countryDisplayOther) or "") .. ((countryDisplayUS or countryDisplayUK or countryDisplayOther) and " v" or "V") .. "iewers (" .. multiple .. ")\n"
   
   -- If there's a title, add it with the viewers caption, else just display the viewers caption by itself
       if args.title ~= nil and args.title ~= '' then
           root:wikitext("''_'" .. args.title .. "_" .. frame:expandTemplate{ title = 'hsp' } ..
                 ": " .. ((countryDisplayUS or countryDisplayUK or countryDisplayOther) or "") .. ((countryDisplayUS or countryDisplayUK or countryDisplayOther) and " v" or "V") .. "iewers per episode (" .. multiple .. ")'''"):css('margin-top', '1em')
       else
           root:wikitext("Viewers per episode (" .. multiple .. ")"):css('margin-top', '1em')
       end

   -- Add timeline to div
   if args.no_graph == nil then
       root:node(frame:extensionTag('timeline', timeline))
   end
   
   -- Create ratings table
   if args.no_table == nil then
       local rtable = mw.html.create('table')
           :addClass('wikitable')
           :css('text-align', 'center')
       
           -- Create headers rows
           local row = rtable:tag('tr')
           row:tag('th'):wikitext(season_title)
               :attr('colspan','2')
               :attr('rowspan','2')
               :css('padding-left', '.8em')
               :css('padding-right', '.8em')
               
           row:tag('th')
               :attr('colspan',longestseason)
               :wikitext("Episode number")
               :css('padding-left', '.8em')
               :css('padding-right', '.8em')
               
           -- Average column
           if average == 1 then
               row:tag('th')
                  :attr('scope','col')
                  :attr('rowspan','2')
                  :wikitext("Average")
                  :css('padding-left', '.8em')
                  :css('padding-right', '.8em')
           end

           local row = rtable:tag('tr')
           
           for i = 1,longestseason do
               row:tag('th')
                  :attr('scope','col')
                  :wikitext(i)
           end
       
       local season = 1
       local thisseason = 0
       
       -- Create table rows and cells
       for k,v in pairs(args) do
           if tonumber(k) ~= nil then
               -- New season marker, or final episode rating
               if v == '-'  or (average == 1 and args[k+1] == nil) then
                   if season > 1 then
                       -- Spanning empty cells with 
                       if thisseason < longestseason then
                           row:node(TVRG.NACell(frame,"N/A"):attr('colspan',longestseason-thisseason))
                       end
                       
                       if average == 1 then
                           -- If averages included, then set the averages cell with value or TBD
                           if v ~= '' then
                               row:tag('td'):wikitext(args[k+1] ~= nil and args[k-1] or v)
                           else
                               row:node(TVRG.NACell(frame,"TBD"))
                           end
                           thisseason = thisseason + 1
                       end
                   end
                   
                   -- New season marker
                   if v == '-' then
                       -- New row with default or preset caption
                       row = rtable:tag('tr')
                       row:tag('th')
                           :css('background-color', args['color' .. season])
                           :css('width','10px')
                       
                       row:tag('th')
                          :attr('scope','row')
                          :wikitext(args["legend" .. season] and args["legend" .. season] or season)
                       
                       thisseason = 0
                       season = season + 1
                   end
               elseif average == 0 or (average == 1 and args[k+1] ~= '-' and args[k+1] ~= nil) then
                   -- Viewer figures, either as a number or TBD
                   if string.lower(v) == 'n/a' then
                       row:node(TVRG.NACell(frame,"N/A"))
                   elseif v ~= '' then
                       row:tag('td'):wikitext(v)
                          :css('width', '35px')
                   else
                       row:node(TVRG.NACell(frame,"TBD"))
                   end
                   thisseason = thisseason + 1
               end
           end
       end
       
       -- Finish by checking if final row needs  cells
       if average == 0 and thisseason < longestseason then
           row:node(TVRG.NACell(frame,"N/A"):attr('colspan',longestseason-thisseason))
       end
           
       -- Add table to div root and return
       root:node(rtable)
   end
   
   local span = mw.html.create( 'span' )
       span:css( 'color', 'red' )
           :wikitext(frame:expandTemplate{ title='dummy reference', args={ 'citation needed', txtital = 'y' } })
        
   if countryDisplayUS then
       root:wikitext("Audience measurement performed by Nielsen Media Research." .. (args.refs or tostring(span)))
   elseif countryDisplayUK then
       root:wikitext("Audience measurement performed by Broadcasters' Audience Research Board." .. (args.refs or tostring(span)))
   else
       root:wikitext("Source: " .. (args.refs or tostring(span)))
   end
   
   return tostring(root)

end

------------------------------------------------------------------------

-- Exports

------------------------------------------------------------------------

local p = {}

function p.main(frame)

   local args = require('Module:Arguments').getArgs(frame, {
       removeBlanks = false,
       wrappers = 'Template:Television ratings graph'
   })
   return TVRG.new(frame,args)

end

return p

Category:Articles with television ratings graphs that use the width parameter