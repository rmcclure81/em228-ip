<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/verseList">
        <html>
            <head>
                <title>Bible Verses Collection</title>
                <link rel="stylesheet" type="text/css" href="../css/index.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="shortcut icon" type="image/ico" href="../images/favicon.ico" />
            </head>
            <body style="background-color:#90ee90;">
                <header>
                    <div id="heading1">
                        <a href="../html/index.html">
                            <img src="../images/favicon.ico" alt="Logo" class="logo" />
                        </a>
                        <span>Bible Verses Collection</span>
                    </div>
                </header>
                <nav class="navbar">
                    <script src="../javascript_files/nav.js"></script>
                </nav>
                <div class="descriptionContainer">
                    <div class="descriptionHeading">Description:</div>
                    <div id="description">
                        The purpose of this XML file is to display 15 inspirational bible verses
                        (there are many more, but I limited myself to 15).
                    </div>
                </div>

                <!-- In Page Links -->
                <nav class="navbar">
                    <a href="#one" class="links">Jump to Display All Records Table</a>
                    <a href="#two" class="links">Jump to Display Book of Romans Records Table</a>
                    <a href="#three" class="links">Jump to Display Chapters that Contain a '3' Records Table</a>
                </nav>

                <!-- Display All Records -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:5px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="one">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Book</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Chapter</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse No.</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse</span>
                        </td>
                    </tr>
                    <xsl:for-each select="verse">
                        <tr>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="book" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="chapter" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="verses" />
                            </td>
                            <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:value-of select="data" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <div style="text-align:center;margin-bottom:50px;">
                    <span class="cite">** Information retrieved from the Bible (New International
                        Version)</span>
                </div>

                <!-- Display Verses from the Book of Romans -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="two">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records from the Book of Romans</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Book</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Chapter</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse No.</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse</span>
                        </td>
                    </tr>
                    <xsl:for-each select="verse">
                        <xsl:choose>
                            <xsl:when test="book='Romans'">
                                <tr>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="book" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="chapter" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="verses" />
                                    </td>
                                    <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:value-of select="data" />
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>

                <!-- Display Verses from Chapters that Contain a 3 -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="three">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="4" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records from Chapters that Contain a '3'</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Book</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Chapter</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse No.</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Verse</span>
                        </td>
                    </tr>
                    <xsl:for-each select="verse">
                        <xsl:choose>
                            <xsl:when test="contains(chapter, 3)">
                                <tr>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="book" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="chapter" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="verses" />
                                    </td>
                                    <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:value-of select="data" />
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>