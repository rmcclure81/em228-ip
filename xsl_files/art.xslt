<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/gallery">
        <html>
            <head>
                <title>Art Collection</title>
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
                            <div class="descriptionContainer">
                                <div class="descriptionHeading">Description:</div>
                                <div></div>
                            </div>

                            <!-- In Page Links -->
                            <nav class="navbar" id="pageLinks">
                                <div>
                                    <a href="#one" class="links">Jump to Display All Records Table</a>
                                </div>
                                <div>
                                    <a href="#two" class="links">Jump to Display August Records Table</a>
                                </div>
                                <div>
                                    <a href="#three" class="links">Jump to Display Odd Records Table</a>
                                </div>
                            </nav>

                            <!-- Display All Records -->
                            <table align="center" border="5" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="one">
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
                            <table align="center" border="5" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="two">
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
                            <table align="center" border="5" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="three">
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