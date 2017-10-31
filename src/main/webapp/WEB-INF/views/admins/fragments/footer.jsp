<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<div class="container" style="position: absolute; bottom: 0px;">
  <hr>
  <footer>
    <p>&copy; 2017 <span style="font: bold italic 110% serif;">4each Inc.</span></p>
  </footer>
</div>

</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
            var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>