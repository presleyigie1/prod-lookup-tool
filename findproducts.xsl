<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match ="/">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="style/sinstinct.css"/>
    <!-- font awesome kit link -->
    <script src="https://kit.fontawesome.com/d33853e64f.js" crossorigin="anonymous"/>
    <title>ShoppersInstinct | Find Products</title>
</head>
<body>
    <header> 
        <img class="myLogo" src="Images/shoppersinstinct.png" alt="shoppers instinct logo"/>
        <nav>
            <ul class="nav_bar">
                <li><a href="index.html">Home</a></li>
                <li><a href="products.xml">Find Products</a></li>
            </ul>
        </nav>
    </header>
   <p></p>
   <form class = "search-wrap">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input class = "search-bar" type="text" name="" id="search-products"  placeholder ="###-##" ></input>
    </form>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
    <br></br>
        <h1 class="prodshop">Shop Products</h1>
        <br></br>
    <div class="shop-container" id="shop-container">
        <!--loops through and creates and div and elements found the concept on youtube -->
        <xsl:for-each select="products/product">
            <div class = "product-card" id="product-card">
             <!-- xsl if statements that display the image that corresponds to the id set -if statement concept taken from the youtube video -https://www.youtube.com/watch?v=aUJfsU8Fa5g  https://www.w3schools.com/XML/ref_xsl_el_if.asp -->
                <xsl:if test= "productName/@prodid=1">
                    <img class="prod-img" src = "Images/AF1.png"/>
                </xsl:if>

                <xsl:if test = "productName/@prodid=2">
                    <img class="prod-img" src = "Images/dell5415.png"  />
                </xsl:if>

                <xsl:if test= "productName/@prodid=3">
                    <img class="prod-img" src = "Images/iphone14pro.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=4">
                    <img class="prod-img" src = "Images/airpods.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=5">
                    <img  class="prod-img" src = "Images/ssttop.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=6">
                    <img  class="prod-img" src = "Images/sstbottoms.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=7">
                    <img  class="prod-img" src = "Images/ozweego.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=8">
                    <img  class="prod-img" src = "Images/galaxys22.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=9">
                    <img  class="prod-img" src = "Images/lenovo.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=10">
                    <img class="prod-img" src = "Images/airpodscase.png" />
                </xsl:if>

                <xsl:if test= "productName/@prodid=11">
                    <img class="prod-img" src = "Images/case.png" />
                </xsl:if>
                        <h2 class = "productName"><xsl:value-of select="productName"/></h2>
                        <h3 class = "category"><xsl:value-of select="category"/></h3>
                        <p class = "desc"><xsl:value-of select="description"/></p>
                        <span class = "code" id = "code">Product Code: <xsl:value-of select="code"/></span>
                        <br></br>
                        <span class = "quantity">Quantity: <xsl:value-of select="quantity"/></span>

                        <br></br>
                        <span class = "price"><xsl:value-of select="unitPrice"/></span>
            </div>
        </xsl:for-each>
    </div>
    <p class = "error" id = "error"><em>No products Found</em></p>
    <br></br>
    <br></br>
    <br></br>
     <footer class = "footer">
        <div class = "footer-text">
            <ul class = "copyShopper">
             <p>&#xA9; 2022 ShoppersInstinct</p>
            </ul>

        </div>
    </footer>
</body>
<!--  script tag located here to avoid pasrsing issues and console error messages-->
<script src ="productApp.js"/>
</html>
</xsl:template>
</xsl:stylesheet>