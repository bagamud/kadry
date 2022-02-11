<%@ page contentType="text/html;charset=UTF-8" %>

<header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between mb-4 border-bottom"
        style="background-image: linear-gradient(to bottom, #0d6efd 0%, #0f499b 100%); font-size: 20px">
    <a href="" class="align-items-center text-center col-lg-2 m-1 text-decoration-none">
        <img alt="Russian Federation"
             height="45"
             src="${pageContext.request.contextPath}/img/gerb_mvdi-300x174.png"
             class="m-1"
             width="78"/>
    </a>

    <ul class="nav me-lg-auto mb-2 justify-content-center ">
        <li>
            <a class="nav-link px-2 text-white" href="${pageContext.request.contextPath}/dashboard">Подразделения и сотрудники</a>
        </li>
        <li>
            <a class="nav-link px-2 text-white" href="${pageContext.request.contextPath}/staff">Профиль</a>
        </li>
        <li>
            <a class="nav-link px-2 text-white" href="${pageContext.request.contextPath}/reports">Отчеты</a>
        </li>
    </ul>
    <a class="nav-link px-2 text-white" href="${pageContext.request.contextPath}/profile"
       id="principal">${user.lastName} ${user.firstName} ${user.middleName}</a>


    <div class="nav-item">
        <a class="nav-link px-3 text-white" href="${pageContext.request.contextPath}/logout">Выйти</a>
    </div>

</header>