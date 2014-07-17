var uiDemo = {}; // To avoid name conflicts

uiDemo.langString =
  "Java,C,C++,PHP,C#,Python,Visual Basic,Objective-C,Perl,Ruby,JavaScript,Delphi," +
  "Lisp,SQL,Pascal,Ada,NXT-G,SAS,RPG,Lua,ABAP,Object Pascal,Go,Scheme,Fortran," +
  "Tc,D,COBOL,Logo,CL,APL,JavaFX Script,R,JScript.NET,C shell,ActionScript,Scratch," +
  "IDL,Haskell,Alice,Prolog,Erlang,Smalltalk,Forth,Awk,ML,Scala,ABC,Algol,Applescript," +
  "Bash,bc,Beta,CFML,cg,Clean,Clipper,Cobra,cT,Curl,Dylan,Eiffel,Euphoria,F#,Factor," +
  "Groovy,Icon,Io,J,LabVIEW,LabWindows/CVI,MAD,MAX/MSP,Modula-2,Modula-3,MUMPS,Natural," +
  "Oberon,Objective Caml,Occam,Oz,PL/I,Postscript,PowerShell,Q,REALbasic,S,SIGNAL,SPSS," +
  "Squirrel,Verilog,VHDL,XBase,XSLT,Z shell";

uiDemo.langArray = uiDemo.langString.split(",");

uiDemo.googleSearch = function(selector) {
  var language = escape($(selector).val());
  window.location.href =
    "http://www.google.com/search?q=" + language;
};

uiDemo.langMatcher = function(request, callback) {
  // Case-insensitive match at beginning of word.
  // Assumes user does not enter regular expression characters
  // into search field. If you want to worry about that, use
  // $.ui.autocomplete.escapeRegex(request.term).
  var regex = new RegExp("^" + request.term, "i");
  var matches = $.grep(uiDemo.langArray, 
                       function(item) { 
                         return(regex.test(item)); 
                       });
  callback(matches);
};

uiDemo.addEffectButtons = function(selector) {
  var effects = ["blind", "clip", "drop", "explode", "fold", 
                 "puff", "slide", "scale", "pulsate"];
  for(var i=0; i<effects.length; i++) {
    var effect = effects[i];
    var attributes = { 
        type: "button",
        value: effect
    };
    var button = $("<input>", attributes);
    $(selector).append(button);
  }
  $(selector + " :button").click(function(event) {
      uiDemo.toggleEffect(event.currentTarget.value, 
                          "#effects-test");
  });
};

uiDemo.toggleEffect = function(buttonLabel, selector) {
  $(selector).toggle(buttonLabel);
};

uiDemo.switchToTheme = function(themeName) {
  var attributes = { 
    type: "text/css",
    rel: "stylesheet",
    href: "css/" + themeName + "/jquery-ui.css"
  };
  var styleSheetLink = $("<link>", attributes);
  $("head").append(styleSheetLink);
};

uiDemo.switchToSelectedTheme = function() {
  var theme = $(this).val();
  uiDemo.switchToTheme(theme);
};

$(function() {
   $("#langField1").autocomplete({ source: uiDemo.langArray });
   $("#langSearchButton1").click(function() { 
       uiDemo.googleSearch("#langField1"); 
     });
   $("#langField2").autocomplete({ source: "language-completer" });
   $("#langSearchButton2").click(function() { 
       uiDemo.googleSearch("#langField2"); 
     });
   $("#langField3").autocomplete({ source: uiDemo.langMatcher });
   $("#langSearchButton3").click(function() { 
       uiDemo.googleSearch("#langField3"); 
     });
   $("#langField4").autocomplete({ source: uiDemo.langArray });
   $("#langSearchButton4").click(function() { 
       uiDemo.googleSearch("#langField4"); 
     });
   $("#toggle-style-button").click(function() { 
     $(".ui-autocomplete").toggleClass("fancy-menu"); 
   });
   
   $("#emailField1").autocomplete({ source: "contact-completer" });
   $("#emailField2").autocomplete({ 
       source: "contact-completer",
       select: function(event, ui) {
         $("#emailField2").val(ui.item.value);
         $("#email-image").attr("src", ui.item.image);
       }
     });
   uiDemo.addEffectButtons("#effects");
   $("#themes-div input").click(uiDemo.switchToSelectedTheme);
   
   
   $(":button").button();
   $("#accordion-panel").accordion({ 
       collapsible: true, active: false, autoHeight: false
     });
});