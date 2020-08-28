function runScript() {
  printTitle();
  getAddress();
  timeModified();
  getDescription();
  //   setDescription();
}

function printTitle() {
  document.getElementById('headingTitle').innerHTML = document.title;
}

function getAddress() {
  document.getElementById('address').innerHTML = document.URL;
}

function timeModified() {
  var x = String(new Date(document.lastModified));
  document.getElementById('modified').innerHTML = x.substring(0, 21);
}

function getDescription() {
  //** Variable declarations **/
  var art = '../xml_data_files/art.xml',
    artHTML = '/em228-ip/html/art2.html',
    artXSL = '/em228-ip/xsl_files/art2.xml';
  var family = '../xml_data_files/family.xml',
    familyHTML = '/em228-ip/html/family.html',
    familyXSL = '/em228-ip/xsl_files/family.xslt';
  var movies = '../xml_data_files/movies.xml',
    moviesHTML = '/em228-ip/html/movies.html',
    moviesXSL = '/em228-ip/xsl_files/movies.xslt';
  var music = '../xml_data_files/music.xml',
    musicHTML = '/em228-ip/html/music.html',
    musicXSL = '/em228-ip/xsl_files/music.xslt';
  var verses = '../xml_data_files/verses.xml',
    versesHTML = '/em228-ip/html/verses.html',
    versesXSL = '/em228-ip/xsl_files/verses.xslt';

  //** Creating the XMLHttpRequest Object **/
  if (window.XMLHttpRequest) {
    // Code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else {
    // Code for IE5, IE6
    xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
  }

  //** Determining Path **/
  if (
    //** Determining Path - Art **/
    window.location.pathname == artHTML ||
    window.location.pathname == artXSL
  ) {
    //** Creating GET Request for Art XML File **/
    xmlhttp.open('GET', art, false);
//   } else if (
//     //** Determining Path - Family **/
//     window.location.pathname == familyHTML ||
//     window.location.pathname == familyXSL
//   ) {
//     //** Creating GET Request for Family XML File **/
//     xmlhttp.open('GET', family, false);
//   } else if (
//     //** Determining Path - Movies **/
//     window.location.pathname == moviesHTML ||
//     window.location.pathname == moviesXSL
//   ) {
//     //** Creating GET Request for Movies XML File **/
//     xmlhttp.open('GET', movies, false);
//   } else if (
//     //** Determining Path - Music **/
//     window.location.pathname == musicHTML ||
//     window.location.pathname == musicXSL
//   ) {
//     //** Creating GET Request for Music XML File **/
//     xmlhttp.open('GET', music, false);
//   } else if (
//     //** Determining Path - Verses **/
//     window.location.pathname == versesHTML ||
//     window.location.pathname == versesXSL
//   ) {
//     //** Creating GET Request for Verses XML File **/
//     xmlhttp.open('GET', verses, false);
//   }
  xmlhttp.send();
  xmlDoc = xmlhttp.responseXML;
  var desc = xmlDoc.getElementsByTagName('description')[0].childNodes[0]
    .nodeValue;

  var newSpan = document.createElement('span');
  var allDiv = document.getElementsByTagName('div');
  var fourthDiv = allDiv[11];

  newSpan.setAttribute('id', 'description');
  newSpan.innerHTML = desc;

  fourthDiv.appendChild(newSpan);
}

// function setDescription() {
//   var newSpan = document.createElement('span');
//   var allDiv = document.getElementsByTagName('div');
//   var fourthDiv = allDiv[3];

//   newSpan.setAttribute('id', 'description');
//   newSpan.innerHTML = getDescription.desc;

//   fourthDiv.appendChild(newSpan);
// }
