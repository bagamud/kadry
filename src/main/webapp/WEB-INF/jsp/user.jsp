<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <jsp:include page="../template/_metaStyle.jsp"/>
    <title>Профиль пользователя</title>
</head>
<body style="background-color: rgba(205,219,245,0.39)">
<jsp:include page="../template/_menu.jsp"/>
<main>
    <div class="text-center h2">
        Профиль пользователя
    </div>
    <div class="row m-auto col-10">
        <div class="card m-auto col-md-9 d-flex flex-column m-3 p-3">
            <table class="table">
                <tr>
                    <td>Имя пользователя</td>
                    <td>${user.username}</td>
                </tr>
                <tr>
                    <td>Фамилия</td>
                    <td>${user.lastName}</td>
                </tr>
                <tr>
                    <td>Имя</td>
                    <td>${user.firstName}</td>
                </tr>
                <tr>
                    <td>Отчество</td>
                    <td>${user.middleName}</td>
                </tr>
                <tr>
                    <td>Звание</td>
                    <td>${user.rank.title}</td>
                </tr>
                <tr>
                    <td>Должность</td>
                    <td>${user.position.title}</td>
                </tr>
                <tr>
                    <td>Подразделение</td>
                    <td>${user.department.shortName}</td>
                </tr>
                <tr>
                    <td>Почта</td>
                    <td>${user.email}</td>
                </tr>
                <tr>
                    <td>Контакты</td>
                    <td>${user.contacts}</td>
                </tr>
            </table>
            <div class="row">
                <div class="col-auto">
                    <input class="btn btn-primary" type="button"
                           onclick="location.href='${pageContext.request.contextPath}/dashboard'"
                           value="На главную"/>
                </div>
            </div>
        </div>
        <div class="card col-3">
            <form action="${pageContext.request.contextPath}/user/changePsw" method="post">
                <div hidden>
                    <input class="form-control"
                           readonly
                           id="id" type="number" name="id"
                           value="${user.id}">
                </div>
                <div class="h3 text-center"><p>Смена пароля</p></div>
                <div class="row m-3">
                    <div>
                        <div class="row">
                            <label for="oldPasswd">Старый пароль</label>
                            <input class="form-control" type="password"
                                   id="oldPasswd"
                                   name="oldPasswd"/>
                        </div>
                        <div class="row">
                            <label for="newPasswd">Новый пароль</label>
                            <input class="form-control" type="password"
                                   id="newPasswd"
                                   name="newPasswd"/>
                        </div>
                        <div class="row">
                            <label for="retryPasswd">Подтверждение нового пароля</label>
                            <input class="form-control" type="password"
                                   id="retryPasswd"
                                   name="retryPasswd"/>
                        </div>
                        <div class="row m-3">
                            <input class="btn btn-primary" type="submit" value="Сменить"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</main>

<script>
    if ('${resultMessage}' !== '') {
        alert('${resultMessage}');
    }
</script>
<jsp:include page="../template/_footer.jsp"/>
</body>
</html>
