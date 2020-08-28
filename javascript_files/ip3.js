function runScript() {
  printTitle();
  getAddress();
  timeModified();
  getDescription();
  setDescription();
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
  var art = '../xml_data_files/art.xml',
    artHTML = '/em228-ip/html/art2.html',
    artXSL = '/em228-ip/xsl_files/art.xslt';

  if (window.XMLHttpRequest) {
    // Code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp = new XMLHttpRequest();
  } else {
    // Code for IE5, IE6
    xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
  }
  if (
    window.location.pathname == artHTML ||
    window.location.pathname == artXSL
  ) {
    xmlhttp.open('GET', art, false);
  }
  xmlhttp.send();
  xmlDoc = xmlhttp.responseXML;
  var desc = getElementsByTagName('description')[0].childNodes[0].nodeValue;
}

function setDescription() {
  var newSpan = document.createElement('span');
  var allDiv = document.getElementsByTagName('div');
  var fourthDiv = allDiv[3];

  newSpan.setAttribute('id', 'description');
  newSpan.innerHTML = getDescription.desc;

  fourthDiv.appendChild(newSpan);
}
