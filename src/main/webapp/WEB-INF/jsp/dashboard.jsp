<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="../template/_metaStyle.jsp"/>
    <title>Учет кадров</title>
</head>
<body class="" style="background-color: rgba(205,219,245,0.39)">
<jsp:include page="../template/_menu.jsp"/>
<div class="text-center h2">
    Организационная структура
</div>
<div class="card bg-white m-auto col-md-10 order-md-1">

    <div class="row p-3">
        <div class="col-3 flex-shrink-0 p-3 bg-white border-end">
            <ul class="list-unstyled ps-0">
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                            data-bs-target="#home-collapse" aria-expanded="false">
                        Home
                    </button>
                    <div class="collapse" id="home-collapse" style="">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="?department=1" class="link-dark rounded">Overview</a></li>
                            <li><a href="?department=2" class="link-dark rounded">Updates</a></li>
                            <li><a href="#" class="link-dark rounded">Reports</a></li>
                        </ul>
                    </div>
                </li>
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                            data-bs-target="#dashboard-collapse" aria-expanded="false">
                        Dashboard
                    </button>
                    <div class="collapse" id="dashboard-collapse" style="">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="#" class="link-dark rounded">Overview</a></li>
                            <li><a href="#" class="link-dark rounded">Weekly</a></li>
                            <li><a href="#" class="link-dark rounded">Monthly</a></li>
                            <li><a href="#" class="link-dark rounded">Annually</a></li>
                        </ul>
                    </div>
                </li>
                <li class="mb-1">
                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse"
                            data-bs-target="#orders-collapse" aria-expanded="false">
                        Orders
                    </button>
                    <div class="collapse" id="orders-collapse" style="">
                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                            <li><a href="#" class="link-dark rounded">New</a></li>
                            <li><a href="#" class="link-dark rounded">Processed</a></li>
                            <li><a href="#" class="link-dark rounded">Shipped</a></li>
                            <li><a href="#" class="link-dark rounded">Returned</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="col-9 ms-sm-auto overflow-auto">
            <div class="table-responsive">
                <table class="table">
                    <core:forEach items="${staff}" var="staffProfile">

                        <tr <%--onclick="location.href='${pageContext.request.contextPath}/staff/get?snils=${staffProfile.SNILS}'"--%>>
                            <td>
                                <p>${staffProfile.lastName.toUpperCase()} ${staffProfile.firstName} ${staffProfile.middleName}</p>
                                <p>${staffProfile.serviceInfo.department.name}, ${staffProfile.serviceInfo.position.title}</p>
                            </td>
                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">Info
                                </button>
                                <button type="button" class="btn btn-primary"
                                        onclick="location.href='${pageContext.request.contextPath}/staff/get?snils=${staffProfile.SNILS}'">
                                    Edit
                                </button>
                            </td>
                        </tr>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">
                                                ${staffProfile.lastName.toUpperCase()} ${staffProfile.firstName} ${staffProfile.middleName}
                                        </h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>${staffProfile.serviceInfo.department.name}, ${staffProfile.serviceInfo.position.title}</p>
                                        <p>${staffProfile.serviceInfo.department.name}, ${staffProfile.serviceInfo.position.title}</p>
                                        <p>${staffProfile.serviceInfo.department.name}, ${staffProfile.serviceInfo.position.title}</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </core:forEach>
                </table>
            </div>
        </div>
    </div>

</div>

<jsp:include page="../template/_footer.jsp"/>
</body>
</html>
