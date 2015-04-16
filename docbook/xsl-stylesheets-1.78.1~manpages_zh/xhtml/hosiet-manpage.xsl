<?xml version="1.0" encoding="ASCII"?>
<!--This file was created automatically by html2xhtml-->
<!--from the HTML stylesheets.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:doc="http://nwalsh.com/xsl/documentation/1.0" xmlns="http://www.w3.org/1999/xhtml" exclude-result-prefixes="doc" version="1.0">

<doc:reference xmlns="">
<referenceinfo xmlns="http://www.w3.org/1999/xhtml">
<releaseinfo role="meta">
Alpha 0.0.0 2015-04-15 hosiet
</releaseinfo>
<author><surname>Boyuan</surname>
<firstname>Yang</firstname></author>
<copyright><year>2015</year>
<holder>Boyuan Yang</holder>
</copyright>
</referenceinfo>
<title xmlns="http://www.w3.org/1999/xhtml">hosiet's manpage-specific XSL file</title>

<partintro xmlns="http://www.w3.org/1999/xhtml">
<!--
<section><title>Introduction</title>

<para>This is technical reference documentation for the DocBook XSL
Stylesheets; it documents (some of) the parameters, templates, and
other elements of the stylesheets.</para>

<para>This reference describes the templates and parameters relevant
to formatting EBNF markup.</para>

<para>This is not intended to be <quote>user</quote> documentation.
It is provided for developers writing customization layers for the
stylesheets, and for anyone who's interested in <quote>how it
works</quote>.</para>

<para>Although I am trying to be thorough, this documentation is known
to be incomplete. Don't forget to read the source, too :-)</para>
</section>
-->
</partintro>
</doc:reference>

<!-- TODO FINISH ALL -->

<!-- ==================================================================== -->

<xsl:template name="hosiet.manpage.process1">
    <xsl:variable name="man-head-proname"><xsl:value-of select="/refentry/refmeta/refentrytitle"/>(<xsl:value-of select="/refentry/refmeta/manvolnum"/>)</xsl:variable>
    <div id="man-head" class="man-head man">
        <div class="tl"><xsl:copy-of select="$man-head-proname"/></div>
        <div class="tc"><xsl:value-of select="/refentry/refentryinfo/title"/></div>
        <div class="tr"><xsl:copy-of select="$man-head-proname"/></div>
    </div>
</xsl:template>

<xsl:template name="hosiet.manpage.process2">
    <!-- to be finished -->
    <xsl:variable name="man-head-proname-footer"><xsl:value-of select="/refentry/refmeta/refentrytitle"/>(<xsl:value-of select="/refentry/refmeta/manvolnum"/>)</xsl:variable>
    <div id="man-foot" class="man-foot man">
        <div class="tl"><xsl:value-of select="/refentry/refentryinfo/productname"/></div>
        <div class="tc"><xsl:value-of select="/refentry/refentryinfo/date"/></div>
        <div class="tr"><xsl:copy-of select="$man-head-proname-footer"/></div>
    </div>
</xsl:template>

<xsl:template name="hosiet.manpage.header">
    <meta http-equiv="Content-Type" value="application/xhtml+xml; charset=UTF-8" />
    <meta name="modifier" content="Boyuan Yang ('hosiet'): inserted self-modified XSL template" />
    <!-- insert hard css here -->
    <link rel="stylesheet" type="text/css" href="docbook-man.css"/>

</xsl:template>

<!-- ==================================================================== -->

</xsl:stylesheet>
