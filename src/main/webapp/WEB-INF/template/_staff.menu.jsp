<%@ page contentType="text/html;charset=UTF-8" %>

<ul class="nav nav-pills">
    <li class="nav-item">
        <a id="staffLink" class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/staff">Personal
            info</a>
    </li>
    <li class="nav-item">
        <a id="serviceLink" class="nav-link active" href="${pageContext.request.contextPath}/staff/service">Service
            Info</a>
    </li>
    <li class="nav-item">
        <a id="documentsLink" class="nav-link" href="${pageContext.request.contextPath}/staff/documents">Documents</a>
    </li>
    <li class="nav-item">
        <a id="educationLink" class="nav-link" href="${pageContext.request.contextPath}/staff/education">Education</a>
    </li>
    <li class="nav-item">
        <a id="militaryLink" class="nav-link" href="${pageContext.request.contextPath}/staff/military">Military</a>
    </li>
</ul>
<script> Array.from(document.getElementsByClassName('nav-link')).forEach((link) => link.setAttribute('class', 'nav-link'))

const link = document.URL.split('/')[document.URL.split('/').length - 1] + 'Link';

document.getElementById(link).setAttribute('class', 'nav-link active')

document.getElementById('categoryId' + this.value).setAttribute('class', 'carousel-item active');
</script>