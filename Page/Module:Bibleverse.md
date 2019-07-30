-- This module implements Template:Bibleverse. local p = {}

--codes from bvf that may be in use local version_num_cds = {

   [9] = 'kjv', [31] = 'niv', [45] = 'amp', [49] = 'nasb', [64] = 'nivuk',
   [51] = 'nlt', [65] = 'msg', [76] = 'nirv', [105] = 'he', [104] = 'jps',
   [120] = 'opb', [121] = 'bb', [122] = 'bbc', [123] = 'bbl', [131] = 'nrsv',

}

--possible book inputs, based on Chicago Manual local book_aliases = {

   ['genesis'] = {'gen', 'gn'},                          --old testament/tanakh
   ['exodus'] = {'exod', 'ex'},
   ['leviticus'] = {'lev', 'lv'},
   ['numbers'] = {'num', 'nm'},
   ['deuteronomy'] = {'deut', 'dt'},
   ['joshua'] = {'josh' , 'jo'},
   ['judges'] = {'judg', 'jgs'},
   ['ruth'] = {'ru'},
   ['1_samuel'] = {'1sam', '1sm'},
   ['2_samuel'] = {'2sam', '2sm'},
   ['1_kings'] = {'1kgs'},
   ['2_kings'] = {'2kgs'},
   ['1_chronicles'] = {'1chron', '1chr'},
   ['2_chronicles'] = {'2chron', '2chr'},
   ['ezra'] = {'ezr'},
   ['nehemiah'] = {'neh'},
   ['esther'] = {'est'},
   ['job'] = {'jb'},
   ['psalms'] = {'ps', 'pss', 'psalm'},
   ['proverbs'] = {'prov', 'prv'},
   ['ecclesiastes'] = {'eccles', 'eccl', 'qoheleth'},
   ['song_of_solomon'] = {'songofsol', 'songofsongs', 'song', 'sg', 'canticles', 'canticleofcanticles'},
   ['isaiah'] = {'isa', 'is'},
   ['jeremiah'] = {'jer'},
   ['lamentations'] = {'lam'},
   ['ezekiel'] = {'ezek', 'ez'},
   ['daniel'] = {'dan', 'dn'},
   ['hosea'] = {'hos'},
   ['joel'] = {'jl'},
   ['amos'] = {'am'},
   ['obadiah'] = {'obad', 'ob'},
   ['jonah'] = {'jon'},
   ['micah'] = {'mic', 'mi'},
   ['nahum'] = {'nah', 'na'},
   ['habakkuk'] = {'hab', 'hb'},
   ['zephaniah'] = {'zeph', 'zep'},
   ['haggai'] = {'hag', 'hg'},
   ['zechariah'] = {'zech', 'zec'},
   ['malachi'] = {'mal'},
   ['baruch'] = {'bar'},                                            --apocrypha/deuterocanon
   ['ecclesiasticus'] = {'ecclus', 'wisdomofsirach', 'sirach', 'sir'},
   ['1_esdras'] = {'1esd'},
   ['2_esdras'] = {'2esd'},
   ['judith'] = {'jth', 'jdt'},
   ['1_maccabees'] = {'1macc', '1mc'},
   ['2_maccabees'] = {'2macc', '2mc'},
   ['3_maccabees'] = {'3macc', '3mc'},
   ['4_maccabees'] = {'4macc', '4mc'},
   ['prayer_of_manasseh'] = {'profman', 'prayerofmanasses'},
   ['susanna'] = {'sus'},
   ['tobit'] = {'tob', 'tb'},
   ['wisdom_of_solomon'] = {'ws', 'wisdom', 'wisofsol'},
   ['prayer_of_azariah'] = {'prayerofazariahandhymnofthethreechildren'},
   ['rest_of_esther'] = {'additionstoesther'},
   ['bel_and_the_dragon'] = {'bel'},
   ['epistle_of_jeremiah'] = {'letterofjeremiah'},
   ['matthew'] = {'matt', 'mt'},                                        --new testament
   ['mark'] = {'mk'},
   ['luke'] = {'lk'},
   ['john'] = {'jn'},
   ['acts'] = {'actsoftheapostles'},
   ['romans'] = {'rom'},
   ['1_corinthians'] = {'1cor'},
   ['2_corinthians'] = {'2cor'},
   ['galatians'] = {'gal'},
   ['ephesians'] = {'eph'},
   ['philippians'] = {'phil'},
   ['colossians'] = {'col'},
   ['1_thessalonians'] = {'1thess', '1thes'},
   ['2_thessalonians'] = {'2thess', '2thes'},
   ['1_timothy'] = {'1tim', '1tm'},
   ['2_timothy'] = {'2tim', '2tm'},
   ['titus'] = {'ti'},
   ['philemon'] = {'philem', 'phlm'},
   ['hebrews'] = {'heb'},
   ['james'] = {'jas'},
   ['1_peter'] = {'1pet', '1pt'},
   ['2_peter'] = {'2pet', '2pt'},
   ['1_john'] = {'1jn'},
   ['2_john'] = {'2jn'},
   ['3_john'] = {'3jn'},
   ['jude'] = {'jude'},
   ['revelation'] = {'rev', 'apocalypse', 'apoc', 'rv'},

}

