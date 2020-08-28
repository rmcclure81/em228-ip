function runScript() {
  printTitle();
}

function printTitle() {
  if (window.XMLHttpRequest) {
    // Code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else {
    // Code for IE5, IE6
    xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
  }

  var art = '../xml_data_files/art.xml',
    arthtml = '/em228-ip/html/art2.html',
    artxsl = '/em228-ip/xsl_files/art2.xslt';

  if (
    window.location.pathname == arthtml ||
    window.location.pathname == artxsl
  ) {
    xmlhttp.open('GET', art, false);
  } else {
    document.getElementById('headingTitle').innerHTML =
      window.location.pathname;
  }
  xmlhttp.send();
  xmlDoc = xmlhttp.responseXML;
  document.getElementById(
    'headingTitle'
  ).innerHTML = xmlDoc.getElementsByTagName(
    'description'
  )[0].childNodes[0].nodeValue;
}
