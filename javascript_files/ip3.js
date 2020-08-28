function printTitle() {
  if (window.XMLHttpRequest) {
    // Code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else {
    // Code for IE5, IE6
    xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
  }

  var art = '../xml_data_files/art2.xml',
    arthtml = 'https://rmcclure81.github.io/em228-ip/html/art2.html',
    artxsl = 'https://rmcclure81.github.io/em228-ip/xsl_files/art2.xslt';

  if (
    window.location.pathname == arthtml ||
    window.location.pathname == artxsl
  ) {
    xmlhttp.open('GET', 'art', false);
  }
  xmlhttp.send();
  xmlDoc = xmlhttp.responseXML;
  document.write('<span>');
  document.write(
    xmlDoc.getElementsByTagName('description')[0].childNodes[0].nodeValue
  );
  document.write('</span>');
}

// var z = xmlDoc.getElementsByTagName('image');
// var d = xmlDoc.getElementsByTagName('date');
// var i = 0;
// document.write(art);
// document.write(<br />);

// document.write(window.location.pathname);

// xmlhttp.open('GET', '../xml_data_files/art.xml', false);
// xmlhttp.send();
// xmlDoc = xmlhttp.responseXML;
// document.write('<table border="5" bgcolor="lightgrey">');
// var x = xmlDoc.getElementsByTagName('art');
// var z = xmlDoc.getElementsByTagName('image');
// var d = xmlDoc.getElementsByTagName('date');
// var i = 0;
