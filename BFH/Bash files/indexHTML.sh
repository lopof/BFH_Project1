#!/bin/sh
# Interaktive Eingabe, if-Abfrage
echo Start Script

#!/bin/bash

(cat <<markierungszeile_fuer_das_ende_der_eingabe
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    	<!-- iOS meta tags -->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"/>
    	<meta name="apple-mobile-web-app-capable" content="yes">
    	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    	
        <link rel="stylesheet" type="text/css" href="sectionLayout.css" />
    	<link rel="stylesheet" type="text/css" href="papaya.css?build=1446" />
    	
    	<link rel="stylesheet" type="text/css" href="content.css" />
    	
    	<script type="text/javascript" src="papaya.js?build=1446"></script>

<script>
<!-- Function from https://www.w3schools.com/howto/howto_html_include.asp -->
function includeHTML() {
  var z, i, elmnt, file, xhttp;
  /*loop through a collection of all HTML elements:*/
  z = document.getElementsByTagName("*");
  for (i = 0; i < z.length; i++) {
    elmnt = z[i];
    /*search for elements with a certain atrribute:*/
    file = elmnt.getAttribute("w3-include-html");
    if (file) {
      /*make an HTTP request using the attribute value as the file name:*/
      xhttp = new XMLHttpRequest();
      xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
          if (this.status == 200) {elmnt.innerHTML = this.responseText;}
          if (this.status == 404) {elmnt.innerHTML = "Page not found.";}
          /*remove the attribute, and call this function once more:*/
          elmnt.removeAttribute("w3-include-html");
          includeHTML();
        }
      }
      xhttp.open("GET", file, true);
      xhttp.send();
      /*exit the function:*/
      return;
    }
  }
}

<!-- Reset the viewer and load the image -->

function viewimage(mrimage) {

            var params = []
            // Reset viewer and load new images
            \$(".viewimage").removeClass("active")

            //var tmpname = \$(mrimage).attr("filename").replace(/^.*[\\\/]/, '')

            params["worldSpace"] = true;
            params["expandable"] = true;
            params["combineParametric"] = true;
            params["showControls"] = false;
            params["smoothDisplay"] = false;
            params["images"] = [mrimage];

            papaya.Container.resetViewer(0, params);  // specify new ones
            papaya.Container.addImage(1,mrimage)
            \$(mrimage).addClass("active")

        }
        
<!-- Load the image as overlay -->
        
function addImage(mrimage) {

            \$(".viewimage").removeClass("active")

            params["worldSpace"] = true;
            params["expandable"] = true;
            params["combineParametric"] = true;
            params["showControls"] = false;
            params["smoothDisplay"] = false;
            params["images"] = [mrimage];
            params["images"].push(mrimage);

            papaya.Container.addImage(0,mrimage);
            \$(mrimage).addClass("active")

        }


</script> 
    
    	<title>Papaya Viewer BFH</title>
    
    	<script type="text/javascript">
    	
     <!--   If images should preloaded in the viewer use this -->
            var params = [];
            params["worldSpace"] = true;
     <!--   params["images"] = [""]; -->
     <!--   params["surfaces"] = ["data/mySurface.surf.gii"]; -->
     
</script>

	</head>

	<body>
	<div class="box">

		<div class="column secfilelist">
markierungszeile_fuer_das_ende_der_eingabe
) > index.html

echo End Script
