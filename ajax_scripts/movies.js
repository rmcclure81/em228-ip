if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '/em228-ip/xml_data_files/movies.xml', false);
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
  '<td style="padding:10px;text-align:center;font-weight:bold;">Rating</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Runtime</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Release Date</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Genre</td>'
);
document.write(
  '<td style="padding:10px;text-align:center;font-weight:bold;">Plot Summary</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('movie');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="text-align:center;padding:10px;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('rating')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('runtime')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:center;" bgcolor="white">'
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
  document.write(
    '<td style="white-space:normal;padding:10px;text-align:left;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('plot')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
