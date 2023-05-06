<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Springsecurity Login</title>
      <!-- Font Awesome -->
        <link
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
        href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
        rel="stylesheet"
        />
        <!-- MDB -->
        <link
        href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
        rel="stylesheet"
        />
      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
  </head>

  <body>


    <section class="vh-100 gradient-custom">
      <div class="container py-5 h-100">
        <form method="POST" action="${contextPath}/login" class="form-signin">
          <div class="form-group ${error != null ? 'has-error' : ''}">
            
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-12 col-md-8 col-lg-6 col-xl-5">
            <div class="card bg-dark text-white" style="border-radius: 1rem;">
              <div class="card-body p-5 text-center">
    
                <div class="mb-md-5 mt-md-4 pb-5">
                  <span>${message}</span>
                  <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
                  <p class="text-white-50 mb-5">Please enter your email and password!</p>
    
                  <div class="form-outline form-white mb-4">
                    <input name="username"  type="text" id="typeEmailX" class="form-control form-control-lg" autofocus="true"/>
                    <label class="form-label" >Email</label>
                  </div>
    
                  <div class="form-outline form-white mb-4">
                    <input name="password" type="password" id="typePasswordX" class="form-control form-control-lg" />
                    <label class="form-label" for="typePasswordX">Password</label>
                   
                  </div> 
                  
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                  <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
                   <span>${error}</span>
           
    
                </div>
    
             
    
              </div>
            </div>
          </div>
        </div>
      </div>
         </form>
      </div>
    </section>
    <!-- MDB -->
    <script
    type="text/javascript"
    src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>