local apoc = {

   '1_esdras', '2_esdras', 'judith', '1_maccabees', '2_maccabees',
   '3_maccabees', '4_maccabees', 'prayer_of_manasseh', 'susanna', 'tobit',
   'wisdom_of_solomon', 'prayer_of_azariah', 'rest_of_esther', 'bel_and_the_dragon',
   'epistle_of_jeremiah',

}

--these books only have one chapter, have to be handled differently local no_chaps = {

   'obadiah', 'epistle_of_jeremiah', 'prayer_of_azariah',
   'susanna', 'bel_and_the_dragon', 'prayer_of_manasseh', 'philemon', '2_john',
   '3_john', 'jude',

}

--sets the website to be used for each version, biblegateway is the fallback so don't define any for it local site_tbl = {

   nrsv = 'oremus', nrsvae = 'oremus',
   kjv = 'wikisource', asv = 'wikisource',
   he = 'mechon_mamre', jps = 'mechon_mamre',
   niv = 'biblica', nivuk = 'biblica', amp = 'biblica', ab = 'biblica',
   nasb = 'biblica', msg = 'biblica', nlt = 'biblica', nirv = 'biblica',
   nab = 'usccb',
   bb = 'bible_hub', bbc = 'bible_hub', bbl = 'bible_hub', opb = 'bible_hub',
   esv = 'esv_bible',
   cal = 'bvf', to = 'bvf', ['gmp3'] = 'bvf', ['hmp3'] = 'bvf', ortaud = 'bvf',
   hc = 'bvf', hc = 'bvf', ort = 'bvf', stkn = 'bvf', tlt = 'bvf',

}

--pattern for the url of each site, use _book, v_range, etc. for variables local urlpat_tbl = {

   oremus = 'http://bible.oremus.org/?passage=_book+v_range&version=_version',
   wikisource = 's:Bible (_version)/_book#s_chap:s_vers',
   mechon_mamre = 'https://www.mechon-mamre.org/_version_books_chap.htm#s_vers',
   biblica = 'https://www.biblica.com/bible/?osis=_version:_book.v_range',
   usccb = 'http://www.usccb.org/bible/_book.s_chap:s_vers',
   biblegateway = 'https://www.biblegateway.com/passage/?search=_book%20v_range&version=_version',
   bible_hub = 'http://_version/_book/s_chap-s_vers.htm',
   esv_bible = 'https://www.esv.org/_book+s_chap:s_vers',
   bvf = 'http://tools.wmflabs.org/bibleversefinder2/index.php?book=_book&verse=v_range&src=_version',

}

--changes book name to use in url for each site, only if necessary local site_book_tbl = {

   oremus = {
       ['epistle_of_jeremiah'] = 'letter of jeremiah',
   },
   usccb = {
       ['song_of_solomon'] = 'song_of_songs',
       ['wisdom_of_solomon'] = 'wisdom',
       ['ecclesiasticus'] = 'sirach',
   },
   mechon_mamre = {
       ['genesis'] = '01', ['exodus'] = '02', ['leviticus'] = '03',
       ['numbers'] = '04', ['deuteronomy'] = '05', ['joshua'] = '06',
       ['judges'] = '07', ['1_samuel'] = '08a', ['2_samuel'] = '08b',
       ['1_kings'] = '09a', ['2_kings'] = '09b', ['isaiah'] = '10',
       ['jeremiah'] = '11', ['ezekiel'] = '12', ['hosea'] = '13',
       ['joel'] = '14', ['amos'] = '15', ['obadiah'] = '16', ['jonah'] = '17',
       ['micah'] = '18', ['nahum'] = '19', ['habakkuk'] = '20',
       ['zephaniah'] = '21', ['haggai'] = '22', ['zechariah'] = '23',
       ['malachi'] = '24', ['1_chronicles'] = '25a', ['2_chronicles'] = '25b',
       ['psalms'] = '26', ['job'] = '27', ['proverbs'] = '28', ['ruth'] = '29',
       ['song_of_solomon'] = '30', ['ecclesiastes'] = '31', ['lamentations'] = '32',
       ['esther'] = '33', ['daniel'] = '34', ['ezra'] = '35a', ['nehemiah'] = '35b',
   }

}

