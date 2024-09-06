<%-- 
    Document   : cart
    Created on : Nov 25, 2023, 3:14:13 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="styles/cart.css" rel="stylesheet" type="text/css"/>
        <title>Vintravel</title>
    </head>
    <body>

        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <c:if test="${sessionScope.user.email != null}">
                                <h2 class="welcome-heading"> ${user.email} Cart</h2>
                            </c:if>
                            <c:if test="${sessionScope.admin.email != null}">
                                <h2 class="welcome-heading">${admin.email} Cart</h2>
                            </c:if>
                        </div>
                    </div>
                </div>

 <table class="table table-striped table-hover">
                
                    <tr>
                        
                        <th>Tour Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Remove From Cart</th>
                    </tr>


                    <c:forEach var="item" items="${cart.items}">
                        <tr>
                            <td><c:out value='${item.tour.tourName}'/></td>
                            <td>${item.tour.priceCurrencyFormat}</td>
                            <td>
                                <form action="CartController?action=AddToCart" method="post">
                                    <!--                            <input type="" name="action" value="">-->
                                    <!-- use the out tag to escape all EL val that are output/returned to the brow -->
                                    <input type="hidden" name="idTour" value="<c:out value='${item.tour.idTour}'/>">
                                    <input type=text name="quantity" value="<c:out value='${item.quantity}'/>" id="quantity">
                                    <input type="submit" value="Update">
                                </form>
                            </td>


<!--                    <td>${item.quantity}</td>-->
<!--                    <td>${item.tour.getPrice() * item.quantity}</td>-->
                            <td>${item.totalCurrencyFormat}</td>
                            <td>
                                <form action="CartController?action=AddToCart" method="post"> 
                                    <input type="hidden" name="idTour" value="<c:out value='${item.tour.idTour}'/>">
                                    <input type="hidden" name="quantity" value="0">
                                    <input type="submit" value="Remove Item">
                                </form>                  
        <!--                        <a href="LoadTourController?action="AddToCart";tour=${item.tour.idTour}&amp;quantity=0">Remove Item</a>-->                           
                            </td>
                        </tr>
                    </c:forEach>

                </table>
                <p><b>To change the quantity</b>, enter the new quantity 
                    and click on the Update button.</p>

                <form action="LoadTourController?action=displayTours" method="post">
                    <input type="hidden" name="action" value="shop">
                    <!-- Sử dụng thẻ button thay vì input -->
                    <button type="submit" class="btn btn-primary">Continue Shopping</button>
                </form>

                <form action="LoadTourController?action=Invoice" method="post">  <!-- <form action="" method="post"> -->
                    <input type="hidden" name="action" value="checkout">
                    <button type="submit" class="btn btn-secondary ">Check Out</button>
                </form> 
            </div>     
        </div>  

    </body>
</html>
