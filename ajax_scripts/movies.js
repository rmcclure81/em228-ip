if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '../xml_data_files/movies.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write('<table border="1" bgcolor="lightgrey">');
document.write('<tr>');
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Title</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Rating</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Runtime</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Release Date</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Genre</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Plot Summary</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('movie');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('rating')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('runtime')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      x[i].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      x[i].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  var y = xmlDoc.getElementsByTagName('genreList')[i].childElementCount;
  for (j = 0; j < y; j++) {
    document.write(
      x[i].getElementsByTagName('genre')[j].childNodes[0].nodeValue + '<br />'
    );
  }
  document.write('</td>');
  document.write('<td style="padding:10px;text-align:left;" bgcolor="white">');
  document.write(x[i].getElementsByTagName('plot')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
