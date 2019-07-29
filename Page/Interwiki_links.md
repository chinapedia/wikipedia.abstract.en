Screenshot_showing_interwikilink_removal.JPG showing interwiki link removal]]

INTERWIKI LINKING (_W-link_) is a facility for creating links to the many wikis on the World Wide Web. Users avoid pasting in entire URLs (as they would for regular web pages) and instead use a shorthand similar to links within the same wiki (intrawiki links).

Unlike domain names on the Internet, there is no globally defined list of interwiki prefixes, so owners of a wiki must define an INTERWIKI MAP (InterMap) appropriate to their needs. Users generally have to create separate accounts for each wiki they intend to use (unless they intend to edit anonymously). Variations in text formatting and layout can also hinder a seamless transition from one wiki to the next.

By making wiki links simpler to type for the members of a particular community, these features help bring the different wikis closer together. Furthering that goal, interwiki "bus tours" (similar to webrings) have been created to explain the purposes and highlights of different wikis. Such examples on Wikipedia include and .


Syntax

Interwiki link notation varies, depending largely on the syntax a wiki uses for markup. The two most common link patterns in wikis are CamelCase and free links (arbitrary phrases surrounded by some set delimiter, such as [[double_square_brackets|double square brackets]]). CURIE syntax—an emerging W3C standard—uses a single set of square brackets.

Interwiki links on a CamelCase-based wiki frequently take the form of "Code:PageName", where _Code_ is the defined InterMap prefix for another wiki. Thus, a link "WikiPedia:InterWiki" could be rendered in HTML as a link to an article on Wikipedia: for example, . Linking from a CamelCase-wiki to a page that contains spaces in its title typically requires replacing the spaces with underscores (e.g. WikiPedia:Main_Page).

Interwiki links on wikis based on free links, such as Wikipedia, typically follow the same principle, but using the delimiters that would be used for internal links. These links can then be parsed and escaped as they would be if they were internal, allowing easier typing of spaces but potentially causing problems with other special characters. For example, on Wikipedia, [[MeatBall:AssumeGoodFaith|MeatBall:AssumeGoodFaith]] appears as MeatBall:AssumeGoodFaith, and [[:de:InterWiki|:de:InterWiki]] (former syntax: [[DeWikipedia:InterWiki|DeWikipedia:InterWiki]]) appears as :de:InterWiki.

The MediaWiki software has an additional feature which uses similar notation to create automatic interlanguage links—for instance, the link [[de:InterWiki|de:InterWiki]] (with no leading colon) automatically creates a reference labeled "Other languages: Deutsch | ..." at the top and bottom of, or in a sidebar next to, the article display. Various other wiki software systems have features for "semi-internal" links of this kind, such as support for namespaces or multiple sub-communities.

Most InterMap implementations simply replace the interwiki prefix with a full URL prefix, so many non-wiki websites can also be referred to using the system. A reference to a definition on the Free On-line Dictionary of Computing, for instance, could take the form [[Foldoc:foo|Foldoc:foo]] which would tell the system to append and display the link as Foldoc:foo. This makes it very easy to link to commonly referenced resources from within a wiki page, without the need to even know the form of the URL in question.

The interwiki concept can equally be applied to links _from_ non-wiki websites. Advogato, for instance, offers a syntax for creating shorthand links based on a MeatBall-derived InterMap.

WordPress offers a similar "shortcode" shorthand notation for embedding images, videos, LaTeX formulas and equations, maps, etc. hosted on other websites.[1]


Implementation

Internally, a wiki that uses interwiki links needs to have a mapping from wiki-code links to full URLs. For example, [[MeatBall:InterWiki|MeatBall:InterWiki]] might appear as MeatBall:InterWiki, but link to http://usemod.com/cgi-bin/mb.pl?InterWiki.

Since most wiki systems use URLs for individual pages where the page's title appears at the end of an otherwise unchanging address, the simplest way of defining such mappings is by substituting the interwiki prefix for the unchanging part of the URL. So in the example above, the MeatBall: has simply been replaced by http://usemod.com/cgi-bin/mb.pl? in creating the target of the HTML rendered link.

Rather than creating a new list from scratch for every wiki, it is often useful to obtain a copy of that from another site. Sites such as MeatballWiki 1 and the UseModWiki site contain comprehensive lists which are often used for this purpose - the former being publicly editable in the same way as any other wiki page, and the latter being verified as usable but potentially out of date. MediaWiki's default list of interwiki links is derived from an old version of MeatballWiki's list.[2][3]


See also

Internal links

-   Wikipedia:InterWikimedia links
-   Wikipedia:Wikimedia sister projects
-   Help:Interlanguage links

Interwiki links

-   "interwiki" on Wiktionary
-   "Help:Interwiki linking" on Wikimedia Meta-Wiki
-   "Category:CommonsRoot" on Wikimedia Commons


References

-   Dan Woods, Peter Thoeny, _Wikis for Dummies_, For Dummies, 2007, , p. 140
-   Daniel J. Barrett, _MediaWiki_, O'Reilly Media, 2008, , p. 84.


External links

-   m:Interwiki map, a huge Interwiki map by the Wikimedia Foundation
-   Discussion of the FileReplacement concept
-   Discussion of the InterWiki concept at MeatballWiki

Category:Wiki concepts

[1] "What is a shortcode?"

[2]

[3]