--changes to the version name to be used in urls, only if necessary local site_version_tbl = {

   mechon_mamre = {
       he = 'p/pt/pt',
       jps = 'e/et/et',
   },
   wikisource = {
       kjv = 'King James', ['9'] = 'King James',
       asv = 'American Standard',
   },
   bible_hub = {
       bb = 'biblebrowser.com',
       bbc = 'biblecommenter.com',
       bbl = 'scripturetext.com',
       opb = 'bible.cc',
   }

}

local function trimArg(arg)

   if arg == '' or arg == ' ' or arg == nil then
       return nil
   else
       return mw.text.trim(arg)
   end

end

local function valueExists(tbl, value)

   for k,v in pairs(tbl) do
       if value == v then
           return true
       end
   end
   return false

end

local function titlecase(arg)

   -- http://grammar.yourdictionary.com/capitalization/rules-for-capitalization-in-titles.html
   -- recommended by The U.S. Government Printing Office Style Manual:
   -- 'Capitalize all words in titles of publications and documents,
   -- except a, an, the, at, by, for, in, of, on, to, up, and, as, but, or, and nor.'
   local alwayslower = {
       ['a'] = true, ['an'] = true, ['the'] = true,
       ['and'] = true, ['but'] = true, ['or'] = true, ['for'] = true,
       ['nor'] = true, ['on'] = true, ['in'] = true, ['at'] = true, ['to'] = true,
       ['from'] = true, ['by'] = true, ['of'] = true, ['up'] = true,
   }
   local res = ''
   local s = mw.text.trim(arg or '')
   local words = mw.text.split( s, '_')
   for i, s in ipairs(words) do
       s = string.lower(s)
       if i > 1 then
           if not alwayslower[s] then
               s = mw.getContentLanguage():ucfirst(s)
           end
       else
           s = mw.getContentLanguage():ucfirst(s)
       end
       words[i] = s
   end
   return table.concat(words, '_')

end

