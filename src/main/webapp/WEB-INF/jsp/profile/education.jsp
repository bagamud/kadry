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
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a id="personalLink" class="nav-link" aria-current="page"
                       href="${pageContext.request.contextPath}/profile/personal?id=${staffProfile.id}">Информация</a>
                </li>
                <li class="nav-item">
                    <a id="documentsLink" class="nav-link"
                       href="${pageContext.request.contextPath}/profile/documents?id=${staffProfile.id}">Документы</a>
                </li>
                <li class="nav-item">
                    <a id="educationLink" class="nav-link active"
                       href="${pageContext.request.contextPath}/profile/education?id=${staffProfile.id}">Образование</a>
                </li>
                <li class="nav-item">
                    <a id="militaryLink" class="nav-link"
                       href="${pageContext.request.contextPath}/profile/military?id=${staffProfile.id}">Служба
                        в армии</a>
                </li>
            </ul>
            <div class="card">
                <form class="needs-validation" action="${pageContext.request.contextPath}/profile/education" method="post"
                      name="form"
                      id="formId">
                    <div class="row m-3">
                        <div class="col-md-2 mb-3" hidden>
                            <label for="id">#</label>
                            <div class="input-group">
                                <input class="form-control"
                                       readonly
                                       min="0"
                                       id="id" type="number" name="id"
                                       value="${staffProfile.id}">
                            </div>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="username">Логин СУДИС</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="username" type="text" name="username"
                                       value="${staffProfile.serviceInfo.username}">
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
                        <div class="col-md-3 mb-3">
                            <label for="rank">Звание</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="rank"
                                    name="rank">
                                <option value="${userProfile.rank.id}">${userProfile.rank.title}</option>
                                <core:forEach items="${rank}" var="rank">
                                    <option value="${rank.id}">${rank.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="post">Должность</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="post"
                                    name="post">
                                <option value="${userProfile.post.id}">${userProfile.post.title}</option>
                                <core:forEach items="${post}" var="post">
                                    <option value="${post.id}">${post.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="department">Подразделение</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="department"
                                    name="department">
                                <option value="${userProfile.department.code}">${userProfile.department.shortTitle}</option>
                                <core:forEach items="${departments}" var="department">
                                    <option value="${department.code}">${department.shortTitle}</option>
                                </core:forEach>
                            </select>
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
                        <div class="col-md-6 mb-3">
                            <label for="email">Почта</label>
                            <input class="form-control"
                                   id="email" type="email" name="email"
                                   value="${userProfile.email}">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="contacts">Контакты</label>
                            <input class="form-control"
                                   id="contacts" type="text" name="contacts"
                                   value="${userProfile.contacts}">
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
                        <div class="col-md-2 mb-3">
                            <label for="temporaryPasswd">Временный</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="temporaryPasswd"
                                    name="temporaryPasswd">
                                <option value="${userProfile.temporaryPasswd}">${userProfile.temporaryPasswd}</option>
                                <option value="true">true</option>
                                <option value="false">false</option>
                            </select>
                        </div>

                        <div class="col-md-2 mb-3">
                            <label for="role">Роль</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="role"
                                    name="role">
                                <option value="${userProfile.role.id}">${userProfile.role.name}</option>
                                <core:forEach items="${roles}" var="role">
                                    <option value="${role.id}">${role.name}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="active">Активность</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="active"
                                    name="active">
                                <option value="${userProfile.active}">${userProfile.active}</option>
                                <option value="true">true</option>
                                <option value="false">false</option>
                            </select>
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
