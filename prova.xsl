<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://www.tei-c.org/ns/1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
  xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/"> 
<html> 
 <head> 
        <link rel="stylesheet" type="text/css" href="stile.css" media="screen" /> 
        <script src="main.js"> </script>
        <meta charset="UTF-8"/>
  </head>

<body>
  <h1 class="centro">Cartoline dal fronte</h1> 
  <h2 class="centro">Un progetto a cura di </h2>
  <h3 class="centro"> <xsl:value-of select="//tei:persName[@xml:id='FB']" /></h3>
  <div id="home">
  <a href="#atitolouno"><img src="home1.png" width="270" height="270" id="home1"></img></a>
  <a href="#atitolodue"><img src="home2.png" width="270" height="270" id="home2"></img></a>
  </div>
  <br />
  <br />
  <div>
  <xsl:apply-templates select="//tei:TEI"/>
  </div>
  <xsl:apply-templates select="//teiCorpus//teiHeader[@xml:id='corpus']"/> 
</body>
</html>
</xsl:template>

<!-- template per header con info cartolina-->

<xsl:template match="//tei:TEI/teiHeader">
    <xsl:variable name="index" select="position()"/>
    <xsl:element name="div" >
      <xsl:attribute name="id">
        <xsl:value-of select="concat('cartolinaheader' , $index) "/>
      </xsl:attribute>     
      <xsl:apply-templates/>  
    </xsl:element>
</xsl:template>

<!-- inserisco il titolo e i bottoni-->

<xsl:template match="//tei:title[@type='main']" >
     <h2> <xsl:value-of select="."/> </h2>
     <button type="button" id="a{@xml:id}">Fronte</button> 
     <button type="button" id="{@xml:id}">Retro</button>
</xsl:template>

<!-- gestisco i vari elementi-->

<xsl:template match="//tei:author">
</xsl:template>

<xsl:template match="//tei:orgName">
</xsl:template>


<xsl:template match="//tei:title[@type='custom']">
</xsl:template>

<xsl:template match="//tei:bibl//tei:publisher">
<p> <b>Editore:</b> <xsl:value-of select="."/> </p>
</xsl:template>

<xsl:template match="//tei:pubPlace">
</xsl:template>

<xsl:template match="//tei:bibl//tei:date">
<p> <b>Data di stampa:</b> <xsl:value-of select="."/> </p>
</xsl:template>

<xsl:template match="//tei:msIdentifier/tei:country">
</xsl:template>

<xsl:template match="//tei:msIdentifier/tei:settlement">
</xsl:template>

<xsl:template match="//tei:place/tei:settlement">
</xsl:template>

<xsl:template match="//tei:repository">
</xsl:template>

<xsl:template match="//tei:idno">
<p> <b>Codice identificativo:</b> <xsl:value-of select="."/> </p>
</xsl:template>

<xsl:template match="//tei:note">
<p> <b>Note:</b> <xsl:value-of select="."/> </p>
</xsl:template>


<xsl:template match="//tei:msContents">
</xsl:template>

<xsl:template match="//tei:support">
</xsl:template>

<xsl:template match="//tei:condition">
</xsl:template>

<!-- luoghi  -->

<xsl:template match="//tei:TEI[@xml:id='cartolina_1']//tei:listPlace">
   <p><b>Luoghi nominati:</b><xsl:apply-templates select="//tei:TEI[@xml:id='cartolina_1']//tei:listPlace//tei:placeName"/></p>
</xsl:template>


<xsl:template match="//tei:TEI[@xml:id='cartolina_1']//tei:listPlace//tei:placeName">
<xsl:value-of select="."/>
<xsl:if test="not(position()=last())">, </xsl:if>
</xsl:template>

<xsl:template match="//tei:TEI[@xml:id='cartolina_2']//tei:listPlace">
   <p><b>Luoghi nominati: </b><xsl:apply-templates select="//tei:TEI[@xml:id='cartolina_2']//tei:listPlace//tei:placeName"/></p>
</xsl:template>


<xsl:template match="//tei:TEI[@xml:id='cartolina_2']//tei:listPlace//tei:placeName">
<xsl:value-of select="."/>
<xsl:if test="not(position()=last())">, </xsl:if>
</xsl:template>

<!-- persone -->

<xsl:template match="//tei:listPerson">
   <p><b>Persone coinvolte: </b><xsl:apply-templates/> </p>
</xsl:template>

<xsl:template match="//tei:person[@xml:id='GC']//tei:persName">
<xsl:value-of select="."/> ,
</xsl:template>

