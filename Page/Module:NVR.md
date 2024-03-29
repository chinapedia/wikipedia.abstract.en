--This module generates links to ships in the Naval Vessel Register (nvr.navy.mil) database. It is used by Template:NVR_url and Template:NVR_SC_url Please do not modify this code without applying the changes first at Module:NVR/sandbox and testing at Module:NVR/sandbox/testcases and Module talk:NVR/sandbox/testcases. Authors and maintainers: * User:RP88

require('Module:No globals') local p = {}

----------------------------< F O R W A R D D E C L A R A T I O N S >--------------------------------------

local ships_data = {}; local srv_craft_data = {};

local data = mw.loadData ('Module:NVR/data');

   ships_data = data.nvr_ships_id;
   srv_craft_data = data.nvr_srv_craft_id;

----------------------------< M A K E _ E R R O R _ M E S S A G E >------------------------------------------ General purpose error message function to render error messages and categorization

local function make_error_message (output, prefix, item, suffix, srv_craft)

   local category = '';                                                        -- for concatenation
   
   if 0 == mw.title.getCurrentTitle().namespace then                           -- article namespace
       category = '';                     -- categorize only from article namespace
   end
   
   table.insert (output, '')
   table.insert (output, prefix);
   table.insert (output, item);
   table.insert (output, suffix);
   if srv_craft then
       table.insert (output, ' (help)');
   else
       table.insert (output, ' (help)');
   end
   table.insert (output, category);
   return

end

