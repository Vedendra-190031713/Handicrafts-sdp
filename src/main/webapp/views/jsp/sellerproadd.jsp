<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page import="com.example.demo.Backend.Backend123,com.example.demo.Model.product,java.util.*,java.lang.*,java.io.*,org.springframework.beans.factory.annotation.Autowired" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>HandiCrafts</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home123.css" />
    
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,200&display=swap"
      rel="stylesheet"
    />
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />
    <script type="text/javascript">
    function checkform()
    {
    	
    		var un,ep;
    		un=f1.username.value;
    		ep=f1.password.value;
    		if(un=="")
    			{
    			
    			window.alert("Please enter username");
   		 		return false;
    			}
    		else if(ep=="")
    			{
    			window.alert("Enter the password")
   		 		return false;
    			}
    		else
    			{
    			return true;
    			}
    }
    </script>
  </head>
  <body>
    <div class="header">
      <div class="container">
        <div class="navbar">
          <div class="logo">
            <a href="index.html">
              <img src="images/logo.png" alt="" width="125px"
            /></a>
          </div>
          <nav>
            <ul id="MenuItems">
              <li><a href="/">Home</a></li>
              <li><a href="/producthome">Products</a></li>
              <li><a href="">About</a></li>
              <li><a href="">Contact</a></li>
              <li><a href="account.html">Account</a></li>
              <!-- TODo: 22:20 -->
            </ul>
          </nav>
          <a href="/myCart"
            ><img src="${pageContext.request.contextPath}/img/cart.png" alt="" width="30px" height="30px"
          /></a>
          <img
            src="images/menu.png"
            alt=""
            class="menu-icon"
            onclick="menutoggle()"
          />
        </div>
      </div>
    </div>
    <!-- Navigation ends here -->
    <!-- Account Page -->

    <div class="account-page">
      <div class="container">
        <div class="row">
       
          <div class="col-2">
            <div class="form-container">
              <div class="form-btn">
                <span >Add product Form</span>
               	
              </div>
              <form action="/sellerproduct" id="RegForm" method="post" modelAttribute="user">
              <label>Product name</label>
               <input
                      id="name"
                      name="pname"
                      type="text"
                      class="form-control validate"
                      required
                    />
                  <label
                      for="description"
                      >Description</label
                    >
                    <textarea
                      class="form-control validate"
                      rows="3"
                      name="desc"
                      required
                    ></textarea>
                    <br>		
                	 <label
                      for="category"
                      >Category</label
                    >
                   <br>
                  <select name="category" id="category"  class="custom-select tm-select-accounts">
  			<c:forEach items="${category}" var="cat">
    			<option value="${cat.cname}">
      					 ${cat.cname}
    			</option>
  				</c:forEach>
				</select>
				<br>
				<label>Price</label>
                <input
                            id="stock"
                            name="stock"
                            type="text"
                            class="form-control validate"
                            required
                          />
                          <label>Discount</label>
                <input
                            id="stock"
                            name="discount"
                            type="text"
                            class="form-control validate"
                            required
                          />
                          <label>Image</label>
                            <input
                            id="stock"
                            name="file"
                            type="text"
                            class="form-control validate"
                            required
                          />
                <button type="submit" class="btn">Add product</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <div class="footer-col-1">
            <h3>Download Our App</h3>
            <p>
              Download App for Android <br />
              and ios mobile phone
            </p>
            <div class="app-logo">
              <img src="images/play-store.png" alt="" />
              <img src="images/app-store.png" alt="" />
            </div>
          </div>
          <div class="footer-col-2">
            <img src="images/logo-white.png" alt="" />
            <p>
              Lorem, ipsum dolor sit amet consectetur <br />adipisicing elit.
              Porro, eum?
            </p>
          </div>
          <div class="footer-col-3">
            <h3>Useful Links</h3>
            <ul>
              <li>Coupons</li>
              <li>Blog Post</li>
              <li>Return Policy</li>
              <li>Join Affiliate</li>
            </ul>
          </div>

          <div class="footer-col-4">
            <h3>Follow us</h3>
            <ul>
              <li>Facebook</li>
              <li>Twitter</li>
              <li>Instagram</li>
              <li>YouTube</li>
            </ul>
          </div>
        </div>
        <hr />
        <p class="copyright">Copyright 2021 - introidx</p>
      </div>
    </div>
    <!-- JS for Toggle menu -->
    <script>
      var MenuItems = document.getElementById("MenuItems");

      MenuItems.style.maxHeight = "0px";

      function menutoggle() {
        if (MenuItems.style.maxHeight == "0px") {
          MenuItems.style.maxHeight = "200px";
        } else {
          MenuItems.style.maxHeight = "0px";
        }
      }
    </script>
    <!-- 
js for toggle form -->
    <script>
      var LoginForm = document.getElementById("LoginForm");
      var RegForm = document.getElementById("RegForm");
      var indicator = document.getElementById("indicator");

      function register() {
        RegForm.style.transform = "translateX(0px)";
        LoginForm.style.transform = "translateX(0px)";
        indicator.style.transform = "translateX(100px)";
      }

      function login() {
        RegForm.style.transform = "translateX(300px)";
        LoginForm.style.transform = "translateX(300px)";
        indicator.style.transform = "translateX(0px)";
      }
    </script>
  </body>
</html>
    