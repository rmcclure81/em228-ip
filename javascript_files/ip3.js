function runScript() {
  printTitle();
  getAddress();
  timeModified();
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
