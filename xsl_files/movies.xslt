<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/movieList">
        <html>
            <head>
                <title>Movie Collection</title>
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
                            <script src="../javascript_files/nav.js"></script>
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
                                    <a href="#two" class="links">Jump to Display Christian Movies Records Table</a>
                                </div>
                                <div>
                                    <a href="#three" class="links">Jump to Display Movies from 2000-2017 Records Table</a>
                                </div>
                            </nav>

                            <!-- Display All Records -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:5px;width:90%;" id="one">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying All Records</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Rating</span>
                                    </td>
                                    <td align="center">
                                        <span>Runtime</span>
                                    </td>
                                    <td align="center">
                                        <span>Release Date</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Plot Summary</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="movie">
                                    <tr>
                                        <td align="center">
                                            <xsl:value-of select="title" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="rating" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="runtime" />
                                        </td>
                                        <td align="center">
                                            <xsl:value-of select="date/month" />
                                            <span>&#160;</span>
                                            <xsl:value-of select="date/day" />
                                            <span>, </span>
                                            <xsl:value-of select="date/year" />
                                        </td>
                                        <td align="center">
                                            <xsl:for-each select="genreList/genre">
                                                <xsl:value-of select="@name" />
                                                <br />
                                            </xsl:for-each>
                                        </td>
                                        <td align="left" style="white-space:normal;">
                                            <xsl:value-of select="plot" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </table>
                            <div style="text-align:center;margin-bottom:50px;">
                                <span class="cite">** Information retrieved from IMDB.com</span>
                            </div>

                            <!-- Display Movies with the Genre "Christian" -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;width:90%;" id="two">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying Records for Christian Movies</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Rating</span>
                                    </td>
                                    <td align="center">
                                        <span>Runtime</span>
                                    </td>
                                    <td align="center">
                                        <span>Release Date</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Plot Summary</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="movie">
                                    <xsl:choose>
                                        <xsl:when test="genreList/genre/@name = 'Christian'">
                                            <tr>
                                                <td align="center">
                                                    <xsl:value-of select="title" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="rating" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="runtime" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="date/month" />
                                                    <span>&#160;</span>
                                                    <xsl:value-of select="date/day" />
                                                    <span>, </span>
                                                    <xsl:value-of select="date/year" />
                                                </td>
                                                <td align="center">
                                                    <xsl:for-each select="genreList/genre">
                                                        <xsl:value-of select="@name" />
                                                        <br />
                                                    </xsl:for-each>
                                                </td>
                                                <td align="left" style="white-space:normal;">
                                                    <xsl:value-of select="plot" />
                                                </td>
                                            </tr>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </table>

                            <!-- Display Movies with Years from 2000 to 2017 -->
                            <table align="center" border="1" style="background-color:white;color:black;margin-top:25px;margin-bottom:50px;width:90%;" id="three">
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center" colspan="6">
                                        <span>Displaying Records for Movies from 2000-2017</span>
                                    </td>
                                </tr>
                                <tr style="background-color:#d3d3d3;">
                                    <td align="center">
                                        <span>Title</span>
                                    </td>
                                    <td align="center">
                                        <span>Rating</span>
                                    </td>
                                    <td align="center">
                                        <span>Runtime</span>
                                    </td>
                                    <td align="center">
                                        <span>Release Date</span>
                                    </td>
                                    <td align="center">
                                        <span>Genre</span>
                                    </td>
                                    <td align="center">
                                        <span>Plot Summary</span>
                                    </td>
                                </tr>
                                <xsl:for-each select="movie">
                                    <xsl:choose>
                                        <xsl:when test="date/year &gt; 1999 and date/year &lt; 2018">
                                            <tr>
                                                <td align="center">
                                                    <xsl:value-of select="title" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="rating" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="runtime" />
                                                </td>
                                                <td align="center">
                                                    <xsl:value-of select="date/month" />
                                                    <span>&#160;</span>
                                                    <xsl:value-of select="date/day" />
                                                    <span>, </span>
                                                    <xsl:value-of select="date/year" />
                                                </td>
                                                <td align="center">
                                                    <xsl:for-each select="genreList/genre">
                                                        <xsl:value-of select="@name" />
                                                        <br />
                                                    </xsl:for-each>
                                                </td>
                                                <td align="left" style="white-space:normal;">
                                                    <xsl:value-of select="plot" />
                                                </td>
                                            </tr>
                                        </xsl:when>
                                    </xsl:choose>
                                </xsl:for-each>
                            </table>
                        </main>
                    </div>
                </div>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>