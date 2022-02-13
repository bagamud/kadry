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
        Профиль сотрудника
    </div>
    <div class="row m-auto col-10">
        <div class="card m-auto d-flex flex-column m-3 p-3">
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a id="personalLink" class="nav-link active" aria-current="page"
                       href="${pageContext.request.contextPath}/staff/personal">Информация</a>
                </li>
                <li class="nav-item">
                    <a id="documentsLink" class="nav-link" href="${pageContext.request.contextPath}/staff/documents">Документы</a>
                </li>
                <li class="nav-item">
                    <a id="educationLink" class="nav-link" href="${pageContext.request.contextPath}/staff/education">Образование</a>
                </li>
                <li class="nav-item">
                    <a id="militaryLink" class="nav-link" href="${pageContext.request.contextPath}/staff/military">Служба
                        в армии</a>
                </li>
            </ul>
            </ul>
            <div class="card">
                <form class="needs-validation" action="${pageContext.request.contextPath}/staff" method="post"
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
                                       value="${staffProfile.card_id}">
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
                        <div class="col-md-3 mb-3">
                            <label for="dateOfBirth">Дата рождения</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="dateOfBirth" type="datetime-local" name="dateOfBirth"
                                       value="${staffProfile.dateOfBirth}">
                            </div>
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-2 mb-3">
                            <label for="gender">Пол</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="gender"
                                    name="gender">
                                <option value="${staffProfile.gender.id}">${staffProfile.gender.name}</option>
                                <core:forEach items="${gender}" var="gender">
                                    <option value="${gender.id}">${gender.name}</option>
                                </core:forEach>
                            </select>
                        </div>

                        <div class="col-md-5 mb-3">
                            <label for="placeOfBirth">Место рождения</label>
                            <input class="form-control"
                                   id="placeOfBirth" type="text" name="placeOfBirth"
                                   value="${staffProfile.placeOfBirth}">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="citizenship">Гражданство</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="citizenship"
                                    name="citizenship">
                                <option value="${staffProfile.citizenship.id}">${staffProfile.citizenship.title}</option>
                                <core:forEach items="${citizenship}" var="citizenship">
                                    <option value="${citizenship.id}">${citizenship.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-2 mb-3">
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
                            <label for="placeOfRegistration">Место регистрации</label>
                            <input class="form-control"
                                   id="placeOfRegistration" type="text" name="placeOfRegistration"
                                   value="${staffProfile.placeOfRegistration}">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="placeOfResidence">Место жительства</label>
                            <input class="form-control"
                                   id="placeOfResidence" type="text" name="placeOfResidence"
                                   value="${staffProfile.placeOfResidence}">
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-2 mb-3">
                            <label for="username">Логин СУДИС</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="username" type="text" name="username"
                                       value="${staffProfile.username}">
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="personalNumberLetter">Личный номер</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="personalNumberLetter" type="text" name="personalNumberLetter"
                                       value="${staffProfile.personalNumberLetter}">
                                <input class="form-control"
                                       id="personalNumberDigits" type="text" name="personalNumberDigits"
                                       value="${staffProfile.personalNumberDigits}">
                            </div>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="serviceStartDate">Дата начала службы</label>
                            <input class="form-control"
                                   id="serviceStartDate" type="datetime-local" name="serviceStartDate"
                                   value="${staffProfile.serviceStartDate}">
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="rank">Звание</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="rank"
                                    name="rank">
                                <option value="${staffProfile.rank.id}">${staffProfile.rank.title}</option>
                                <core:forEach items="${rank}" var="rank">
                                    <option value="${rank.id}">${rank.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="rankAssigmentDate">Дата присвоения звания</label>
                            <input class="form-control"
                                   id="rankAssigmentDate" type="datetime-local" name="rankAssigmentDate"
                                   value="${staffProfile.rankAssigmentDate}">
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-3 mb-3">
                            <label for="post">Должность</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="post"
                                    name="post">
                                <option value="${staffProfile.position.code}">${staffProfile.position.title}</option>
                                <core:forEach items="${position}" var="post">
                                    <option value="${position.id}">${position.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="department">Подразделение</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="department"
                                    name="department">
                                <option value="${staffProfile.department.code}">${staffProfile.department.shortName}</option>
                                <core:forEach items="${departments}" var="department">
                                    <option value="${department.code}">${department.shortTitle}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-2 mb-3">
                            <label for="status">Статус службы</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="status"
                                    name="status">
                                <option value="${staffProfile.status.id}">${staffProfile.status.title}</option>
                                <core:forEach items="${status}" var="status">
                                    <option value="${status.id}">${status.title}</option>
                                </core:forEach>
                            </select>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="dismissalDate">Дата окончания службы</label>
                            <input class="form-control"
                                   id="dismissalDate" type="datetime-local" name="dismissalDate"
                                   value="${staffProfile.dismissalDate}">
                        </div>

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
<jsp:include page="../template/_footer.jsp"/>
</body>
</html>
