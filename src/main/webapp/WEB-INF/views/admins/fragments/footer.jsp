<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<div class="container">
  <hr>
  <footer>
    <p>&copy; 2017 LaConiCode</p>
  </footer>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/scripts/admins.js" var="coreJs" />
<spring:url value="/resources/scripts/bootstrap.min.js" var="bootstrapJs" />
<script type="text/javascript" src="../../../../resources/scripts/admins.js"></script>
<script type="text/javascript" src="../../../../resources/scripts/bootstrap.min.js"></script>

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>