function p.main(frame)

   local args = frame:getParent().args

   local default_version = 'nrsv'
   local input_book = ''
   local ref = ''
   local version = ''
   local version_num
   local text = ''
   if trimArg(args[1]) == nil or trimArg(args[2]) == nil or tonumber(trimArg(args[1])) ~= nil then
       -- first argument is a numeric prefix and second is book name
       input_book = trimArg((args[1] or '') .. ' ' .. (trimArg(args[2]) or '')) or ''
       ref = trimArg(args[3]) or ''
       version = mw.ustring.lower(trimArg(args[4]) or default_version)
       text = trimArg(args[5]) or trimArg((input_book .. ' ' .. ref))
   else
       -- first argument is the whole book name
       input_book = trimArg(args[1]) or ''
       ref = trimArg(args[2]) or ''
       version = mw.ustring.lower(trimArg(args[3]) or default_version)
       text = trimArg(args[4]) or (input_book .. ' ' .. ref)
   end

   if trimArg(args.nobook) == 'yes' then
       text = ref
   end

   if tonumber(version) ~= nil then
       version = tonumber(version)
       version_num = true
   end

   version = version_num_cds[version] or version

   local errors = {}
   if version == 'jpr' or version == 'jp' then  --chabad doesn't work so reroute
       table.insert(errors, '')
       version = 'he'
   end

   local book = mw.ustring.gsub(input_book, '%p', '')
   book = mw.ustring.gsub(book, ' ', '_')
   book = mw.ustring.lower(book)

   local book_found = false
   for full_books, alias_tbls in pairs(book_aliases) do
       if mw.ustring.gsub(book, '_', '') == mw.ustring.gsub(full_books, '_', '') then  --is the book already standardized?
           book_found = true
       elseif valueExists(book_aliases[full_books], mw.ustring.gsub(book, '_', '')) then  --check to see if it exists as a value in each table
           book = full_books
           book_found = true
       end
   end

   local site = site_tbl[version] or 'biblegateway'    --fall back on biblegateway for unrecognized version because it has so many versions
   if not book_found then
       site = 'bvf'
   end          --when the book is not recognized, use bibleversefinder in case it is in that list of aliases
   if tonumber(version) ~= nil and version > 99 then
       site = 'bvf'
   end      --remaining version codes used by bibleversefinder. 1-99 are biblegateway codes

   if valueExists(apoc, book) and version == 'nrsv' and site == 'oremus' then  --oremus's nrsv doesn't have the apocrypha
       version = 'nrsvae'
   end                            --the anglicized version does

   local urlpat = urlpat_tbl[site]

   local split_ref = mw.text.split(ref, '[-–—]')       --split the ref into the part before and after the dash/hyphen
   local s_ref = mw.text.split(split_ref[1], '%p')     --any punctuation can be used to separate chapter from verse
   local e_ref = split_ref[2] or split_ref[1]
   local e_ref = mw.text.split(e_ref, '%p')
   for i, v in ipairs(s_ref) do s_ref[i] = mw.ustring.gsub(v, '%D', '') end      --remove any non-numeric character (such as f)
   for i, v in ipairs(e_ref) do e_ref[i] = mw.ustring.gsub(v, '%D', '') end

   local e_chap, e_vers, s_chap, s_vers
   if valueExists(no_chaps, book) then
       s_chap = 1
       s_vers = s_ref[1] or s_ref[2] or 1
       e_chap = 1
       e_vers = e_ref[2] or e_ref[1] or 1
   else
       s_chap = s_ref[1] or 1
       s_vers = s_ref[2] or 1
       if e_ref[2] or not s_ref[2] then     --chapter-chapter or chapter(:verse)?-chapter:verse
           e_chap = e_ref[1] or s_chap
       else                                 --chapter:verse-verse
           e_chap = s_chap
       end
       e_vers = e_ref[2] or e_ref[1] or s_vers
   end

   if type(site_book_tbl[site]) == 'table' then
       book = site_book_tbl[site][book] or book
   end

   book = titlecase(book)                              --put book in title case, only because it looks better at oremus where they display the input

   if site == 'mechon_mamre' then                      --special case handling of aspects of the components of the url
       s_chap = string.format( '%x', s_chap/10 ) .. string.sub(string.format('%02d', s_chap), -1)
   elseif (site == 'oremus') or (site == 'esv_bible') then
       book = mw.ustring.gsub(book, '_', '+')
   elseif site == 'bible_hub' then
       book = string.lower(book)
   elseif site == 'usccb' then
       book = mw.ustring.gsub(book, '_', '')
   end

   if type(site_version_tbl[site]) == 'table' then
       version = site_version_tbl[site][version]
   end

   local v_range
   if s_ref[2] == nil then                             --case of chapter range only
       v_range = s_chap ..'–' .. e_chap
   else
       v_range = s_chap ..':' .. s_vers ..'–' .. e_chap ..':' .. e_vers    --case of chapter and verse range
   end

   local url = mw.ustring.gsub(urlpat, '_book', book)  --get the components into the urls
   url = mw.ustring.gsub(url, 's_chap', s_chap)
   url = mw.ustring.gsub(url, 's_vers', s_vers)
   url = mw.ustring.gsub(url, 'e_chap', e_chap)
   url = mw.ustring.gsub(url, 'e_vers', e_vers)
   url = mw.ustring.gsub(url, 'v_range', v_range)
   url = mw.ustring.gsub(url, '_version', version)

   local fulllink
   if site == 'wikisource' then                        --interwikilink
       fulllink = '' .. text .. ''
   else
       fulllink = '[' .. url .. ' ' .. text .. ']'
   end

   if not book_found then
       table.insert(errors, '')
   end
   if version_num then
       table.insert(errors, '')
   end

   return fulllink .. (table.concat(errors) or '')

end

return p

Category:Pages with Bible version errors Category:Pages with Bible book errors Category:Pages with numeric Bible version references