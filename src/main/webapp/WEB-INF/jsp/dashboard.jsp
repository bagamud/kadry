<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="../template/_metaStyle.jsp"/>
    <link href="${pageContext.request.contextPath}/css/sidebars.css" rel="stylesheet">
    <title>Учет кадров</title>
</head>
<body class="" style="background-color: rgba(205,219,245,0.39)">
<jsp:include page="../template/_menu.jsp"/>
<div class="text-center h2">
    Организационная структура
</div>
<div class="card bg-white m-auto col-md-10 order-md-1">
    <div class="row p-3">
        <div class="col-4 flex-shrink-0 p-3 bg-white border-end overflow-auto" style="height: 75vh">
            <ul class="list-unstyled ps-0">
                <core:forEach items="${rootDep}" var="department">
                    <li class="mb-1">
                        <a href="?department=${department.code}"
                           class="link-dark text-decoration-none rounded">${department.shortName}</a>
                        <button class="btn btn-toggle align-items-center rounded collapsed"
                                data-bs-toggle="collapse"
                                data-bs-target="#dep${department.code}-collapse" aria-expanded="false">
                        </button>
                    </li>
                    <core:if test="${depMenu.containsKey(department)}">
                        <div class="collapse" id="dep${department.code}-collapse" style="">
                            <ul class="list-unstyled px-3">
                                <core:forEach items="${depMenu.get(department)}" var="dep">
                                    <li><a href="?department=${dep.code}"
                                           class="link-dark text-decoration-none rounded">⤷${dep.shortName}</a>
                                        <core:if test="${depMenu.containsKey(dep)}">
                                            <button class="btn btn-toggle align-items-center rounded collapsed"
                                                    data-bs-toggle="collapse"
                                                    data-bs-target="#dep${dep.code}-collapse" aria-expanded="false">
                                            </button>
                                        </core:if>
                                    </li>
                                    <core:if test="${depMenu.containsKey(dep)}">
                                        <div class="collapse" id="dep${dep.code}-collapse" style="">
                                            <ul class="list-unstyled px-3">
                                                <core:forEach items="${depMenu.get(dep)}" var="depa">
                                                    <li><a href="?department=${depa.code}"
                                                           class="link-dark text-decoration-none rounded">⤷${depa.shortName}</a>
                                                        <core:if test="${depMenu.containsKey(depa)}">
                                                            <button class="btn btn-toggle align-items-center rounded collapsed"
                                                                    data-bs-toggle="collapse"
                                                                    data-bs-target="#dep${depa.code}-collapse"
                                                                    aria-expanded="false">
                                                            </button>
                                                        </core:if>
                                                    </li>
                                                    <core:if test="${depMenu.containsKey(depa)}">
                                                        <div class="collapse" id="dep${depa.code}-collapse"
                                                             style="">
                                                            <ul class="list-unstyled px-3">
                                                                <core:forEach items="${depMenu.get(depa)}"
                                                                              var="depar">
                                                                    <li><a href="?department=${depar.code}"
                                                                           class="link-dark text-decoration-none rounded">⤷${depar.shortName}</a>
                                                                        <core:if test="${depMenu.containsKey(depar)}">
                                                                            <button class="btn btn-toggle align-items-center rounded collapsed"
                                                                                    data-bs-toggle="collapse"
                                                                                    data-bs-target="#dep${depar.code}-collapse"
                                                                                    aria-expanded="false">
                                                                            </button>
                                                                        </core:if>
                                                                    </li>
                                                                    <core:if test="${depMenu.containsKey(depar)}">
                                                                        <div class="collapse"
                                                                             id="dep${depar.code}-collapse"
                                                                             style="">
                                                                            <ul class="list-unstyled px-3">
                                                                                <core:forEach
                                                                                        items="${depMenu.get(depar)}"
                                                                                        var="depart">
                                                                                    <li>
                                                                                        <a href="?department=${depart.code}"
                                                                                           class="link-dark text-decoration-none rounded">⤷${depart.shortName}</a>
                                                                                        <core:if
                                                                                                test="${depMenu.containsKey(depart)}">
                                                                                            <button class="btn btn-toggle align-items-center rounded collapsed"
                                                                                                    data-bs-toggle="collapse"
                                                                                                    data-bs-target="#dep${depart.code}-collapse"
                                                                                                    aria-expanded="false">
                                                                                            </button>
                                                                                        </core:if>
                                                                                    </li>
                                                                                    <core:if
                                                                                            test="${depMenu.containsKey(depart)}">
                                                                                        <div class="collapse"
                                                                                             id="dep${depart.code}-collapse"
                                                                                             style="">
                                                                                            <ul class="list-unstyled px-3">
                                                                                                <core:forEach
                                                                                                        items="${depMenu.get(depart)}"
                                                                                                        var="departm">
                                                                                                    <li>
                                                                                                        <a href="?department=${departm.code}"
                                                                                                           class="link-dark text-decoration-none rounded">⤷${departm.shortName}</a>
                                                                                                        <core:if
                                                                                                                test="${depMenu.containsKey(departm)}">
                                                                                                            <button class="btn btn-toggle align-items-center rounded collapsed"
                                                                                                                    data-bs-toggle="collapse"
                                                                                                                    data-bs-target="#dep${departm.code}-collapse"
                                                                                                                    aria-expanded="false">
                                                                                                            </button>
                                                                                                        </core:if>
                                                                                                    </li>
                                                                                                    <core:if
                                                                                                            test="${depMenu.containsKey(department)}">
                                                                                                        <div class="collapse"
                                                                                                             id="dep${departm.code}-collapse"
                                                                                                             style="">
                                                                                                            <ul class="list-unstyled px-3">
                                                                                                                <core:forEach
                                                                                                                        items="${depMenu.get(departm)}"
                                                                                                                        var="departme">
                                                                                                                    <li>
                                                                                                                        <a href="?department=${departme.code}"
                                                                                                                           class="link-dark text-decoration-none rounded">⤷${departme.shortName}</a>
                                                                                                                    </li>
                                                                                                                </core:forEach>
                                                                                                            </ul>
                                                                                                        </div>
                                                                                                    </core:if>
                                                                                                </core:forEach>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </core:if>
                                                                                </core:forEach>
                                                                            </ul>
                                                                        </div>
                                                                    </core:if>
                                                                </core:forEach>
                                                            </ul>
                                                        </div>
                                                    </core:if>

                                                </core:forEach>
                                            </ul>
                                        </div>
                                    </core:if>

                                </core:forEach>
                            </ul>
                        </div>
                    </core:if>
                </core:forEach>

            </ul>
        </div>
        <div class="col-8 ms-sm-auto overflow-auto" style="height: 75vh">
            <form action="${pageContext.request.contextPath}/dashboard/search" method="get">
                <div class="input-group p-3">
                    <input type="search" class="form-control" name="searchRequest">
                    <input type="submit" value="Поиск" class="btn btn-outline-primary">
                </div>
            </form>
            <core:forEach items="${staff}" var="staffProfile">
                <div class="row border-bottom align-items-center">
                    <div class="col-10">
                        <p>${staffProfile.lastName.toUpperCase()} ${staffProfile.firstName} ${staffProfile.middleName}</p>
                        <p>${staffProfile.department.name}, ${staffProfile.position.title}</p>
                    </div>
                    <div class="col-2 text-end">
                        <button type="button" class="btn btn-primary"
                                onclick="location.href='${pageContext.request.contextPath}/profile/personal?id=${staffProfile.id}'"
                            ${hidden}>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="32" fill="currentColor"
                                 class="bi bi-pencil" viewBox="0 0 16 16">
                                <path d="M12.146.146a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-10 10a.5.5 0 0 1-.168.11l-5 2a.5.5 0 0 1-.65-.65l2-5a.5.5 0 0 1 .11-.168l10-10zM11.207 2.5 13.5 4.793 14.793 3.5 12.5 1.207 11.207 2.5zm1.586 3L10.5 3.207 4 9.707V10h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.293l6.5-6.5zm-9.761 5.175-.106.106-1.528 3.821 3.821-1.528.106-.106A.5.5 0 0 1 5 12.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.468-.325z"/>
                            </svg>
                        </button>
                    </div>
                </div>
            </core:forEach>

        </div>

    </div>
</div>


<jsp:include page="../template/_footer.jsp"/>
</body>
</html>
