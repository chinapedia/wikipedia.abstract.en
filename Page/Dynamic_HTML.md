DYNAMIC HTML, or DHTML, is an umbrella term for a collection of technologies used together to create interactive and animated websites[1] by using a combination of a static markup language (such as HTML), a client-side scripting language (such as JavaScript), a presentation definition language (such as CSS), and the Document Object Model (DOM).[2] The application of DHTML was introduced by Microsoft with the release of Internet Explorer 4 in 1997.

DHTML allows scripting languages to change variables in a web page's definition language, which in turn affects the look and function of otherwise "static" HTML page content, after the page has been fully loaded and during the viewing process. Thus the dynamic characteristic of DHTML is the way it functions while a page is viewed, not in its ability to generate a unique page with each page load.

By contrast, a dynamic web page is a broader concept, covering any web page generated differently for each user, load occurrence, or specific variable values. This includes pages created by client-side scripting, and ones created by server-side scripting (such as PHP, Python, JSP or ASP.NET) where the web server generates content before sending it to the client.

DHTML is differentiated from Ajax by the fact that a DHTML page is still request/reload-based. With DHTML, there may not be any interaction between the client and server after the page is loaded; all processing happens in JavaScript on the client side. By contrast, an Ajax page uses features of DHTML to initiate a request (or 'subrequest') to the server to perform additional actions. For example, if there are multiple tabs on a page, pure DHTML approach would load the contents of all tabs and then dynamically display only the one that is active, while AJAX could load each tab only when it is really needed.


Uses

DHTML allows authors to add effects to their pages that are otherwise difficult to achieve, by changing the Document Object Model (DOM) and page style. The combination of HTML, CSS and JavaScript offers ways to:

-   Animate text and images in their document.
-   Embed a ticker or other dynamic display that automatically refreshes its content with the latest news, stock quotes, or other data.
-   Use a form to capture user input, and then process, verify and respond to that data without having to send data back to the server.
-   Include rollover buttons or drop-down menus.

A less common use is to create browser-based action games. Although a number of games were created using DHTML during the late 1990s and early 2000s, differences between browsers made this difficult: many techniques had to be implemented in code to enable the games to work on multiple platforms. Recently browsers have been converging towards web standards, which has made the design of DHTML games more viable. Those games can be played on all major browsers and they can also be ported to Plasma for KDE, Widgets for macOS and Gadgets for Windows Vista, which are based on DHTML code.

The term "DHTML" has fallen out of use in recent years as it was associated with practices and conventions that tended to not work well between various web browsers. DHTML may now be referred to as unobtrusive JavaScript coding (DOM Scripting), in an effort to place an emphasis on agreed-upon best practices while allowing similar effects in an accessible, standards-compliant way.

DHTML support with extensive DOM access was introduced with Internet Explorer 4.0. Although there was a basic dynamic system with Netscape Navigator 4.0, not all HTML elements were represented in the DOM. When DHTML-style techniques became widespread, varying degrees of support among web browsers for the technologies involved made them difficult to develop and debug. Development became easier when Internet Explorer 5.0+, Mozilla Firefox 2.0+, and Opera 7.0+ adopted a shared DOM inherited from ECMAScript.

More recently, JavaScript libraries such as jQuery have abstracted away many of the day-to-day difficulties in cross-browser DOM manipulation.


Structure of a web page

Typically a web page using DHTML is set up in the following way:

    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <title>DHTML example</title>
        </head>
        <body>
            <div id="navigation"></div>

            <script>
                function init() {
                    var myObj = document.getElementById("navigation");
                    // ... manipulate myObj
                }
                window.onload = init;
            </script>

            <!--
            Often the code is stored in an external file; this is done
            by linking the file that contains the JavaScript.
            This is helpful when several pages use the same script:
            -->
            <script src="myjavascript.js"></script>
        </body>
    </html>


Example: Displaying an additional block of text

The following code illustrates an often-used function. An additional part of a web page will only be displayed if the user requests it.

    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8">
            <title>Using a DOM function</title>
            <style>
                a { background-color: #eee; }
                a:hover { background: #ff0; }
                #toggleMe { background: #cfc; display: none; margin: 30px 0; padding: 1em; }
            </style>
        </head>
        <body>
            <h1>Using a DOM function</h1>

            <h2><a id="showhide" href="#">Show paragraph</a></h2>

            <p id="toggleMe">This is the paragraph that is only displayed on request.

            <p>The general flow of the document continues.

            <script>
                function changeDisplayState(id) {
                    var d = document.getElementById('showhide'),
                        e = document.getElementById(id);
                    if (e.style.display === 'none' || e.style.display === '') {
                        e.style.display = 'block';
                        d.innerHTML = 'Hide paragraph';
                    } else {
                        e.style.display = 'none';
                        d.innerHTML = 'Show paragraph';
                    }
                }
                document.getElementById('showhide').addEventListener('click', function (e) {
                    e.preventDefault();
                    changeDisplayState('toggleMe');
                });
            </script>
        </body>
    </html>


Document Object Model

DHTML is not a technology in and of itself; rather, it is the product of three related and complementary technologies: HTML, Cascading Style Sheets (CSS), and JavaScript. To allow scripts and components to access features of HTML and CSS, the contents of the document are represented as objects in a programming model known as the Document Object Model (DOM).

The DOM API is the foundation of DHTML, providing a structured interface that allows access and manipulation of virtually anything in the document. The HTML elements in the document are available as a hierarchical tree of individual objects, meaning you can examine and modify an element and its attributes by reading and setting properties and by calling methods. The text between elements is also available through DOM properties and methods.

The DOM also provides access to user actions such as pressing a key and clicking the mouse. You can intercept and process these and other events by creating event handler functions and routines. The event handler receives control each time a given event occurs and can carry out any appropriate action, including using the DOM to change the document.


Dynamic styles

Dynamic styles are a key feature of DHTML. By using CSS, you can quickly change the appearance and formatting of elements in a document without adding or removing elements. This helps keep your documents small and the scripts that manipulate the document fast.

The object model provides programmatic access to styles. This means you can change inline styles on individual elements and change style rules using simple JavaScript programming.

Inline styles are CSS style assignments that have been applied to an element using the style attribute. You can examine and set these styles by retrieving the style object for an individual element. For example, to highlight the text in a heading when the user moves the mouse pointer over it, you can use the style object to enlarge the font and change its color, as shown in the following simple example.

    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <title>Dynamic Styles</title>
            <style>
                ul { display: none; }
            </style>
        </head>

        <body>
            <h1 id="firstHeader">Welcome to Dynamic HTML</h1>

            <p><a id="clickableLink" href="#">Dynamic styles are a key feature of DHTML.</a></p>

            <ul id="unorderedList">
                <li>Change the color, size, and typeface of text</li>
                <li>Show and hide text</li>
                <li>And much, much more</li>
            </ul>

            <p>We've only just begun!</p>

            <script>
                function showMe() {
                    document.getElementById("firstHeader").style.color = "#990000";
                    document.getElementById("unorderedList").style.display = "block";
                }

                document.getElementById("clickableLink").addEventListener("click", function (e) {
                    e.preventDefault();
                    showMe();
                });
            </script>
        </body>
    </html>


See also

-   Dynamic web page
-   Dynamic Cascading Style Sheets
-   DHTMLEdit


References


External links

-   QuirksMode, a comprehensive site with test examples and instructions on how to write DHTML code which runs on several browsers.
-   Introductory DHTML Tutorial
-   HTML & DHTML Reference on MSDN

Category:HTML

[1]

[2]