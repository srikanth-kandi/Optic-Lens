<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login.html");
    }
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- custom css file link  -->
    <link
      rel="stylesheet"
      href="http://localhost:8081/OpticLens/styles/payment.css"
    />
  </head>
  <body>
    <div class="container">
      <form action="payment.jsp" method="post">
        <div class="row">
          <div class="col">
            <h3 class="title">billing address</h3>

            <div class="inputBox">
              <fieldset>
                <legend>full name</legend>
                <!-- <span>full name :</span> -->
                <label
                  ><input type="text" placeholder="Kandi Srikanth" name="Full_Name"
                /></label>
              </fieldset>
            </div>
            <div class="inputBox">
              <span>email :</span>
              <input type="email" placeholder="example@example.com" name="Email"/>
            </div>
            <div class="inputBox">
              <span>address :</span>
              <!-- <input type="text" placeholder="room - street - locality"> -->
              <textarea name="Address"
                class="textarea"
                name=""
                id=""
                cols="10"
                rows="1"
                placeholder="room - street - locality"
              ></textarea>
            </div>
            <div class="inputBox">
              <span>city :</span>
              <input type="text" placeholder="Vijayawada" name="City"/>
            </div>

            <div class="flex">
              <div class="inputBox">
                <span>state :</span>
                <input type="text" placeholder="Andhra Pradesh" name="State"/>
              </div>
              <div class="inputBox">
                <span>zip code :</span>
                <input type="text" placeholder="123 456" name="Zipcode"/>
              </div>
            </div>
          </div>

          <div class="col">
            <h3 class="title">payment</h3>

            <div class="inputBox">
              <span>cards accepted :</span>
              <img src="images/card_img.png" alt="" />
            </div>
            <div class="inputBox">
              <span>name on card :</span>
              <input type="text" placeholder="Mr. Kandi Srikanth" name="Name_on_card"/>
            </div>
            <div class="inputBox">
              <span>credit card number :</span>
              <input type="number" placeholder="1111-2222-3333-4444" name="Card_Number"/>
            </div>
            <div class="inputBox">
              <span>exp month :</span>
              <!--<input type="text" placeholder="january" name="Expiry_Month"/>-->
              <select name="Expiry_Month">
                <option value="January">January</option>
                <option value="February">February</option>
                <option value="March">March</option>
                <option value="April">April</option>
                <option value="May">May</option>
                <option value="June">June</option>
                <option value="July">July</option>
                <option value="August">August</option>
                <option value="September">September</option>
                <option value="October">October</option>
                <option value="November">November</option>
                <option value="December">December</option>
              </select>
            </div>

            <div class="flex">
              <div class="inputBox">
                <span>exp year :</span>
                <input type="number" placeholder="2022" name="Expiry_Year"/>
              </div>
              <div class="inputBox">
                <span>CVV :</span>
                <input type="password" placeholder="123" name="CVV"/>
              </div>
            </div>
          </div>
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn"/>
      </form>
    </div>
  </body>
</html>
