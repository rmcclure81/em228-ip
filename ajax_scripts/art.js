if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '../xml_data_files/art.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write('<table border="5" bgcolor="lightgrey">');
var x = xmlDoc.getElementsByTagName('art');
var z = xmlDoc.getElementsByTagName('image');
var d = xmlDoc.getElementsByTagName('date');
var i = 0;
while (i < x.length) {
  document.write('<tr>');
  // Col 1
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  if (
    x[i].getElementsByTagName('orientation')[0].childNodes[0].nodeValue == 'l'
  ) {
    document.write(
      '<img src="' +
        z[i].getAttribute('file') +
        '" width="100px" height="75px" /><br />'
    );
  } else if (
    x[i].getElementsByTagName('orientation')[0].childNodes[0].nodeValue == 'p'
  ) {
    document.write(
      '<img src="' +
        z[i].getAttribute('file') +
        '" width="75px" height="100px" /><br />'
    );
  } else {
    document.write(
      '<img src="' +
        z[i].getAttribute('file') +
        '" width="100px" height="100px" /><br />'
    );
  }
  document.write(
    x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue +
      '<br />' +
      d[i].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');

  // Col 2
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  if (
    x[i + 1].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'l'
  ) {
    document.write(
      '<img src="' +
        z[i + 1].getAttribute('file') +
        '" width="100px" height="75px" /><br />'
    );
  } else if (
    x[i + 1].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'p'
  ) {
    document.write(
      '<img src="' +
        z[i + 1].getAttribute('file') +
        '" width="75px" height="100px" /><br />'
    );
  } else {
    document.write(
      '<img src="' +
        z[i + 1].getAttribute('file') +
        '" width="100px" height="100px" /><br />'
    );
  }
  document.write(
    x[i + 1].getElementsByTagName('title')[0].childNodes[0].nodeValue +
      '<br />' +
      d[i + 1].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i + 1].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i + 1].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');

  // Col 3
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  if (
    x[i + 2].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'l'
  ) {
    document.write(
      '<img src="' +
        z[i + 2].getAttribute('file') +
        '" width="100px" height="75px" /><br />'
    );
  } else if (
    x[i + 2].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'p'
  ) {
    document.write(
      '<img src="' +
        z[i + 2].getAttribute('file') +
        '" width="75px" height="100px" /><br />'
    );
  } else {
    document.write(
      '<img src="' +
        z[i + 2].getAttribute('file') +
        '" width="100px" height="100px" /><br />'
    );
  }
  document.write(
    x[i + 2].getElementsByTagName('title')[0].childNodes[0].nodeValue +
      '<br />' +
      d[i + 2].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i + 2].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i + 2].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');

  // Col 4
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  if (
    x[i + 3].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'l'
  ) {
    document.write(
      '<img src="' +
        z[i + 3].getAttribute('file') +
        '" width="100px" height="75px" /><br />'
    );
  } else if (
    x[i + 3].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'p'
  ) {
    document.write(
      '<img src="' +
        z[i + 3].getAttribute('file') +
        '" width="75px" height="100px" /><br />'
    );
  } else {
    document.write(
      '<img src="' +
        z[i + 3].getAttribute('file') +
        '" width="100px" height="100px" /><br />'
    );
  }
  document.write(
    x[i + 3].getElementsByTagName('title')[0].childNodes[0].nodeValue +
      '<br />' +
      d[i + 3].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i + 3].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i + 3].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');

  // Col 5
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  if (
    x[i + 4].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'l'
  ) {
    document.write(
      '<img src="' +
        z[i + 4].getAttribute('file') +
        '" width="100px" height="75px" /><br />'
    );
  } else if (
    x[i + 4].getElementsByTagName('orientation')[0].childNodes[0].nodeValue ==
    'p'
  ) {
    document.write(
      '<img src="' +
        z[i + 4].getAttribute('file') +
        '" width="75px" height="100px" /><br />'
    );
  } else {
    document.write(
      '<img src="' +
        z[i + 4].getAttribute('file') +
        '" width="100px" height="100px" /><br />'
    );
  }
  document.write(
    x[i + 4].getElementsByTagName('title')[0].childNodes[0].nodeValue +
      '<br />' +
      d[i + 4].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i + 4].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i + 4].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');

  document.write('</tr>');
  i += 5;
}
document.write('</table>');
