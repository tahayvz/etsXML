<%@ include file="header.jsp" %>

<body>
<div class="container">
    <div class="col-md-offset-2 col-md-7">
    	  <h1>Customer Registration Page</h1>
            <div class="panel panel-info">
            <div class="panel-heading">
            </div>
            <div class="panel-body">
                <form:form action="saveCustomer" cssClass="form-horizontal"
                           method="post" modelAttribute="customer">

                    <!-- need to associate this data with customer id -->
                    <form:hidden path="id" />

                    <div class="form-group">
                        <label for="firstName" class="col-md-3 control-label">First
                            Name</label>
                        <div class="col-md-9">
                            <form:input path="firstName" required="required" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lastName" class="col-md-3 control-label">Last
                            Name</label>
                        <div class="col-md-9">
                            <form:input path="lastName" required="required" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="bloodType" class="col-md-3 control-label">Blood type</label>
                        <div class="col-md-9">
                            <form:input path="bloodType" required="required" maxlength="5" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="mobileNumber" class="col-md-3 control-label">Mobile number</label>
                        <div class="col-md-9">
                            <form:input path="mobileNumber" required="required" type='tel' pattern='[0-9]{3}[0-9]{3}[0-9]{4}' maxlength="10"  title='Telefon No: 5556667788 ' placeholder="Telefon numarası" cssClass="form-control" />                            
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="address" class="col-md-3 control-label">Address</label>
                        <div class="col-md-9">
                            <form:input path="address" required="required" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <!-- Button -->
                        <div class="col-md-offset-3 col-md-9">
                            <input class="btn btn-primary" type="submit" value="Submit">        
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>