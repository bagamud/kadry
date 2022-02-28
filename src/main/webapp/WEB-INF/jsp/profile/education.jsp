<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <jsp:include page="../../template/_metaStyle.jsp"/>
    <title>Профиль пользователя</title>
</head>
<body style="background-color: rgba(205,219,245,0.39)">
<jsp:include page="../../template/_menu.jsp"/>
<main>
    <div class="text-center h2">
        Профиль сотрудника
    </div>
    <div class="row m-auto col-10">
        <div class="card m-auto d-flex flex-column m-3 p-3">
            <jsp:include page="../../template/_profileMenu.jsp"/>
            <div class="card">
                <form class="needs-validation" action="${pageContext.request.contextPath}/profile/education" method="post"
                      name="form"
                      id="formId">
                    <div class="row m-3">
                        <div class="col-md-2 mb-3" hidden>
                            <label for="staffId">#</label>
                            <div class="input-group">
                                <input class="form-control" readonly min="0"
                                       id="staffId" type="number" name="staffId"
                                       value="${staffProfile.staffId}">
                            </div>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="lastName">Фамилия</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="lastName" type="text" name="lastName"
                                       value="${staffProfile.lastName}">
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="firstName">Имя</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="firstName" type="text" name="firstName"
                                       value="${staffProfile.firstName}">
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="surname">Отчество</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="surname" type="text" name="surname"
                                       value="${staffProfile.middleName}">
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-3 mb-3">
                            <label for="gender">Звание</label>
                            <input class="form-control custom-select d-block w-100"
                                   id="gender"
                                   name="gender" value="${staffProfile.gender}">
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-3 mb-3">
                            <label for="SNILS">СНИЛС</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="SNILS" type="text" name="SNILS"
                                       value="${staffProfile.SNILS}">
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-6 mb-3">
                            <label for="passwd">Задать пароль</label>
                            <div class="input-group">
                                <input class="form-control" type="text"
                                       id="passwd"
                                       name="passwd"/>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button"
                                            onclick="generatePassword()" formnovalidate>Cгенерировать
                                    </button>
                                </div>
                            </div>
                        </div>


                        <%--                <div class="col-md-4 mb-3">--%>
                        <%--                    <label for="active">Активность</label>--%>
                        <%--                    <select class="form-control custom-select d-block w-100"--%>
                        <%--                            id="active"--%>
                        <%--                            name="active">--%>
                        <%--                        <option value="${user.active.id}">${user.active.title}</option>--%>
                        <%--                        <core:forEach items="${active}" var="active">--%>
                        <%--                            <option value="${active.id}">${active.title}</option>--%>
                        <%--                        </core:forEach>--%>
                        <%--                    </select>--%>
                        <%--                </div>--%>
                    </div>
                    <div class="row m-3">
                        <div class="col-auto btn-group-sm">
                            <input class="btn btn-primary" type="submit" value="Сохранить"
                                   formaction="${pageContext.request.contextPath}/users/save"/>
                            <input class="btn btn-primary" type="button"
                                   onclick="location.href='${pageContext.request.contextPath}/users/profile'"
                                   value="Очистить"/>
                            <input class="btn btn-primary" type="button"
                                   onclick="location.href='${pageContext.request.contextPath}/users'"
                                   value="Назад"/>
                        </div>
                        <div class="col-auto form-check form-switch">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input" name="notification">Отправить
                                уведомление пользователю
                            </label>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</main>

<script>
    if ('${resultMessage}' !== '') {
        alert('${resultMessage}');
    }
</script>
<jsp:include page="../../template/_footer.jsp"/>
</body>
</html>
