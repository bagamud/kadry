<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <jsp:include page="../template/_metaStyle.jsp"/>
    <title>Вещественные доказательства</title>



</head>
<body class="" style="background-color: rgba(205,219,245,0.39)">
<jsp:include page="../template/_menu.jsp"/>


<div class="card m-auto col-md-10 order-md-1">
    <div class="d-flex align-items-start">




        <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 280px;">
            <hr>

            <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button onclick="window.location.href='${pageContext.request.contextPath}/reports?report=general';"

                        class="nav-link" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home"
                        type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"> Общий отчет
                </button>
                <button onclick="window.location.href='${pageContext.request.contextPath}/reports?report=proceedings';"
                        class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile"
                        type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"> Отчет по материалам
                </button>
               <%-- <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages"
                        type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Messages
                </button>
                <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings"
                        type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Settings
                </button>--%>
            </div>

            <%--<div class ="btn-group bth-group-toggle" data-toggle="buttons">
                <label  class="bth bth-secondary active">
                    <input type="radio" name="options" id="option1" autocomplete="off" checked> Active

                       </label>

                <label class="bth bth-secondary">
                    <input type="radio" name="options" id="option2" autocomplete="off" > Radio
                </label>
                  </div>--%>


           <%-- <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/reports?report=general" class="nav-link secondary active" aria-current="page">
                        <svg class="bi me-2" width="16" height="16">>
                             <use xlink:href="#home"></use>
                        </svg>
                        Общий отчет
                    </a>
                </li>
                <li class="nav-item">
                    <a href="${pageContext.request.contextPath}/reports?report=proceedings" class="nav-link secondary">
                        <svg class="bi me-2" width="16" height="16">
                           <use xlink:href="#speedometer2"></use>
                        </svg>
                        Отчет по материалам
                    </a>
                </li>
                .btn-primary:focus,.btn-primary:active, .btn-primary:hover{
                outline:none; !important;
                box-shadow: none; !important;
                }
                <%--<li>
                    <a href="#" class="nav-link link-dark">
                        <svg class="bi me-2" width="16" height="16">
                            <use xlink:href="#table"></use>
                        </svg>
                        Orders
                    </a>
                </li>
                <li>
                    <a href="#" class="nav-link link-dark">
                        <svg class="bi me-2" width="16" height="16">
                            <use xlink:href="#grid"></use>
                        </svg>
                        Products
                    </a>
                    </li>--%>
                <%-- <li>
                     <a href="#" class="nav-link link-dark">
                         <svg class="bi me-2" width="16" height="16">
                             <use xlink:href="#people-circle"></use>
                         </svg>
                         Customers
                     </a>
                 </li>--%>
                <!--<script>
                    $(function funG(){
                            $(navGeneral).click(function(){
                                $(navProceedings).removeClass('active');
                                $(this).addClass('active');
                            }
                        }
                    )
                </script>-->


            <hr>

        </div>

        <div class="b-example-divider"></div>
        <div class="tab-content col-lg m" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <div class="card-body bg-white">
                    <div class="ms-sm-auto overflow-auto">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <tr>
                                    <core:forEach items="${table}" var="column">
                                        <th>${column}</th>
                                    </core:forEach>
                                </tr>
                                <core:forEach items="${result}" var="string">
                                    <tr>
                                        <td>${string.key}</td>
                                        <core:forEach items="${string.value}" var="values">
                                            <td>${values}</td>
                                        </core:forEach>
                                    </tr>
                                </core:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">...
            </div>
            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                ...
            </div>
            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                ...
            </div>
        </div>
    </div>

    <%--    <div class="row m-auto">--%>
    <%--            <div id="sidebarMenu"--%>
    <%--                 class="col-2 d-md-block d-flex mt-lg-auto flex-column x-shrink-0 text-dark bg-light">--%>
    <%--                <ul class="nav nav-pils flex-column mb-auto">--%>
    <%--                    <li>--%>
    <%--                        <a class="nav-link link-dark"--%>
    <%--                           href="${pageContext.request.contextPath}/reports">Общий отчет</a>--%>
    <%--                    </li>--%>

    <%--                </ul>--%>
    <%--                <hr>--%>
    <%--            </div>--%>
    <%--            <div class="col-10 overflow-auto bg-light">--%>
    <%--                <div class="table-responsive">--%>
    <%--                    ${report}--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
</div>


<jsp:include page="../template/_footer.jsp"/>
</body>
</html>

