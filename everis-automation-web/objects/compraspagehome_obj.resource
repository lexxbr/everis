*** Variable ***


&{HOMEPG}
...     cmpTitleMeuCarrinho=id:page-title-heading
...     cmpLogoSite=xpath://img[contains(@class,'logo img-responsive')]
...     cmpSearchHome=id:search_query_top
...     cmpProdDisp01=xpath://*[@id="homefeatured"]/li[2]
...     cmpPrice=xpath://*[@id="our_price_display"][text()='$27.00']
...     btnSignIn=xpath://a[@class='login'][contains(.,'Sign in')]

&{USERS}
...     cmpTitleAutenticação=xpath://span[@class='navigation_page'][contains(.,'Authentication')]
...     btnSignIn=id:SubmitLogin
...     btnHome=xpath://span[contains(.,'Home')]
...     cmpEmail=id:email
...     cmpPassWd=id:passwd
...     cmpMyAccount=xpath://h1[@class='page-heading'][contains(.,'My account')]
...     MsgErroAlertLogin=xpath:(//div[contains(@class,'alert alert-danger')])[1]

&{MYCAR}
...     cmpTitleMeuCarrinho=id:cart_title
...     cmpTitlePrdSucess=xpath://h2[contains(.,'Product successfully added to your shopping cart')]
...     cmpQde=xpath://tbody/tr/td[3]/div/div
...     cmpYourCartTotal=xpath://*[@id="layer_cart_product_price"][text()="$27.00"]
...     btnAddCar=id:add_to_cart
...     btnAddtoCar2=//*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[1]
...     btnLimpCar=id:empty_cart_btn
...     btnProcCheckOut=xpath://a[@class='btn btn-default button button-medium'][contains(.,'Proceed to checkout')]
...     btnProcCheckOut2=xpath://p[2]/a[1]/span[text()="Proceed to checkout"]
...     btnProcCheckOut3=xpath://*[@id="center_column"]/p[2]/a[1]
...     cmpImg01=xpath://img[@class='img-responsive'][contains(@id,'5')]
...     cmpImg02=xpath://img[@class='img-responsive'][contains(@id,'6')]
...     cmpImg03=xpath://img[@class='img-responsive'][contains(@id,'7')]
...     cmpTotalProd=xpath://div[1]/div[2]/div[1]/span[text()='$27.00']
...     cmpUnitPrice=xpath://span[text()="$27.00"]
...     cmpUnitPrice2=xpath://*[@id="product_price_2_7_0"]/span[text()="$27.00"]

&{MYADDRESSES}
...     cmpTitle=id:center_column
...     cmpTitleShip=id:carrier_area
...     cmpTitlePgto=id:center_column
...     btnProcCheckOut=xpath://*[@id="center_column"]/form/p/button/span
...     btnProcCheckOut2=xpath://*[@id="form"]/p/button
...     cmpService=id:uniform-cgv
...     cmpTotalProd=xpath://*[@id="total_product"][text()="$27.00"]
...     lnkShopping=xpath://a[contains(@title,'Previous')]