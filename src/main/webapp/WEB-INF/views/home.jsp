<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<%@ include file="header.jsp" %>

	<head>
		<title>Home</title>
	</head>
<body>
	<div class="container">
    <div class="col-md-offset-1 col-md-10">
	  <h1>Customer management</h1>
        <hr />

        <input type="button" value="Add Customer"
               onclick="window.location.href='showForm'; return false;"
               class="btn btn-primary" />
        <br/><br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Customer List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Blood Type</th>
                        <th>Mobile Number</th>
                        <th>Address</th>
                    </tr>

                    <!-- loop over and print our customers -->
                    <c:forEach var="tempCustomer" items="${customers}">

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/updateForm">
                            <c:param name="customerId" value="${tempCustomer.id}" />
                        </c:url>

                        <!-- construct an "delete" link with customer id -->
                        <c:url var="deleteLink" value="/delete">
                            <c:param name="customerId" value="${tempCustomer.id}" />
                        </c:url>
                        <tr>
                            <td>${tempCustomer.firstName}</td>
                            <td>${tempCustomer.lastName}</td>
                            <td>${tempCustomer.bloodType}</td>
                            <td>${tempCustomer.mobileNumber}</td>
                            <td>${tempCustomer.address}</td>
                            <td>
                                <!-- display the update link --> 
                                <a href="${updateLink}">Update</a>
                                | <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
