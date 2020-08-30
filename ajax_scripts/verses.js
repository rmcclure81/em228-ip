if (window.XMLHttpRequest) {
  // Code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp = new XMLHttpRequest();
} else {
  // Code for IE5, IE6
  xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
}

xmlhttp.open('GET', '../xml_data_files/verses.xml', false);
xmlhttp.send();
xmlDoc = xmlhttp.responseXML;
document.write(
  '<table border="1" align="center" bgcolor="#ffffff" style="color:black;margin-top:25px;margin-bottom:50px;max-width:90%;">'
);
document.write('<tr style="background-color:#d3d3d3;">');
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Book</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Chapter</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;text-align:center;font-weight:bold;">Verse No.</td>'
);
document.write(
  '<td style="white-space:nowrap;padding:10px;font-weight:bold;">Verse</td>'
);
document.write('</tr>');

var x = xmlDoc.getElementsByTagName('verse');
for (i = 0; i < x.length; i++) {
  document.write('<tr>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('book')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('chapter')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="white-space:nowrap;padding:10px;text-align:center;" bgcolor="white">'
  );
  document.write(
    x[i].getElementsByTagName('verses')[0].childNodes[0].nodeValue
  );
  document.write('</td>');
  document.write(
    '<td style="padding:10px;text-align:left;white-space:normal;" bgcolor="white">'
  );
  document.write(x[i].getElementsByTagName('data')[0].childNodes[0].nodeValue);
  document.write('</td>');
  document.write('</tr>');
}
document.write('</table>');
