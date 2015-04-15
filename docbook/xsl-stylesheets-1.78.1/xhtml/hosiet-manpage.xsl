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
    <xsl:variable name="man-head-proname">
        <xsl:value-of select="refentry/refmeta/refentrytitle"/><xsl:value-of select="refentry/refmeta/manvolnum"/>
    </xsl:variable>
    <ol class="man man-head" id="man-head-ol">
        <!-- process: CHGRP(1) "XX MANUAL" CHGRP(1) -->
        <li class="man-head-tl"><xsl:copy-of select="$man-head-proname"/></li>
        <li class="man-head-tm"><xsl:value-of select="refentry/refentryinfo/title"/></li>
        <li class="man-head-tr"><xsl:copy-of select="$man-head-proname"/></li>
    </ol>
</xsl:template>

<xsl:template name="hosiet.manpage.process2">
    <!-- to be finished -->
</xsl:template>

<xsl:template name="hosiet.manpage.header">
    <meta http-equiv="Content-Type" value="application/xhtml+xml; charset=UTF-8" />
    <meta name="modifier" value="Boyuan Yang ('hosiet'): inserted self-modified XSL template" />
    <!-- insert hard css here -->
    <style type="text/css">
#man-head-ol {
    display: none
}
    </style>

</xsl:template>

<!-- ==================================================================== -->

</xsl:stylesheet>
