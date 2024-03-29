local p = {}

local match = mw.ustring.match local gsub = mw.ustring.gsub local U = mw.ustring.char

local function IPAspan(text)

   return
       '' ..
       text ..
       ''

end

local function ine(text)

   if text == "" then
       return nil
   else
       return text
   end

end

function p.tag(frame)

   local linkHelpPage = require('Module:Yesno')(frame.args.link, false)
   
   local args = frame:getParent().args[1] and frame:getParent().args
       or frame.args
   local namespace = mw.title.getCurrentTitle().nsText
   
   local text, lang
   
   local err = {}
   local trackingCategories = {}
   local IPApage
   
   -- Tracks incorrect characters.
   local function track(text)
       -- non-IPA g
       if mw.ustring.find(text, U(0x67)) then
           mw.log("Incorrect character g found in " .. text)
           table.insert(trackingCategories, "")
       end
   end
   
   if linkHelpPage then
       text = ine(args[2])
       lang = ine(args[1])
   
       if lang then
           IPApage = mw.loadData("Module:IPA/data")[lang]
           
           if not IPApage then 
               table.insert(err, "[No IPA key for the language code " .. lang.."]")
           end
       else
           table.insert(err, "[language code?]")
       end
   else
       text = ine(args[1])
   end
   
   local output = ""
   
   if text then
       workingString = text
       
       -- Remove targets of wikilinks.
       workingString = gsub(workingString, "%[%[([^|]+|)", "")
       -- Remove HTML tags.
       workingString = gsub(workingString, "<[^>]+>", "")
       track(workingString)
       
       text = IPAspan(text)
   
       if IPApage then
           output = "" .. text .. ""
       elseif text then
           output = text
       end
   else
       table.insert(err, "[IPA symbols?]")
   end
   
   if #err > 0 then
       err = "^(" .. table.concat(err) .. ")"
   else
       err = ""
   end
   
   -- Makes the error message show only in preview mode.
   if frame:preprocess("") == "" then
       output = output .. err
   end
   
   return output .. table.concat(trackingCategories)

end

return p

Category:IPA templates with incorrect characters