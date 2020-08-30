function runScript() {
  printTitle();
  getAddress();
  timeModified();
  getDescription();
  FloatLabel.init();
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
  var home = '/em228-ip/html/index.html',
    ip3 = '/em228-ip/html/ip3.html',
    form = '/em228-ip/html/form.html';
  var art = '/em228-ip/xml_data_files/art-plain.xml',
    artHTML = '/em228-ip/html/art.html',
    artXSL = '/em228-ip/xml_data_files/art.xml';
  var family = '/em228-ip/xml_data_files/family-plain.xml',
    familyHTML = '/em228-ip/html/family.html',
    familyXSL = '/em228-ip/xml_data_files/family.xml';
  var movies = '/em228-ip/xml_data_files/movies-plain.xml',
    moviesHTML = '/em228-ip/html/movies.html',
    moviesXSL = '/em228-ip/xml_data_files/movies.xml';
  var music = '/em228-ip/xml_data_files/music-plain.xml',
    musicHTML = '/em228-ip/html/music.html',
    musicXSL = '/em228-ip/xml_data_files/music.xml';
  var verses = '/em228-ip/xml_data_files/verses-plain.xml',
    versesHTML = '/em228-ip/html/verses.html',
    versesXSL = '/em228-ip/xml_data_files/verses.xml';

  if (
    window.location.pathname != home &&
    window.location.pathname != ip3 &&
    window.location.pathname != form
  ) {
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
    } else if (
      //** Determining Path - Family **/
      window.location.pathname == familyHTML ||
      window.location.pathname == familyXSL
    ) {
      //** Creating GET Request for Family XML File **/
      xmlhttp.open('GET', family, false);
    } else if (
      //** Determining Path - Movies **/
      window.location.pathname == moviesHTML ||
      window.location.pathname == moviesXSL
    ) {
      //** Creating GET Request for Movies XML File **/
      xmlhttp.open('GET', movies, false);
    } else if (
      //** Determining Path - Music **/
      window.location.pathname == musicHTML ||
      window.location.pathname == musicXSL
    ) {
      //** Creating GET Request for Music XML File **/
      xmlhttp.open('GET', music, false);
    } else if (
      //** Determining Path - Verses **/
      window.location.pathname == versesHTML ||
      window.location.pathname == versesXSL
    ) {
      //** Creating GET Request for Verses XML File **/
      xmlhttp.open('GET', verses, false);
    }

    xmlhttp.send();
    xmlDoc = xmlhttp.responseXML;
    var desc = xmlDoc.getElementsByTagName('description')[0].childNodes[0]
      .nodeValue;

    var newSpan = document.createElement('span');
    var allDiv = document.getElementsByTagName('div');
    var fifteenthDiv = allDiv[14];

    newSpan.setAttribute('id', 'description');
    newSpan.innerHTML = desc;

    fifteenthDiv.appendChild(newSpan);
  }
}

function updateAlert() {
  if (window.innerWidth <= 1200) {
    alert(
      'New Updates:\nResponsive Design for Smaller Screens.\nRemoved Footer & Logo for Smaller Screens.'
    );
  } else {
    alert(
      'New Updates:\n   - Responsive Design for Smaller Screens.\n   - Removed Footer & Logo for Smaller Screens.'
    );
  }
}

function readFile() {
  var text = new XMLHttpRequest();
  text.open('GET', '/em228-ip/text_files/ip3.txt');
  text.onreadystatechange = function () {
    document.getElementById('text-data').innerHTML = text.responseText;
  };

  text.send();
}

const FloatLabel = (() => {
  // add active class
  const handleFocus = (e) => {
    const target = e.target;
    target.parentNode.classList.add('active');
    target.setAttribute('placeholder', target.getAttribute('data-placeholder'));
  };

  // remove active class
  const handleBlur = (e) => {
    const target = e.target;
    if (!target.value) {
      target.parentNode.classList.remove('active');
    }
    target.removeAttribute('placeholder');
  };

  // register events
  const bindEvents1 = (element) => {
    const message = element.querySelector('textarea');
    message.addEventListener('focus', handleFocus);
    message.addEventListener('blur', handleBlur);
  };

  const bindEvents2 = (element) => {
    const names = element.querySelector('input');
    names.addEventListener('focus', handleFocus);
    names.addEventListener('blur', handleBlur);
  };

  // get DOM elements
  const init = () => {
    const textareaContainer = document.querySelectorAll('.textarea-container');
    const nameContainer = document.querySelectorAll('.input-container');

    textareaContainer.forEach((element) => {
      if (element.querySelector('textarea').value) {
        element.classList.add('active');
      }

      bindEvents1(element);
    });

    nameContainer.forEach((element) => {
      if (element.querySelector('input').value) {
        element.classList.add('active');
      }

      bindEvents2(element);
    });
  };

  return {
    init: init,
  };
})();

FloatLabel.init();
