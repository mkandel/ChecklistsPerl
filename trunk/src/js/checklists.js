//var hide_button = new YAHOO.widget.Button(
//    "hide_button",  // Source element id
//    { 
//        label: "Hide/Unhide",
//        onClick: { fn: process_click }
//});
var hide_button = document.getElementById("hide_button");
dump( hide_button );
YAHOO.util.Event.addListener(hide_button, 'click', process_click);

var process_click = function(){
    console.log( "Button pressed" );
    alert( "Button pressed" );
}
