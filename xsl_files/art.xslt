<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/gallery">
        <html>
            <head>
                <title>Art Collection</title>
                <link rel="stylesheet" type="text/css" href="../css/index.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="shortcut icon" type="image/ico" href="../images/favicon.ico" />
                <script src="../javascript_files/ip3.js"></script>
            </head>
            <body onload="runScript()">
                <header>
                    <div id="heading1">
                        <a href="../html/index.html">
                            <img src="../images/favicon.ico" alt="Logo" class="logo" />
                        </a>
                        <span id="headingTitle"></span>
                    </div>

                    <nav class="navbar">
                        <script src="../javascript_files/nav.js"></script>
                    </nav>
                </header>
                <div class="descriptionContainer">
                    <div class="descriptionHeading">Description:</div>
                    <div></div>
                    <!-- <div id="description">
                      The purpose of this XML file is to display 15 pieces of my daughter's
                      artwork with the titles and dates created.
                    </div> -->
                </div>

                <!-- In Page Links -->
                <nav class="navbar" id="pageLinks">
                    <a href="#one" class="links">Jump to Display All Records Table</a>
                    <a href="#two" class="links">Jump to Display August Records Table</a>
                    <a href="#three" class="links">Jump to Display Odd Records Table</a>
                </nav>

                <!-- Display All Records -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;" id="one">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>#</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Image</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Date</span>
                        </td>
                    </tr>
                    <xsl:for-each select="art">
                        <tr>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="@id" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:if test="orientation = 'l'">
                                    <img src="{image/@file}" width="100px" height="75px" />
                                </xsl:if>
                                <xsl:if test="orientation = 'p'">
                                    <img src="{image/@file}" width="75px" height="100px" />
                                </xsl:if>
                                <xsl:if test="orientation = 's'">
                                    <img src="{image/@file}" width="100px" height="100px" />
                                </xsl:if>
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="title" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="date/month" />
                                <span>&#160;</span>
                                <xsl:value-of select="date/day" />
                                <span>, </span>
                                <xsl:value-of select="date/year" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Display Art completed in August -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;" id="two">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records in August</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>#</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Image</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Date</span>
                        </td>
                    </tr>
                    <xsl:for-each select="art">
                        <xsl:choose>
                            <xsl:when test="date/month='August'">
                                <tr>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:if test="orientation = 'l'">
                                            <img src="{image/@file}" width="100px" height="75px" />
                                        </xsl:if>
                                        <xsl:if test="orientation = 'p'">
                                            <img src="{image/@file}" width="75px" height="100px" />
                                        </xsl:if>
                                        <xsl:if test="orientation = 's'">
                                            <img src="{image/@file}" width="100px" height="100px" />
                                        </xsl:if>
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="title" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="date/month" />
                                        <span>&#160;</span>
                                        <xsl:value-of select="date/day" />
                                        <span>, </span>
                                        <xsl:value-of select="date/year" />
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>

                <!-- Display Art with Odd Record Only -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;" id="three">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Odd Records</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>#</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Image</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Date</span>
                        </td>
                    </tr>
                    <xsl:for-each select="art">
                        <xsl:if test="position() mod 2 != 0">
                            <tr>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="@id" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:if test="orientation = 'l'">
                                        <img src="{image/@file}" width="100px" height="75px" />
                                    </xsl:if>
                                    <xsl:if test="orientation = 'p'">
                                        <img src="{image/@file}" width="75px" height="100px" />
                                    </xsl:if>
                                    <xsl:if test="orientation = 's'">
                                        <img src="{image/@file}" width="100px" height="100px" />
                                    </xsl:if>
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="title" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="date/month" />
                                    <span>&#160;</span>
                                    <xsl:value-of select="date/day" />
                                    <span>, </span>
                                    <xsl:value-of select="date/year" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
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
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
