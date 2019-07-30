POSTCSS is a software development tool that uses JavaScript-based plugins to automate routine CSS operations.[1] The tool has been used to develop the code of Wikipedia,[2][3] Facebook,[4], WordPress[5][6][7] and GitHub[8][9]. PostCSS is a top-favored CSS tool among npm users.[10] It was designed by Andrey Sitnik with the idea taking its origin in his front-end work for Evil Martians.[11]


How it works

Structure

PostCSS_scheme.svg

Unlike Sass and Less, PostCSS is not a CSS-compiled template language but a framework to develop CSS tools.[12] However, it can be used to develop a template language such as Sass and LESS.[13]

The PostCSS core consists of:[14]

-   CSS PARSER that generates an object tree (AST) for a line of CSS-code;
-   SET OF CLASSES that comprise the tree;
-   CSS GENERATOR that generates a CSS line for the object tree;
-   CODE MAP GENERATOR for the CSS changes made.

All the useful features are made available through plugins. The plugins are small programs working with the object tree. After the core has transformed a CSS string into an object tree, the plugins, by turn, analyze and change the tree. Then the PostCSS core generates a new CSS string for the plugin-changed tree.

Usage

Both the PostCSS core and the plugins are written in JavaScript and distributed through npm.

PostCSS offers API for low-level JavaScript operations:

    // Load the core and plugins from npm
    const postcss = require('postcss')
    const autoprefixer = require('autoprefixer')
    const precss = require('precss')

    // Indicate the plugins to use
    const processor = postcss([autoprefixer, precss])

    // Indicate the CSS code and the names of the input/output file
    processor.process('a {}', { from: './app.css', to: './app.build.css' })
      // Use Promise API in case there are asynchronous plugins
      .then(result => {
        // Get the post-processed CSS code displayed
        console.log(result.css)
        // Get the warning messages displayed
        for ( let message of result.warnings() ) {
          console.warn(message.toString())
        }
      })

There are official tools making it possible to use PostCSS with build systems such as Webpack,[15] Gulp,[16] and Grunt.[17] There is also a console interface available for download.[18] Browserify or Webpack can be used to open PostCSS in a browser.[19]

Syntaxes

PostCSS allows changing the parser and generator. In this case, PostCSS could be used to work with the Less[20] and SCSS[21] sources. However, PostCSS on its own cannot compile Sass or Less to CSS. What it does is change the original files — for instance, by sorting the CSS properties or checking the code for mistakes.

Besides, PostCSS supports SugarSS, a syntax not unlike Sass and Stylus in its simplicity and succinctness.[22]


Plugins

The number of PostCSS plugins amounts to more than 300.[23] PostCSS plugins can solve most CSS processing tasks ranging from analysis and properties sorting to minification. However, the plugins significantly vary in quality and popularity.

The complete plugin list can be found on postcss.parts. Below are a few examples, with the what-fors explained:

-   AUTOPREFIXER[24] to add and clear browser prefixes. It is the most popular PostCSS plugin. According to the SitePoint polling, 56% of respondents used Autoprefixer in March 2016.[25]
-   CSS MODULES[26] to get CSS selectors isolated and code organized. It is supplied as part of the popular bundler Webpack.[27]
-   STYLELINT[28] to analyze CSS code for mistakes and check style consistency. It is used by Wikipedia,[29] Facebook[30] and GitHub.[31] Another plugin, STYLEFMT[32] fixes the CSS code according to the stylelint settings.
-   PRECSS[33] to perform some Sass/Less preprocessing functions.
-   POSTCSS-PRESET-ENV[34] to emulate features from unfinished CSS specification drafts.
-   CSSNANO[35] to make CSS smaller in size by getting rid of the spaces and rewriting the code succinctly. Used by Webpack, BBC, and JSFiddle.[36]
-   RTLCSS[37] to change CSS code so that the design should be suitable for right-to-left writing (such is applied in Arabic and Hebrew). It is used by WordPress.[38]
-   POSTCSS-ASSETS,[39] POSTCSS-INLINE-SVG[40] and POSTCSS-SPRITES[41] to work with graphics.

There are a number of tools expanding their functionality by PostCSS. For example, it is PostCSS that the popular bundler Webpack uses to work with CSS.[42]


Criticism

Despite certain plugins having faced criticism,[43] some PostCSS plugins have become de facto standard. For instance, Google recommends using Autoprefixer to solve the problem of browser prefixes in CSS.[44]

The industry opinion of PostCSS is highly positive,[45] it going as far as Sass developers considering PostCSS a good addition to Sass.[46]

The biggest question is whether PostCSS plugins should be the only option to use when making a CSS build system. On the one hand, PreCSS or cssnext can perform many Sass and Less functions,[47] with SugarSS possibly being a good replacement for the minimalistic syntax of Sass and Stylus.[48] On the other hand, some experts, including the PostCSS creator himself, recommend sticking to Sass and Less for legacy projects.[49]

Advantages

-   FEATURES. Many PostCSS plugins one of a kind,[50] PostCSS is often used as an addition to Sass and Less.[51]
-   UNIFICATION. PostCSS plugins cover most CSS building tasks from checking the code for mistakes to minification. As a result, all CSS tools can share the same parser, architecture, and development tools. PostCSS allows for better performance by making all the plugins use the same object tree — in contrast to the common practice of each tool creating one of its own.[52]
-   MODULES. The user is free in their choice of PostCSS plugins and can switch off the unnecessary ones for faster performance.[53] With different plugins solving the same problems, the user can choose whatever best fits their needs.[54] The PostCSS creator believes that the higher number of plugins compete for the user's attention, the better they will eventually become.[55]
-   SPEED. PostCSS is equipped with one of the fastest JS-based CSS parsers.[56] It is up to twenty times faster than Ruby Sass and four times faster than Less in doing basic preprocessing.[57] However, real efficiency highly depends on the number of the plugins installed. In fact, the PostCSS creators themselves have confirmed that modern preprocessors work too fast for a speed up to be noticeable.[58]

