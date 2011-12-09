#!/opt/local/bin/perl -w
use strict;
use warnings;

## Standard includes
use Carp;
use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;
local $| = 1;

## Includes specific to this project
use JSON;
use CGI;
use lib '/Users/mkandel/src/svn/capdel/sandbox/mkandel/perl_checklists/trunk/src/lib';
use Checklists;

my $cgi = CGI->new;    # create new CGI object

my $url = $cgi->url( -relative => 1 );

print $cgi->header( -type => 'text/html', -charset => 'charset=utf-8', );
print $cgi->title( "Online Colaborative Checklist System" );

if ( $cgi->param ) { ## If this is true, the form is passing data back into us
    my $out = process_params( $cgi->param );
    if ( $out ){
#        print $cgi->header({ 
#            -type => 'application/json',
#        });
#        print $out;
    } else {
#        print "<script type=\"text/javascript\">"
#            . "alert('Expected data was not received ...');"
#            . "</script>\n";
    }

} else {
    print_app_header();
    print_app_html();
}

sub process_params{
    my $params = shift;
    my $retval;

    $retval = "some dummy value";

    return $retval;
}

sub print_app_header{
    print <<HEADER
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<!-- Printed from print_header_and_includes -->
<head>
<title>Ymail! Centralized Migration Tool</title>
<style type="text/css">
/*margin and padding on body element
  can introduce errors in determining
  element position and are not recommended;
  we turn them off as a foundation for YUI
  CSS treatments. */
body {
        margin:0;
        padding:0;
}
.yui-dt-paginator{
    display: block;
    border: width=1px;color: #CBCBCB; style: solid;
}
</style>
<style type="text/css">
#paginated { 
    text-align: center; 
} 
#paginated table { 
    margin-left:auto; margin-right:auto; 
} 
#paginated, #paginated .yui-dt-loading { 
    text-align: center; background-color: transparent; 
}
tr.d0 td {
    background-color: #FFFFFF; color: black;
}
tr.d1 td {
    background-color: #FFC0CB; color: black;
}
#header_table {
    margin-bottom: 3px;
    margin-left: 6px;
    margin-right: 3px;
    margin-top: 3px;
}
#load{
    position:absolute;
    z-index:1;
    border:3px double #999;
    background:#f7f7f7;
    width:300px;
    height:100px;
    top:50%;
    left:35%;
    text-align:center;
    line-height:50px;
    margin-top:100px;
    font-family:"Trebuchet MS", verdana, arial,tahoma;
    font-size:10pt;
}
</style>
<!-- import YUI stuff -->
<link rel="stylesheet" type="text/css" href="http://ems.ynoc.yahoo.com/ops_ui/css/toolbar.css" />
<link rel="stylesheet" type="text/css" href="http://ems.ynoc.yahoo.com/ops_ui/css/ops.css" />
<link rel="stylesheet" type="text/css" href="style_sheets/datatable.css"/>
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/calendar/assets/skins/sam/calendar.css">
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/button/assets/skins/sam/button.css">

<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/connection/connection-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/element/element-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/calendar/calendar-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/json/json-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/datasource/datasource-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/container/container_core-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/menu/menu-min.js"></script>
<script src="http://yui.yahooapis.com/2.9.0/build/button/button-min.js"></script>
<!-- There is a bug in datatable.js, we're using a local copy with the bug fixed -->
<script src="js/datatable-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/paginator/paginator-min.js"></script>

<body class="yui-skin-sam">
<!--
<img src="img/logo1.gif">
-->
<script type="text/javascript" src="js/HeaderFooter.js"></script>
<script type="text/javascript">DisplayHeader();</script>
HEADER
}

sub print_app_html{
    print <<CONTENT;
<div id="yopssubnav">
  <ul>
    <!-- We need this <ul> to keep the spacing looking correct -->
  </ul>
</div id="yopssubnav">

<div id="searchbar">
<!--this is the light purple line beneath the dark one... -->&nbsp;
</div id="searchbar">

<style>
    #selection{
        margin:8px;
        float:left;
    }
    #selection_details{
        margin:8px;
        float:left;
    }
    #cal_start_container{
        float:left;
    }
    #cal_end_container{
        float:left;
    }
    #submit_date{
        margin-top:175;
        margin-left:175;
        margin-right:175;
        float:left;
    }
    #clear{
        clear:both;
    }
    .nomargin{
        border:0px;
        margin:0px;
    }
</style>
<!--
<h1 style="text-align:center;">It works damnit!</h1>
-->
<h1 style="text-align:center;">
<BR>
There should be some interesting content here ... but alas ... there isn't.
</h1>
CONTENT
    print "</html>";
}
__END__
