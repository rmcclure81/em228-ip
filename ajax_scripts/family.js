if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '../xml_data_files/family.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write('<table border="1" bgcolor="lightgrey">');
document.write('<tr>');
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">First Name</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Last Name</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Relationship</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Gender</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;" bgcolor="white">Age</td>'
);
document.write('</tr>');
var x = xmlDoc.getElementsByTagName('person');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('firstName')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('lastName')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('relationship')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('gender')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('age')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