Disadvantages

-   DIFFICULT TO CONFIGURE. Some developers tend to avoid the burden of choosing plugins and tuning them up to work together.[59] Ready-made plugin sets are only a partial solution to the problem.
-   NON-STANDARD SYNTAX. With each project using its own plugin set, a new developer might not understand that the function unknown is related to the unpopular PostCSS plugin.[60] It is recommended to indicate file plugins with postcss-use,[61] but some people find it unnecessary.[62]
-   SELECTORS AND VALUES USING SEPARATE PARSERS. PostCSS saves CSS selectors and property values as lines without further parsing them. To parse them, plugins have to use extra parsers. The PostCSS team is going to fix this in future versions.[63]
-   SEQUENTIAL PROCESSING. With the object tree being able to respond to only one plugin at a time, having a number of plugins might result in lower performance. Besides, there are functions no plugin can process. The PostCSS team is going to fix this in future versions.[64]


History

Born in the course of the Rework project, the idea of modular CSS processing was suggested by TJ Holowaychuk September 1, 2012.[65] February 28, 2013, TJ expressed it in public.[66]

March 14, 2013, Andrey Sitnik's front-end work for Evil Martians resulted in Autoprefixer, a Rework-based plugin.[67] Initially, the plugin name was rework-vendors.[68]

As Autoprefixer grew, Rework could no longer to meet its needs.[69] September 7, 2013,[70] Andrey Sitnik started to develop PostCSS based on the Rework ideas.[71]

In 3 months, the first PostCSS plugin, grunt-pixrem was released.[72] December 22, 2013, Autoprefixer version 1.0 migrated to PostCSS.[73]

For PostCSS, the primary style focus is alchemy.[74] The project logo represents the philosopher's stone.[75] Major and minor PostCSS versions get their names after the Ars Goetia demons.[76] For instance, version 1.0.0 is called Marquis Decarabia.

The term postprocessor has caused some confusion.[77] The PostCSS team used the term to show that PostCSS was not a template language (preprocessor) but a CSS tool. However, some developers think the term postprocessor would better suit browser tools[78] (for instance, -prefix-free). The situation has become even more complicated after the release of PreCSS. Now, instead of postprocessor, the PostCSS team use the term processor.[79]


References


External links

-   -   -   Plugin list

Category:Cascading Style Sheets Category:Parsing Category:Software using the MIT license Category:Free compilers and interpreters Category:Free software programmed in JavaScript

[1] First article about PostCSS in Tuts+ course

[2] Adding PostCSS commit in Wikipedia repo

[3] Wikimedia Stylelint Config

[4] Improving CSS quality at Facebook and beyond

[5] WordPress webpack PostCSS usage

[6] WordPress Stylelint Config

[7] PostCSS Themes plugin

[8] PostCSS settings GitHub build tool

[9] Primer Stylelint Config

[10] CSS preprocessors downloads from npm

[11] Evil Martians commit in PostCSS repo

[12] What is PostCSS discussion

[13] PostCSS Deep Dive: Preprocessing with “PreCSS”

[14] Andrey Sitnik - PostCSS: The Future After Sass and LESS

[15] postcss-loader

[16] gulp-postcss

[17] grunt-postcss

[18] postcss-cli

[19] Running postcss in the browser

[20] postcss-less

[21] postcss-scss

[22] sugarss

[23] PostCSS plugins list

[24] autoprefixer

[25] The Results of The Ultimate CSS Survey

[26] css-modules

[27] css-loader dependencies

[28] stylelint

[29]

[30]

[31]

[32] stylefmt

[33] precss

[34] preset-env.cssdb.org

[35] cssnano.co

[36] cssnano users list

[37] rtlcss.com

[38] RTL CSS generation: Switch from CSSJanus to RTLCSS

[39] postcss-assets

[40] postcss-inline-svg

[41] postcss-sprites

[42] css-loader sources

[43] The Trouble With Preprocessing Based on Future Specs

[44] Set Up Your Build Tools

[45] An Introduction To PostCSS

[46] Extending Sass with PostCSS

[47] Breaking up with Sass: it’s not you, it’s me

[48] SugarSS discussion on Meteor forum

[49] dotCSS 2015 - Andrey Sitnik - Fix Global CSS with PostCSS

[50] PostCSS Mythbusting: Four PostCSS Myths Busted

[51] Using PostCSS Together with Sass, Stylus, or LESS

[52]

[53] PostCSS performance discussion in Twitter

[54] PostCSS – Sass Killer or Preprocessing Pretender?

[55]

[56] PostCSS parsers benchmark

[57] PostCSS preprocessors benchmark

[58] PostCSS becomes 1.5x faster

[59] The Sad State of Web Development

[60]

[61]

[62] postcss-use downloads

[63] Integrate value & selector parsing into PostCSS core

[64] Event based API

[65]

[66]

[67]

[68]

[69]

[70]

[71]

[72]

[73] [

[74]

[75]

[76]

[77]  Silvenon's Blog|website=Silvenon's Blog|first=Matija|last=Marohnić|date=2014-09-07|access-date=2017-11-09}}

[78]

[79]