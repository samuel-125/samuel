<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Template for matching the root element -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Available Medicines</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                    }
                    .medicine-list {
                        display: flex;
                        flex-wrap: wrap;
                        gap: 20px;
                        justify-content: center;
                    }
                    .medicine-item {
                        border: 1px solid #ccc;
                        padding: 15px;
                        text-align: center;
                        width: 200px;
                    }
                    .medicine-item img {
                        width: 100%;
                        height: auto;
                        max-width: 150px;
                        margin-bottom: 10px;
                    }
                    .medicine-item p {
                        margin: 5px 0;
                    }
                </style>
            </head>
            <body>
                <h1>Available Medicines</h1>
                <div class="medicine-list">
                    <xsl:for-each select="medicines/medicine">
                        <div class="medicine-item">
                            <img src="{image}" alt="{name}">
                            <p><strong><xsl:value-of select="name" /></strong></p>
                            <p><xsl:value-of select="description" /></p>
                            <p>$<xsl:value-of select="price" /></p>
                        </div>
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
