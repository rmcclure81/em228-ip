<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/musicList">
        <html>
            <head>
                <title>Music Collection</title>
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
                        <span>Music Collection</span>
                    </div>
                </header>
                <nav class="navbar">
                    <script src="../javascript_files/nav.js"></script>
                </nav>
                <div class="descriptionContainer">
                    <div class="descriptionHeading">Description:</div>
                    <div id="description">
                        The purpose of this XML file is to display 16 of my favorite songs (there are many more, but I limited myself to 16).
                    </div>
                </div>

                <!-- In Page Links -->
                <nav class="navbar">
                    <a href="#one" class="links">Jump to Display All Records Table</a>
                    <a href="#two" class="links">Jump to Display Songs by Casting Crowns Records Table</a>
                    <a href="#three" class="links">Jump to Display Songs from 2019 and 2020 Records Table</a>
                </nav>

                <!-- Display All Records -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:5px;margin-left:auto;margin-right:auto;white-space:nowrap;" id="one">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records (Alphabetical)</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Artist</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Album</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Year Released</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Duration</span>
                        </td>
                    </tr>
                    <xsl:for-each select="song">
                        <xsl:sort select="title" />
                        <tr>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="title" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="artist" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="album" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:value-of select="releaseYear" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:value-of select="genre" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:value-of select="duration" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <div style="text-align:center;margin-bottom:50px;">
                    <span class="cite">** Information retrieved from iTunes</span>
                </div>

                <!-- Display Songs with Artist "Casting Crowns" Sorted by Year (Ascending) -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:auto;margin-right:auto;white-space:nowrap;" id="two">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying Songs by Casting Crowns (Sorted by Year)</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Artist</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Album</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Year Released</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Duration</span>
                        </td>
                    </tr>
                    <xsl:for-each select="song">
                        <xsl:sort select="releaseYear" />
                        <xsl:if test="artist='Casting Crowns'">
                            <tr>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="title" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="artist" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="album" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="releaseYear" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="genre" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="duration" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <!-- Display Songs from 2019-2020 (Sort by Year and then by Title) -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:auto;margin-right:auto;white-space:nowrap;" id="three">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying Songs from 2019 and 2020 (Alphabetical by Year)</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Artist</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Album</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Year Released</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Duration</span>
                        </td>
                    </tr>
                    <xsl:for-each select="song">
                        <xsl:sort select="releaseYear" />
                        <xsl:sort select="title" />
                        <xsl:if test="releaseYear='2019' or releaseYear='2020'">
                            <tr>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="title" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="artist" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;">
                                    <xsl:value-of select="album" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="releaseYear" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="genre" />
                                </td>
                                <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                    <xsl:value-of select="duration" />
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>