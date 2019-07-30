-- This module returns the country name or the flag name for a country, -- based on the three-letter IOC/CGA/FINA alias.

--The following country code is used for multiple countries: ANG (workaround: added ANG_CGF for use with Commonwealth Games) The following names have different names/flags based on sport/year Great Britain (and N.I.) GBR, GBR_WCA (latter added to add text in parens) Hong Kong HKG, HKG_CGF (latter added to keep colonial flag) Individual Olympic Athletes IOA, IOA_2000 (IOA changed to Independent Olympic Athletes in 2012) SWZ Swaziland became Eswatini after the 2018 Commonwealth Games MKD Macedonia became North Macedonia in 2019 ART No "Athlete" before Refugee Team @ 2017 AIMAG The following names occur twice due to CGF/IOC/FINA/IAAF/etc differences Anguilla AIA, ANG_CGF Antigua and Barbuda ANT, ATG Bahrain BHN, BHR, BRN Curaçao CUR, CUW Faroe Islands FAR, FRO Guernsey GGY, GUE Iran IRI, IRN Ireland IRE, IRL - IRE is *only* for CGF apps Jersey JER, JEY Lebanon LBN, LIB Montserrat MNT, MSR Nicaragua NCA, NIC Norfolk Island NFI, NFK Oman OMA, OMN Refugee Olympic Team ROA, ROT Romania ROM, ROU Saint Helena SHE, SHN Saint Vincent and the Grenadines SVG, VIN Sarawak SAR, SWK Singapore SGP, SIN South Africa RSA, SAF Tonga TGA, TON Trinidad and Tobago TRI, TTO Turks and Caicos Islands TCA, TCI, TKS Oddity that needs to be revisited French Polynesia PYF, TAH - TAH has been converted to Tahiti per SILENCE

local function stripToNil(text)

   -- If text is a string, return its trimmed content, or nil if empty.
   -- Otherwise return text (which may, for example, be nil).
   if type(text) == 'string' then
       text = text:match('(%S.-)%s*$')
   end
   return text

end

local function yes(parameter)

   -- Return true if parameter should be interpreted as "yes".
   return ({ y = true, yes = true, on = true, [true] = true })[parameter]

end

local function getAlias(args)

   -- Return alias parameter, possibly modified for exceptional cases.
   local alias = stripToNil(args.alias)
   local games = stripToNil(args.games)
   local year = tonumber(args.year)
   local fullName = stripToNil(args.fullName)
   if fullName then
       year = tonumber(fullName:match('^%d+'))  -- ignore args.year
   end
   if alias == 'ANG' then
       if games == 'Commonwealth Games' then
           alias = 'ANG_CGF'
       end
   elseif alias == 'ART' then
       if games == 'Asian Indoor and Martial Arts Games' then
           alias = 'ART_AIMAG'
       end
   elseif alias == 'GBR' then
       if games == 'World Championships in Athletics' or games == 'European Athletics Championships' then
           alias = 'GBR_WCA'
       elseif games == 'European Championships' then
           if year == 2018 then
               alias = 'GBR_WCA'
           end
       end
   elseif alias == 'HKG' then
       if games == 'Commonwealth Games' then
           alias = 'HKG_CGF'
       end
   elseif alias == 'IOA' then
       if year == 2000 then
           alias = 'IOA_2000'
       end
   elseif alias == 'SWZ' then
       if fullName then
           if year and year >= 2018 and fullName ~= '2018 Commonwealth Games' then
               alias = 'SWZ_YO2018'
           end
       elseif year and year >= 2018 and games ~= 'Commonwealth Games' then
           alias = 'SWZ_YO2018'
       end
   elseif alias == 'MKD' then
       if year and year >= 2019 then
           alias = 'MKD_2019'
       end 
   end
   return alias

end

local function getFlag(args, country)

   -- Return name of flag selected from country data (nil if none defined).
   local year = tonumber(args.year)
   local games = stripToNil(args.games)
   if games then
       local gdata = country[games]
       if gdata then
           if type(gdata) == 'string' then
               return gdata
           end
           if gdata[year] then
               return gdata[year]
           end
       end
   end
   for _, item in ipairs(country) do
       if type(item) == 'string' then
           return item
       end
       if year and year <= item[1] then
           return item[2]
       end
   end

end

local data = mw.loadData('Module:Country alias/data') local function countryAlias(args)

   local alias = getAlias(args)
   local country = data.countries[alias] or data.countries[data.countryAliases[alias]]
   local function quit(message)
       return args.error or error(message)
   end
   if not country then
       return quit('Invalid country alias: ' .. tostring(alias))
   end
   if yes(args.flag) then
       return getFlag(args, country) or quit('No flag defined for ' .. alias)
   else
       return country.name or quit('No name defined for ' .. alias)
   end

end

local function flagIOC(frame)

   -- Implement  which previously called this module three times.
   -- Returns   , with the third value optional
   local args = frame:getParent().args
   local code = stripToNil(args[1]) or error('flagIOC parameter 1 should be a country code')
   local games = stripToNil(args[2])
   local athletes = stripToNil(args[3])
   games = games and (games .. ' Olympics') or 'Olympics'
   local parms = {
       alias = code,
       fullName = games,
       year = games:match('^%d+'),
       games = games:gsub('^%d+ ?', ''),
   }
   local fullName = countryAlias(parms)
   parms.flag = true
   return (('{flag} {name}{athletes}')
       :gsub('{(%w+)}', {
           athletes = athletes and
               (' (' .. athletes .. ')') or
               '',
           flag = countryAlias(parms),
           games = games,
           name = fullName,
       }))

end

local function main(frame)

   return countryAlias(frame.args)

end

return {

   flagIOC = flagIOC,
   main = main,

}