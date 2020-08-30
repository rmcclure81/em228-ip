<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/familyList">
        <html>
            <head>
                <title>Family Collection</title>
                <link rel="stylesheet" type="text/css" href="/em228-ip/css/main.css" />
                <link rel="stylesheet" type="text/css" href="/em228-ip/css/media.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="shortcut icon" type="image/ico" href="/em228-ip/images/favicon.ico" />
                <script type="text/javascript" src="/em228-ip/javascript_files/ip3.js"></script>
            </head>
            <!--=======  End of Section  ========-->
            <body onload="runScript()">
                <div class="container">
                    <div class="content-wrap">
                        <header>
                            <div class="heading">
                                <a href="/em228-ip/html/index.html">
                                    <img src="/em228-ip/images/favicon.ico" alt="logo" class="logo" />
                                </a>
                                <span id="headingTitle"></span>
                            </div>
                        </header>
                        <nav class="navbar">
                            <script src="/em228-ip/javascript_files/nav.js"></script>
                        </nav>
                        <main>
                            <div class="DescriptionContainer">
                                <div class="descriptionHeading">Description:</div>
                                <div></div>
                            </div>

                            <!-- In Page Links -->
                            <nav class="navbar" id="pageLinks">
                                <div>
                                    <a href="#one" class="links">Jump to Display All Records Table</a>
                                </div>
                                <div>
                                    <a href="#two" class="links">Jump to Display People with Last Name "McClure" Records Table</a>
                                </div>
                                <div>
                                    <a href="#three" class="links">Jump to Display Children, Nieces, and Nephew Records Table</a>
                                </div>
                            </nav>

                            <!-- Display All Records -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="one">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="5" style="padding-left:20px;padding-right:20px;">
                                        <span>Displaying All Records</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>First Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Last Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Relationship</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Gender</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Age</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="person">
                                    <tr>
                                        <td align="center" style="padding-left:20px;padding-right:20px;">
                                            <xsl:value-of select="firstName" />
                                        </td>
                                        <td align="center" style="padding-left:20px;padding-right:20px;">
                                            <xsl:value-of select="lastName" />
                                        </td>
                                        <td align="center" style="padding-left:20px;padding-right:20px;">
                                            <xsl:value-of select="relationship" />
                                        </td>
                                        <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                            <xsl:value-of select="gender" />
                                        </td>
                                        <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                            <xsl:value-of select="age" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>

                            <!-- Display People with the Last Name "McClure" -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="two">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="5" style="padding-left:20px;padding-right:20px;">
                                        <span>Displaying People with the Last Name "McClure"</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>First Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Last Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Relationship</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Gender</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Age</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="person">
                                    <xsl:choose>
                                        <xsl:when test="lastName='McClure'">
                                            <tr>
                                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                                    <xsl:value-of select="firstName" />
                                                </td>
                                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                                    <xsl:value-of select="lastName" />
                                                </td>
                                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                                    <xsl:value-of select="relationship" />
                                                </td>
                                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                                    <xsl:value-of select="gender" />
                                                </td>
                                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                                    <xsl:value-of select="age" />
                                                </td>
                                            </tr>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </table>

                            <!-- Display Children, Nieces, and Nephew -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="three">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="5" style="padding-left:20px;padding-right:20px;">
                                        <span>Displaying My Children, Nieces, and Nephew (Sorted Youngest to Oldest)</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>First Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Last Name</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Relationship</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Gender</span>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <span>Age</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="person">
                                    <xsl:sort select="age" data-type="number" order="ascending" />
                                    <xsl:if test="contains(relationship, 'Son') or contains(relationship, 'Daughter') or contains(relationship, 'Niece') or contains(relationship, 'Nephew')">
                                        <tr>
                                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                                <xsl:value-of select="firstName" />
                                            </td>
                                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                                <xsl:value-of select="lastName" />
                                            </td>
                                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                                <xsl:value-of select="relationship" />
                                            </td>
                                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                                <xsl:value-of select="gender" />
                                            </td>
                                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                                <xsl:value-of select="age" />
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>
                            </table>
                        </main>
                    </div>
                    <footer align="center">
                        <div>
                            <span>URL: </span>
                            <span id="address"></span>
                        </div>
                        <div>
                            <span>Last Modified: </span>
                            <span id="modified"></span>
                        </div>
                    </footer>
                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>