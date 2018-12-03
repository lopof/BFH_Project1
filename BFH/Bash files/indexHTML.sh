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
    
    	<link rel="stylesheet" type="text/css" href="papaya.css?build=1446" />
    	<script type="text/javascript" src="papaya.js?build=1446"></script>

<script>
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

function viewimage(mrimage) {

            var params = []
            // Reset viewer and load new images
            \$(".viewimage").removeClass("active")

            //var tmpname = \$(mrimage).attr("filename").replace(/^.*[\\\/]/, '')
/*
            if (\$(mrimage).attr("type") == "atlas" || \$(mrimage).attr("type") == "parcellation") {
                params["images"] = ["/static/images/" + \$(mrimage).attr("target_template_image") + ".nii.gz", \$(mrimage).attr("filename")];
                params[tmpname] = {"parametric": true,  "lut":"Spectrum", "alpha":"0.75",  minPercent: 0.0, maxPercent: 1.0};
            } else if (\$(mrimage).attr("type") == "ROI/mask") {
                params["images"] = ["/static/images/" + \$(mrimage).attr("target_template_image") + ".nii.gz",\$(mrimage).attr("filename")];
                params[tmpname] = {"parametric": true,  "lut":"Overlay (Negatives)", "alpha":"0.75",  minPercent: 0.0, maxPercent: 1.0};
            } else if (\$(mrimage).attr("type") == "anatomical") {
                params["images"] = [\$(mrimage).attr("filename")];
            } else if (\$(mrimage).attr("data_origin") == "surface"){
                params["images"] = ["/static/images/" + \$(mrimage).attr("target_template_image") + ".nii.gz",\$(mrimage).attr("filename")];
                params[tmpname] = {"parametric": true,  "min":0, "lut":"OrRd", "negative_lut":"PuBu", "alpha":"0.75", "symmetric":true, minPercent: 0.0, maxPercent: 1.0};
            } else {
                params["images"] = ["/static/images/" + \$(mrimage).attr("target_template_image") + ".nii.gz",\$(mrimage).attr("filename")];
                params[tmpname] = {"parametric": true,  "min":0, "lut":"OrRd", "negative_lut":"PuBu", "alpha":"0.75", "symmetric":true};
            }
*/
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

</script> 
    
    	<title>Papaya Viewer BFH</title>
    
    	<script type="text/javascript">
 var params = [];
        params["worldSpace"] = true;
        params["images"] = ["DICOM/UPD-EtkNr-null-test-HC-20151202-20181115-2.2-AQ1-0010-0001-0045.dcm"];
     <!--   params["surfaces"] = ["data/mySurface.surf.gii"]; -->
       <!-- params["myOverlayImage.nii.gz"] = {"min": 4, "max": 10}; -->
</script>

	</head>

	<body>
	
	 <div w3-include-html="content.html"></div> 
		
		<div class="papaya" data-params="params"></div>
		
	</body>
		<script>
	includeHTML();
	</script>
</html>
markierungszeile_fuer_das_ende_der_eingabe
) > index.html

echo End Script
