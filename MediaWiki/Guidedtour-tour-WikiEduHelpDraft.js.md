// Guided Tour for adding your username to the list of users who completed the training for students: Wikipedia:Training/For_students

( function ( window, document, $, mw, gt ) {

//automatic api:edit function to send yourself messages function sendMessage( targetPage, msgPage ) {

   var api = new mw.Api();
   api.get( {
       'action' : 'query',
       'titles' : msgPage,
       'prop'   : 'revisions|info',
       'intoken' : 'edit',
       'rvprop' : 'content',
       'indexpageids' : 1
   } ).done( function (result) {
       result = result.query;
       var page = result.pages[result.pageids[0]];
       var text = page.revisions[0]['*'];
       api.post( {
           'action' : 'edit',
           'title' : targetPage,
           'appendtext' : "\n" + text,
           'summary' : 'automatic post from sandbox "request feedback" button',
           'token' : page.edittoken
       } );
   } );

}

gt.defineTour( {

       name: 'WikiEduHelpDraft',
       shouldLog: true,
       steps: [ {
               //1
               title: 'Request feedback',
               description: 'Project:Wiki_Ed/tour/request_feedback',
               onShow: gt.getPageAsDescription,
               overlay: true,
               closeOnClickOutside: false,
               buttons: [ {
                       name: 'I need help from a Content Expert',
                       action: 'externalLink',
                       url: mw.util.getUrl( 'User_talk:Ian_(Wiki_Ed)' ) + '?action=edit&preload=Wikipedia%3AWiki_Ed%2FNeed_help_preload&preloadtitle=Need+help+request+from+%7E%7E%7E&section=new&tour=WikiEduHelp&step=2'
                   },  {
                       name: 'Nevermind',
                       onclick: function() { gt.endTour(); }
               } ],
               allowAutomaticOkay: false
           } , {
               //2
               title: 'Fill out this form and save it',
               description: 'After saving this form to request help, you should get a response on your Talk page from a Wiki Education Foundation Content Expert within one business day. Be sure to check back on Wikipedia for the notification.',
               // onShow: gt.getPageAsDescription,
               overlay: false,
               closeOnClickOutside: false,
               buttons: [ {
                       name: 'Okay',
                       action: 'end'
               } ],
               allowAutomaticOkay: false

       }]

} );

} (window, document, jQuery, mediaWiki, mediaWiki.guidedTour ) ) ;