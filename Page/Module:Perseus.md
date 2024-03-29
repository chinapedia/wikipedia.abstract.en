export = {}

data = {

   ["Smyth"] = {
       ["path"] = "1999.04.0007"
   }

}

local find, match, gmatch = mw.ustring.find, mw.ustring.match, mw.ustring.gmatch

local function makeURL(resourceCode, part, code)

   code = mw.uri.encode(code, "PATH")
   return "http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:" .. path .. ":" .. part .. "=" .. code

end

function Smyth(section, part)

   if not part then
       part = "smythp"
   end
   SmythData = data.Smyth
   path = SmythData.path
   local Part, url
   if section == "" or section == nil then
       url, Part = "No number provided", "No number provided"
   else
       sectionNumber = tonumber(section)
       if sectionNumber == nil then
           Part = ""
       else
           if sectionNumber < 189 then
               Part = "Part I: Letters, Sounds, Syllables, Accent"
           elseif sectionNumber < 822 then
               Part = "Part II: Inflection"
           elseif sectionNumber < 900 then
               Part = "Part III: Formation of Words"
           elseif sectionNumber < 3049 then
               Part = "Part IV: Syntax"
           else
               error("The largest valid section number is 3048")
           end
       end
       url = makeURL(path, part, section)
   end
   return { url = url, Part = Part }

end

function export.SmythSection(frame)

   local sectionParameter = frame.args[1]
   local output, sign = "", ""
   local sections, postscripts, separators = {}, {}, {}
   local part = frame.args[2]
   if sectionParameter then
       n = 1
       if find(sectionParameter, "[^%d%s]") then
           for number, postscript, separator in gmatch(sectionParameter, "(%d+ ?%u?)(%.?[%l%d]?)(%p?[^%d]*)") do
               sections[n], postscripts[n], separators[n] = number, postscript, separator
               if sections[n] == "" or sections[n] == nil then
                   break
               end
               n = n + 1
           end
       else
           sections[1], separators[1] = match(sectionParameter, "(%d+)"), ""
       end
   else
       error("SmythSection wants input in the first parameter")
   end
   if #sections == nil then
       error("No numbers in the text provided to SmythSection")
   elseif sections[2] == "" or sections[2] == nil then
       sign = "§"
   else
       sign = "§§"
   end
   for i = 1, #sections do
       if sections[i] == "" or sections[i] == nil then -- Does gmatch return nil or an empty string when it finds no match?
           break
       else
           if not postscripts[i] then postscripts[i] = "" end
           if not separators[i] then separators[i] = "" end
           output = output .. "[" .. Smyth(sections[i]).url .. " "
           if i == 1 then
               output = output .. sign .. " "
           end
           output = output .. sections[i] .. postscripts[i] .. "]" ..  separators[i]
       end
   end
   return output

end

function export.SmythPart(frame)

   local sectionParameter = frame.args[1]
   local section = match(sectionParameter, "(%d+)")
   return Smyth(section).Part

end

return export