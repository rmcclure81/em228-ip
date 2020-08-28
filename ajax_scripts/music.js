if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '../xml_data_files/music.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write('<table border="1" bgcolor="lightgrey">');
document.write('<tr>');
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Title</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Artist</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Album</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Year Released</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Genre</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Duration</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('song');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('artist')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('album')[0].childNodes[0].nodeValue);
  document.write(
    '</td><td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('releaseYear')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('genre')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('duration')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