--[[--------------------------< M A K E _ S H I P _ L I N K >--------------------------------------------------

This function returns a link to a ship in the Naval Vessel Register.

Usage: {{#invoke:NVR|MakeShipLink|1=|title=}} {{#invoke:NVR|MakeShipLink}} - uses the caller's parameters

Parameters

   1, id: The ship's hull classification symbol
   2, title: A title or label for the link.

]]

function p.MakeShipLink (frame)

   local args = frame.args                                                     -- if no argument provided, check parent template/module args
   local output = {};

   if (args[1]==nil) and (args["id"]==nil) then
       args = frame:getParent().args;
       if (args[1]==nil) and (args["id"]==nil) then
           make_error_message (output, 'required parameter missing', '', '');
           return table.concat (output);
       end
   end
   
   local hull = args["id"] or args[1] or '';
   local hull_designator;                                                      -- for use with |name= parameter rendering
   local hull_prefix;
   local title = args["title"] or args[2] or '';
   
   if '' == title then                                                         -- to prevent external links that look like this: [1]
       title = nil;
   end
   
   hull = mw.text.trim (hull):upper();                                         -- make sure that there is no leading/trailing whitespace and uppercase
                                                                               -- standardize so that we can recognize as many formats as possible
   hull_designator = hull:match ('^T%-') or '';                                -- if there is a 'T-' prefix to the prefix, save a copy of it; empty string for concatenation else

--error (hull_designator)

   hull = hull:gsub ('^T%-', '');                                              -- if hull classification symbol is T-XX-NNN, remove the 'T-'
   hull = hull:gsub ('(%a+)_(%d+)_%d+', '%1-%2');                              -- if template has 'new' url identifier format (SSBN_659_1635); as of March 2019 this form not used at NVR
   hull = hull:gsub ('(%a+)[_ ]?(%d+)', '%1-%2');                              -- if template has SSBN 659 or SSBN_659 or SSBN659 format
   hull_designator = hull_designator .. hull;                                  -- copy for use with |name= parameter

   if hull:match ('(%a+)%-%d+') then                                           -- most common case
       hull_prefix = hull:match ('(%a+)[%-_]?%d+');
   elseif hull:match ('[%a+ %(%)]+%-%d+') then                                 -- special one-off case for AFSB (I)-15
       hull_prefix = hull:match ('([%a+ %(%)]+)%-%d+')
   elseif hull:match ('^CONSTITUTION$') or hull:match ('^MAINE$') or hull:match ('^TEXAS$') then   -- Constitution, Maine, and Texas
       hull_prefix = hull;                                                     -- do not have hull classification symbols; use their names
   else
       make_error_message (output, 'malformed hull classification symbol: ', hull, '');
       return table.concat (output);
   end
   
   if not ships_data[hull_prefix] then                                         -- is there a group for the hull number?
       make_error_message (output, 'unable to find group: [\'', hull_prefix, '\'] in Module:NVR/data nvr_ships_id');
       return table.concat (output);
   end

   if not ships_data[hull_prefix][hull] then                                   -- is there a hull number
       make_error_message (output, 'unable to find hull classification symbol: [\'', hull, '\'] in Module:NVR/data nvr_ships_id');
       return table.concat (output);
   end

   local nvr_id = ships_data[hull_prefix][hull][1];                            -- try to fetch nvr id
   if not title and (args['name'] and '' ~= args['name']) then
       title = ships_data[hull_prefix][hull][2];
       if not title or '' == title then
           title = nil;                                                        -- ensure
       elseif 'no name' == title:lower() then                                  -- new construction capital ships, and many service craft
           title = title .. ' (' .. hull_designator .. ')';
       elseif 'nh' == args['name'] then                                        -- special keyword to render name and hull designator
           title = '\'\'' .. ships_data[hull_prefix][hull][2] .. '\'\' (' .. hull_designator .. ')';
       else
           title = '\'\'' .. ships_data[hull_prefix][hull][2] .. '\'\'';       -- just the name
       end
   end

   if (nil ~= nvr_id) and ('' ~= nvr_id) then                                  -- there appears to be an identifier, so use it
       if title then                                                           -- if there is a title then make an external link from it
           table.insert (output, '[');                                         -- opening bracket
       end
       table.insert (output, 'http://www.nvr.navy.mil/SHIPDETAILS/SHIPSDETAIL_');  -- create the url
       table.insert (output, nvr_id);
       table.insert (output, '.HTML');
       if title then
           table.insert (output, ' ');                                         -- required space
           table.insert (output, title);                                       -- title
           table.insert (output, ']');                                         -- and closing bracket
       end
       
   else                                                                        -- no identifier
       make_error_message (output, 'no identifier for hull classification symbol: [\'', hull, '\'] in Module:NVR/data nvr_ships_id');
   end
   
   return table.concat (output);                                               -- and done

end

--[[--------------------------< M A K E _ S E R V I C E _ C R A F T _ L I N K >--------------------------------

This function returns a link to a service craft in the Naval Vessel Register.

Usage: {{#invoke:NVR|MakeServiceCraftLink|1=|title=}} {{#invoke:NVR|MakeServiceCraftLink}} - uses the caller's parameters

Parameters

   1, id: The 'file name' portion of the url path (typically the craft's hull designation) without the .HTM/.HTML extension. 
   2, title: A title or label for the link.

]]

function p.MakeServiceCraftLink( frame )

   -- if no argument provided than check parent template/module args
   local args = frame.args
   local output = {};

   if (args[1]==nil) and (args["id"]==nil) then
       args = frame:getParent().args;
       if (args[1]==nil) and (args["id"]==nil) then
           make_error_message (output, 'required parameter missing', '', '', true);
           return table.concat (output);
       end
   end
   
   local hull = args["id"] or args[1] or '';
   local hull_prefix;
   local title = args["title"] or args[2] or '';
   
   if '' == title then                                                         -- to prevent external links that look like this: [1]
       title = nil;
   end
   
   hull = mw.text.trim (hull):upper();                                         -- make sure that there is no leading/trailing whitespace and uppercase
                                                                               -- standardize so that we can recognize as many formats as possible
   hull = hull:gsub ('(%a+)_(%d+)_%d+', '%1-%2');                              -- if template has 'new' url identifier format (YT_807_4629)
   hull = hull:gsub ('(%a+)[_ ]?(%d+)', '%1-%2');                              -- if template has YT 807 or YT_807 or YT807 format

   if hull:match ('(%a+)%-%d+') then                                           -- most common case
       hull_prefix = hull:match ('(%a+)%-%d+');
   elseif hull:match ('(%a+)%-%d+%a') then                                     -- special cases for the various sections of floating dry docks;
       hull_prefix = hull:match ('(%a+)%-%d+%a');                              -- each section has a single letter designator: AFDB-7F
   else
       make_error_message (output, 'malformed hull classification symbol: ', hull, '', true);
       return table.concat (output);
   end
   
   if not srv_craft_data[hull_prefix] then                                     -- is there a group for the hull number?
       make_error_message (output, 'unable to find group: [\'', hull_prefix, '\'] in Module:NVR/data nvr_srv_craft_id', true);
       return table.concat (output);
   end

   if not srv_craft_data[hull_prefix][hull] then                               -- is there a hull number
       make_error_message (output, 'unable to find hull classification symbol: [\'', hull, '\'] in Module:NVR/data nvr_srv_craft_id', true);
       return table.concat (output);
   end

   local nvr_id = srv_craft_data[hull_prefix][hull][1];                        -- try to fetch nvr id

   if (nil ~= nvr_id) and ('' ~= nvr_id) then                                  -- there appears to be an identifier, so use it
       if title then
           table.insert (output, '[');
       end
       table.insert (output, 'http://www.nvr.navy.mil/SHIPDETAILS/SHIPSDETAIL_');
       table.insert (output, nvr_id);
       table.insert (output, '.HTML');
       if title then
           table.insert (output, ' ');
           table.insert (output, title);
           table.insert (output, ']');
       end
   else                                                                        -- no identifier
       make_error_message (output, 'no identifier for hull classification symbol: [\'', hull, '\'] in Module:NVR/data nvr_srv_craft_id', true);
   end
   
   return table.concat (output);

end

return p

Category:WPSHIPS:Template_errors