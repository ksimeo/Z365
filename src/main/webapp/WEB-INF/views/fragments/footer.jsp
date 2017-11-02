<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container" style="position: absolute; bottom: 0px;">
  <hr>
  <footer>
    <p>&copy; 2018 <b><i><a href="mailto:ksimeo@gmail.com" style="color: #2b542c">Ximeo<span style="color: black">:code</span></a></i></b></p>
  </footer>
</div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
            var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>