<xsl:template match="//tei:person[@xml:id='OT']//tei:persName">
<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="//tei:person[@xml:id='M']//tei:persName">
<p><b>Artista cartolina: </b><a href="https://www.guidedocartis.it/?page_id=15834"><xsl:value-of select="."/></a> </p>
</xsl:template>

<xsl:template match="//tei:person[@xml:id='B']//tei:persName">
<p><b>Artista cartolina: </b><a href="http://soloillustratori.blogspot.com/2015/02/aurelio-bertiglia.html"><xsl:value-of select="."/></a> </p>
</xsl:template>

<xsl:template match="//tei:person/tei:sex">
</xsl:template>

<xsl:template match="//tei:person/tei:occupation">
</xsl:template>

<xsl:template match="//tei:org">
</xsl:template>

<xsl:template match="//tei:profileDesc">
</xsl:template>

<!--corpo con il contenuto vero e proprio della cartolina (fronte, retro e testo) -->

<xsl:template match="//tei:TEI/tei:text">
    <xsl:variable name="index" select="position()"/>
    <xsl:element name="div" >
      <xsl:attribute name="id">
        <xsl:value-of select="concat('cartolina_' , $index) "/>
      </xsl:attribute> 
      <xsl:apply-templates/>  
    </xsl:element>
</xsl:template>

<!-- inserisco la descrizione-->

<xsl:template match="//tei:figDesc">
<div id="{@xml:id}{@xml:id}">
<p id="{@xml:id}"> <b>Descrizione:</b> <xsl:value-of select="."/> </p> </div>
</xsl:template>

<!-- inserisco le immagini-->

<xsl:template match="//tei:figure//tei:graphic">
      <div id="{@xml:id}{@xml:id}"> <img class="foto" src="{@url}" id="{@xml:id}" /> </div>
</xsl:template>

<!-- costruisco la map con le varie zone da poter clickare -->

<xsl:template match="//tei:facsimile">
<xsl:apply-templates />
</xsl:template>


<xsl:template match="//tei:surface[@type='fronte']">
</xsl:template>
  
<xsl:template match="//tei:surface[@type='retro']//tei:graphic">
      <img src="{@url}" id="{@xml:id}" usemap="#{@xml:id}"/>
      <map name="{@xml:id}">
          <xsl:if test="@xml:id='retrouno'"><xsl:apply-templates select="//tei:TEI[@xml:id='cartolina_1']/tei:facsimile/tei:surface[@type='retro']//tei:zone"/></xsl:if>
          <xsl:if test="@xml:id='redue'"><xsl:apply-templates select="//tei:TEI[@xml:id='cartolina_2']/tei:facsimile/tei:surface[@type='retro']//tei:zone"/></xsl:if>
      </map>
</xsl:template>

<!-- inserisco le coordinate-->

<xsl:template match="//tei:zone">
  <xsl:element name="area">  
        <xsl:attribute name="id">
          <xsl:value-of select="@xml:id"/>       
       </xsl:attribute> 
        <xsl:attribute name="shape">
          <xsl:value-of select="concat('rect','')"/>
        </xsl:attribute>
      <xsl:attribute name="coords">
          <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
      </xsl:attribute>
  </xsl:element>
</xsl:template>

<!-- retro clickabile -->

<xsl:template match="//tei:div[@type='message']">
<div id="{@xml:id}"> <xsl:apply-templates/>  </div>
</xsl:template>


<!-- inserisci il testo della lettera-->

<xsl:template match="//tei:div[@type='message']">
<div id="{@xml:id}"> <p id="click"><b>Clicca sull'immagine per vedere il testo corrispondente!</b></p> <xsl:apply-templates/>  </div>
</xsl:template>

<xsl:template match="//tei:div[@type='message']//tei:div">
<p id="{@xml:id}"> <xsl:apply-templates/>  </p>
</xsl:template>

<xsl:template match="//tei:lb">
<br />
</xsl:template>

<xsl:template match="//tei:stamp[@type='postage']">
</xsl:template>

<xsl:template match="//tei:head">
</xsl:template>

<!-- aggiungo il footer sulla base delle informazioni contenute in teiCorpus-->

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']">
<footer> <xsl:apply-templates /> </footer>
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//titleStmt">
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//editionStmt//edition">
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//editionStmt//respStmt">
<div><span id="accanto"><xsl:apply-templates /> </span></div>
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//editionStmt//respStmt//resp">
<xsl:value-of select="."/> : <br /> 
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//editionStmt//respStmt//persName">
&#9758; <xsl:value-of select="."/>  <br />
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//publicationStmt">
</xsl:template>

<xsl:template match="/teiCorpus/teiHeader[@xml:id='corpus']//sourceDesc">
</xsl:template>




</xsl:stylesheet>