/* _____________________________________________________________________________

* |                                                                             |
* |                    === WARNING: GLOBAL GADGET FILE ===                      |
* |                  Changes to this page affect many users.                    |
* | Please discuss changes on the talk page or on WT:Gadget before editing. |
* |_____________________________________________________________________________|
*/

/*

* Imported from Git commit 72b9abf17fe33ab8af55a7cfb074a9beb35365ab as of 2015-03-09 from https://github.com/proveit-js/proveit
* Changes should be made through that GitHub project.
*/

div#proveit {

   position: fixed;
   bottom: 0px;
   right: 20px;
   z-index: 10000;
   /*height: 300px;*/
   width: 750px;
   background: #fff;
   /*  border: 1px solid #666;
       font-size: small !important;
       opacity: 0.3;
       filter: alpha(opacity=30); // older IE */
   font-size: small;

}

div#proveit a img {

   border: 0;

}

div#proveit h1 {

   float: right;
   width: 50%;
   text-align: right;
   font-size: 11px;
   margin: 5px 5px 0 0; padding: 0;
   font-weight: normal;
   border: none;

}

div#proveit h1 a {

   /*  color: #00254c;
       text-decoration: none; */
   margin: 0 30px 0 0; padding: 0;

} /* div#proveit h1 span {

   font-weight: bold;
   /*  font-size: 14px; */

div#proveit h1 button.ui-button-icon-only {

   margin: 3px 5px 0 0;
   height: 25px; width: 25px;

}

div#proveit div#proveit-view-edit-panel, div#proveit div#proveit-add-panel {

   padding: 5px;

}

/*** BEGIN CSS FOR REFLIST ***/ div#proveit table {

   border-collapse: collapse;
   width: 100%;
   margin: 0; padding: 0;

} div#proveit tr.light td {

   background-color: #fff;

} div#proveit tr.dark td {

   background-color: #eeeeee;

} div#proveit tr.invalid td {

   color: #ff0000;

} div#proveit tr.selected td {

   background-color: #2682c7;

} div#proveit tr:hover td {

   background-color: #fddc05;
   color: #000;

} div#proveit tr.selected:hover td {

   background-color: #2682c7;

} div#proveit td {

   padding: 5px 3px 3px 3px;
   vertical-align: top;

}

div#proveit td.number {

   font-size: 12px;
   color: #666;
   text-align: right;

}

div#proveit tr.selected td.number {

   color: #ccc;

}

/*

 td.author {
 padding-left: 0.5em;
 }
 td.year{
 width: 50px;
 text-align: center;
 }
 */

/*div#proveit td.details {}*/

div#proveit td.type {

   width: 20px;
   background-repeat: no-repeat;
   background-position: 50% 5px;
   padding: 0 5px;

} div#proveit td.title {

   /*  width: 460px; */
   font-size: 12px;
   color: #000;
   text-align: left;

/* font-weight: bold; */ } div#proveit tr.selected td.title {

   color: #fff;

} div#proveit td.edit {}

div#proveit td.edit button {

   height: 20px;
   width: 20px;

}

div#proveit tr.selected td.edit button {

   visibility: hidden;

}

/*

 div#proveit td.ibid button {
 width: 20px; height: 20px;
 }
 */

div#proveit tr.selected div.expanded {

   display: block;

}

div#proveit div.expanded {

   font-size: x-small;
   padding: 5px 0;
   display: none;
   width: auto;

}

div#proveit div.expanded p {

   color: #ccc;

}

div#proveit div.expanded p span {

   color: #fff;

}

div#proveit div.expanded a:link, div#proveit div.expanded a:visited {

   color: #fff;
   text-decoration: underline;

}

div#proveit div.expanded a:hover {

   color: #fff;
   text-decoration: none;

}

div#proveit div.expanded span.all-citations a {

   margin: 0 0.5em;
   text-transform: uppercase;

}

div#proveit div.expanded button {

   margin-right: 1em;

}

/*** END CSS FOR REFLIST ***/

div#proveit div.inputs {

   border: 0;
   margin: 0; padding: 3px;

} div#proveit div.inputs div.input-row, div#proveit div.inputs div.ref-name-row {

   display: block;
   margin: 0 0 0.8em 0; padding: 0;

}

/*div.inputs div.hidden{

 display: none;
 }*/

div#proveit div.ref-name-row label {

   cursor: help;

}

div#proveit div.inputs label.paramdesc {

   display: block;
   font-size: 12px;
   text-transform: none;
   float: left;
   width: 200px;
   text-align: left;
   padding-top:5px;

}

div#proveit div.inputs input.paramdesc {

   /*display: block;*/
   font-size: 12px;
   text-transform: none;
   /*float: left;*/
   width: 180px;
   text-align: left;
   padding-right: 10px;

}

div#proveit div.inputs input.paramvalue {

   width: 480px; height: 18px;
   font-size: 12px;
   border: 1px solid #ccc;

}

div#proveit div.inputs select {

   width: auto;
   font-size: 12px;

}

div#proveit div.inputs button {

   font-size: 11px;

}

div#proveit div.input-row button.delete-field {

   height: 20px; width: 20px;
   margin-left: 5px;
   line-height: 0;

}

div#proveit div#add-buttons, div#proveit div#edit-buttons {

   margin-top: 5px;
   font-size: 11px;

}

div#proveit button.right-side {

   float: right;

}

div#proveit .pointers {

   width: 2em;
   overflow: scroll;

}

div#proveit div#edit-fields {

   color: #fff;
   background-color: #2682c7;

}

div#proveit .scroll {

   display: block;
   overflow: scroll;
   overflow-y: scroll;
   overflow-x: hidden;
   border: 1px solid #dddddd !important;

}

div#proveit .required {

   font-weight: bold;

/*color: #FF0084;*/ /*color: #ff0000;*/ }

/*** MISC STYLES ***/

div#proveit .notification {

   font-size: 10px;
   padding-left: 8px;
   display: none;

}

div#proveit .hidden {

   display: none;

}

div#proveit input {

   padding: 0px;

}

/*

 jqueryUI class modifications start here

-   /

div#proveit a.tab-link {

   font-weight: bold;

}

div#proveit ul.ui-tabs-nav {

   position: static;

}

div#proveit button.ui-button-icon-only {

   margin: 0; padding: 0;
   height: 20px; width: 20px;
   font-size: 11px;
   vertical-align: top;

}

/* Template elements */

1.  proveit-templates {

   display: none;

}