if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '/em228-ip/xml_data_files/music.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write(
  '<table border="1" align="center" bgcolor="#ffffff" style="color:black;margin-top:25px;margin-bottom:50px;max-width:90%;">'
);
document.write('<tr style="background-color:#d3d3d3;">');
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Title</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Artist</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Album</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Year Released</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Genre</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Duration</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('song');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('artist')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('album')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('releaseYear')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('genre')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('duration')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
