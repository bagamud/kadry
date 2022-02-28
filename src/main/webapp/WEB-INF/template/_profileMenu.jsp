<%@ page contentType="text/html;charset=UTF-8" %>
<ul class="nav nav-pills">
    <li class="nav-item">
        <a id="personalLink" class="nav-link" aria-current="page"
           href="${pageContext.request.contextPath}/profile/personal?staffId=${staffProfile.staffId}">Информация</a>
    </li>
    <li class="nav-item">
        <a id="documentsLink" class="nav-link"
           href="${pageContext.request.contextPath}/profile/documents?staffId=${staffProfile.staffId}">Документы</a>
    </li>
    <li class="nav-item">
        <a id="educationLink" class="nav-link"
           href="${pageContext.request.contextPath}/profile/education?staffId=${staffProfile.staffId}">Образование</a>
    </li>
    <li class="nav-item">
        <a id="militaryLink" class="nav-link"
           href="${pageContext.request.contextPath}/profile/military?staffId=${staffProfile.staffId}">Служба
            в армии</a>
    </li>
</ul>
