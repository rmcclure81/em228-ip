<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/verseList">
        <html>
            <head>
                <title>Bible Verse Collection</title>
                <link rel="stylesheet" type="text/css" href="/em228-ip/css/main.css" />
                <link rel="stylesheet" type="text/css" href="/em228-ip/css/media.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="shortcut icon" type="image/ico" href="/em228-ip/images/favicon.ico" />
                <script type="text/javascript" src="/em228-ip/javascript_files/main.js"></script>
            </head>
            <!--=======  End of Section  ========-->
            <body onload="runScript()">
                <div class="container">
                    <div class="content-wrap">
                        <header>
                            <div class="heading">
                                <a href="../html/index.html">
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
                                    <a href="#two" class="links">Jump to Display Book of Romans Records Table</a>
                                </div>
                                <div>
                                    <a href="#three" class="links">Jump to Display Chapters that Contain a '3' Records Table</a>
                                </div>
                            </nav>

                            <!-- Display All Records -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:5px;white-space:nowrap;width:90%" id="one">
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
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;white-space:nowrap;width:90%" id="two">
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
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;white-space:nowrap;width:90%" id="three">
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