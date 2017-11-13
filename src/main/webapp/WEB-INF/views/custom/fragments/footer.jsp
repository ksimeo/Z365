<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<div class="container" style="position: absolute; bottom: 0;">

  <footer>
      &mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;
    <p><span style="color: lightgreen;">&copy;2018</span>&nbsp;
        <b><i><a href="mailto:ksimeo@gmail.com" style="color: yellowgreen">Ximeo<span style="color: #dff7c7">:code
        </span></a></i></b></p>
  </footer>
</div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<spring:url value="/resources/core/js/hello.js" var="coreJs" />
<spring:url value="/resources/core/js/bootstrap.min.js"
            var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>