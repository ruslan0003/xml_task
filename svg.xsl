<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Руслан Лукичев – задание по SVG</title>
            </head>
            <body>
                <h4 id="author" style="display: none">Руслан Лукичев</h4>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="графика">
        <svg width="{@ширина}" height="{@высота}">
            <xsl:apply-templates />
        </svg>
    </xsl:template>
    <xsl:template match="эллипс">
        <ellipse id="{@id}" fill="{@заливка}" border="{@ободок}" border-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
        <xsl:apply-templates />
    </xsl:template>
</xsl:stylesheet>
