-- This module implements .

local getArgs = require('Module:Arguments').getArgs

p = {}

local function ifexist(page)

   if not page then return false end
   if mw.title.new(page).exists then return true end
   return false

end

function p.main(frame)

   local args = getArgs(frame)
   local maxk = tonumber(args.max or '50') or 50
   local mink = tonumber(args.min or '1') or 1
   local root = ''
   local missing = args.missing or (args.max and 'transclude' or 'skip')
   local res = ''
   local headertemplate = args.headertemplate or ''
   
   if missing ~= 'transclude' then
       root = frame:preprocess('')
   end
   maxk = (maxk > (mink + 250)) and (mink + 250) or maxk
   for i=mink,maxk do
       if missing == 'transclude' then
           if headertemplate == '' then
               res = res .. frame:expandTemplate{title = 'subpage', args = { i } }
           else 
               res = res .. frame:expandTemplate{title = 'subpage', args = { i, headertemplate=headertemplate } }
           end
       else
           if ifexist(root .. '/' .. i) then
               if headertemplate == '' then
                   res = res .. frame:expandTemplate{title = 'subpage', args = { i } }
               else 
                   res = res .. frame:expandTemplate{title = 'subpage', args = { i, headertemplate=headertemplate } }
               end
           else
               if missing == 'link' then
                   res = res .. '' .. root .. '/' .. i .. ' '
               elseif missing == 'stop' then
                   i = maxk + 1
               end
           end
       end
   end
   
   return res

end

return p