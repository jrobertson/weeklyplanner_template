<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match='week'>
<html>
  <head>
    <title>Weekly planner | generated by Polyrex-Calendar</title>
    <link rel="stylesheet" href="week_layout.css"/>
    <link rel="stylesheet" href="week.css"/>
  </head>
  <body>
    <div id="wrap">
    <header>
      <nav>
      <ul>
        <li><a href='/'>home</a></li>
        <li><a href='/calendar/'>calendar</a></li>
        <li>weekly planner</li>
      </ul>
      </nav>
      <h1>        
        <xsl:choose>
          <xsl:when test="summary/label=''">
            <xsl:value-of select="summary/mon"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="summary/label"/>
          </xsl:otherwise>
        </xsl:choose>
        : Week <xsl:value-of select="summary/no"/>
      </h1>
      </header>
      <xsl:apply-templates select='summary'/>
      <xsl:apply-templates select='records'/>
    </div>
  </body>
</html>
</xsl:template>

<xsl:template match='week/summary'>
</xsl:template>

<xsl:template match='week/records'>
<div id='col1'>
  <ul>
    <xsl:apply-templates select="day[position() &lt; 5]"/>
  </ul>
</div>
<div id='col2'>
  <ul>
    <xsl:apply-templates select="day[position() &gt;= 5]"/>
  </ul>
</div>
</xsl:template>

<xsl:template match='day'>
  <xsl:element name="li">
    <xsl:if test="summary/@class">
      <xsl:attribute name="class"><xsl:value-of select="summary/@class"/></xsl:attribute>
    </xsl:if>
    <xsl:apply-templates select='summary'/>
  <ul>
    <xsl:apply-templates select='records'/>
  </ul>
  <div><xsl:value-of select="bankholiday"/></div>
  </xsl:element>
</xsl:template>

<xsl:template match='day/summary'>
    <h2><xsl:value-of select="title"/> <xsl:text>  </xsl:text><xsl:value-of select="xday"/><xsl:value-of select="ordinal"/></h2>
<h3><xsl:value-of select="event"/></h3>
</xsl:template>

<xsl:template match='day/records'>
<xsl:choose>
  <xsl:when test="entry">

    <xsl:apply-templates select='entry'/>

  </xsl:when>
  <xsl:otherwise>

      <li></li>
      <xsl:if test="../summary/wday &gt; '0' and ../summary/wday &lt; '6'">
        <li></li>
      </xsl:if>

  </xsl:otherwise>
</xsl:choose>
</xsl:template>


<xsl:template match='entry'>
  <xsl:apply-templates select='summary'/>
  <xsl:apply-templates select='records'/>
</xsl:template>

<xsl:template match='entry/summary'>
  <li>
<xsl:if test="time_start != ''">
    <div>
    <xsl:value-of select='time_start'/>
    <xsl:text> - </xsl:text>
    <xsl:value-of select='time_end'/>
    </div>
    <xsl:text> </xsl:text>
    <div id='duration'>(<xsl:value-of select='duration'/>)</div>
     <p><xsl:value-of select='title'/></p>
</xsl:if>
  </li>
</xsl:template>

<xsl:template match='entry/records'>
</xsl:template>


</xsl:stylesheet>
