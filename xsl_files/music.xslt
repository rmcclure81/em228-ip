<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/musicList">
        <html>
            <head>
                <title>Music Collection</title>
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
                                    <a href="#two" class="links">Jump to Display Songs by Casting Crowns Records Table</a>
                                </div>
                                <div>
                                    <a href="#three" class="links">Jump to Display Songs from 2019 and 2020 Records Table</a>
                                </div>
                            </nav>

                            <!-- Display All Records -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:5px;max-width:90%" id="one">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying All Records (Alphabetical)</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Artist</span>
                                    </td>
                                    <td align="center">
                                        <span>Album</span>
                                    </td>
                                    <td align="center">
                                        <span>Year Released</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Duration</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="song">
                                    <xsl:sort select="title" />
                                    <tr>
                                        <td align="center">
                                            <xsl:value-of select="title" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="artist" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="album" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="releaseYear" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="genre" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="duration" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <div style="text-align:center;margin-bottom:50px;">
                                <span class="cite">** Information retrieved from iTunes</span>
                            </div>

                            <!-- Display Songs with Artist "Casting Crowns" Sorted by Year (Ascending) -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="two">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying Songs by Casting Crowns (Sorted by Year)</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Artist</span>
                                    </td>
                                    <td align="center">
                                        <span>Album</span>
                                    </td>
                                    <td align="center">
                                        <span>Year Released</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Duration</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="song">
                                    <xsl:sort select="releaseYear" />
                                    <xsl:if test="artist='Casting Crowns'">
                                        <tr>
                                            <td align="center">
                                                <xsl:value-of select="title" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="artist" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="album" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="releaseYear" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="genre" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="duration" />
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>
                            </table>

                            <!-- Display Songs from 2019-2020 (Sort by Year and then by Title) -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;max-width:90%" id="three">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying Songs from 2019 and 2020 (Alphabetical by Year)</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Artist</span>
                                    </td>
                                    <td align="center">
                                        <span>Album</span>
                                    </td>
                                    <td align="center">
                                        <span>Year Released</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Duration</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="song">
                                    <xsl:sort select="releaseYear" />
                                    <xsl:sort select="title" />
                                    <xsl:if test="releaseYear='2019' or releaseYear='2020'">
                                        <tr>
                                            <td align="center">
                                                <xsl:value-of select="title" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="artist" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="album" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="releaseYear" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="genre" />
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select="duration" />
                                            </td>
                                        </tr>
                                    </xsl:if>
                                </xsl:for-each>
                            </table>
                        </main>
                    </div>
                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>