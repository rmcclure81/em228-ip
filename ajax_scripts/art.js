if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '/em228-ip/xml_data_files/art.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write(
  '<table border="5" align="center" bgcolor="#ffffff" style="color:black;margin-top:25px;margin-bottom:50px;">'
);
document.write('<tr style="background-color:#d3d3d3;">');
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Image</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Title</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Date</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('art');
var z = xmlDoc.getElementsByTagName('image');
var d = xmlDoc.getElementsByTagName('date');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
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
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('title')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    d[i].getElementsByTagName('month')[0].childNodes[0].nodeValue +
      ' ' +
      d[i].getElementsByTagName('day')[0].childNodes[0].nodeValue +
      ', ' +
      d[i].getElementsByTagName('year')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
