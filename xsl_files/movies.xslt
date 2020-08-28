<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/movieList">
        <html>
            <head>
                <title>Movie Collection</title>
                <link rel="stylesheet" type="text/css" href="../css/index.css" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="shortcut icon" type="image/ico" href="../images/favicon.ico" />
            </head>
            <body style="background-color:#90ee90;">
                <header>
                    <div id="heading1">
                        <img src="../images/favicon.ico" alt="Logo" class="logo" />
                        <span>Movie Collection</span>
                    </div>
                </header>
                <nav class="navbar">
                    <script src="../javascript_files/nav.js"></script>
                </nav>
                <div class="descriptionContainer">
                    <div class="descriptionHeading">Description:</div>
                    <div id="description">
                        The purpose of this XML file is to display the details of 15 of my favorite movies.
                    </div>
                </div>

                <!-- In Page Links -->
                <nav class="navbar">
                    <a href="#one" class="links">Jump to Display All Records Table</a>
                    <a href="#two" class="links">Jump to Display Christian Movies Records Table</a>
                    <a href="#three" class="links">Jump to Display Movies from 2000-2017 Records Table</a>
                </nav>

                <!-- Display All Records -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:5px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="one">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying All Records</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Rating</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Runtime</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Release Date</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Plot Summary</span>
                        </td>
                    </tr>
                    <xsl:for-each select="movie">
                        <tr>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="title" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="rating" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;">
                                <xsl:value-of select="runtime" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:nowrap;">
                                <xsl:value-of select="date/month" />
                                <span>&#160;</span>
                                <xsl:value-of select="date/day" />
                                <span>, </span>
                                <xsl:value-of select="date/year" />
                            </td>
                            <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:for-each select="genreList/genre">
                                    <xsl:value-of select="@name" />
                                    <br />
                                </xsl:for-each>
                            </td>
                            <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                <xsl:value-of select="plot" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <div style="text-align:center;margin-bottom:50px;">
                    <span class="cite">** Information retrieved from IMDB.com</span>
                </div>

                <!-- Display Movies with the Genre "Christian" -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="two">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying Records for Christian Movies</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Rating</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Runtime</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Release Date</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Plot Summary</span>
                        </td>
                    </tr>
                    <xsl:for-each select="movie">
                        <xsl:choose>
                            <xsl:when test="genreList/genre/@name = 'Christian'">
                                <tr>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="title" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="rating" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="runtime" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;white-space:nowrap;">
                                        <xsl:value-of select="date/month" />
                                        <span>&#160;</span>
                                        <xsl:value-of select="date/day" />
                                        <span>, </span>
                                        <xsl:value-of select="date/year" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:for-each select="genreList/genre">
                                            <xsl:value-of select="@name" />
                                            <br />
                                        </xsl:for-each>
                                    </td>
                                    <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:value-of select="plot" />
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>

                <!-- Display Movies with Years from 2000 to 2017 -->
                <table align="center" border="1" style="background-color:white;margin-top:25px;margin-bottom:50px;margin-left:50px;margin-right:50px;white-space:nowrap;" id="three">
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" colspan="6" style="padding-left:20px;padding-right:20px;">
                            <span>Displaying Records for Movies from 2000-2017</span>
                        </td>
                    </tr>
                    <tr style="background-color:#d3d3d3;">
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Title</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Rating</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Runtime</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Release Date</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Genre</span>
                        </td>
                        <td align="center" style="padding-left:20px;padding-right:20px;">
                            <span>Plot Summary</span>
                        </td>
                    </tr>
                    <xsl:for-each select="movie">
                        <xsl:choose>
                            <xsl:when test="date/year &gt; 1999 and date/year &lt; 2018">
                                <tr>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="title" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="rating" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;">
                                        <xsl:value-of select="runtime" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;white-space:nowrap;">
                                        <xsl:value-of select="date/month" />
                                        <span>&#160;</span>
                                        <xsl:value-of select="date/day" />
                                        <span>, </span>
                                        <xsl:value-of select="date/year" />
                                    </td>
                                    <td align="center" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:for-each select="genreList/genre">
                                            <xsl:value-of select="@name" />
                                            <br />
                                        </xsl:for-each>
                                    </td>
                                    <td align="left" style="padding-left:20px;padding-right:20px;white-space:normal;">
                                        <xsl:value-of select="plot" />
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