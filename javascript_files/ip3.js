function runScript() {
  printTitle();
  getAddress();
  timeModified();
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
    artHTML = '/em228-ip/html/art2.html',
    artXSL = '/em228-ip/xsl_files/art2.xslt';

  var family = '../xml_data_files/family.xml',
    familyHTML = '/em228-ip/html/family2.html',
    familyXSL = '/em228-ip/xsl_files/family2.xslt';

  var movies = '../xml_data_files/movies.xml',
    moviesHTML = '/em228-ip/html/movies2.html',
    moviesXSL = '/em228-ip/xsl_files/movies2.xslt';

  var music = '../xml_data_files/music.xml',
    musicHTML = '/em228-ip/html/music2.html',
    musicXSL = '/em228-ip/xsl_files/music2.xslt';

  var verses = '../xml_data_files/verses.xml',
    versesHTML = '/em228-ip/html/verses2.html',
    versesXSL = '/em228-ip/xsl_files/verses2.xslt';

  if (
    window.location.pathname == artHTML ||
    window.location.pathname == artXSL
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

function getAddress() {
  document.getElementById('address').innerHTML = document.URL;
}

function timeModified() {
  var x = toString(new Date(document.lastModified));
  document.getElementById('modified').innerHTML = x.substring(1, 22);
}
