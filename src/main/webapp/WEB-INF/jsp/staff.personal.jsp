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
                       href="${pageContext.request.contextPath}/staff/personal?id=${staffProfile.id}">Информация</a>
                </li>
                <li class="nav-item">
                    <a id="documentsLink" class="nav-link"
                       href="${pageContext.request.contextPath}/staff/documents?id=${staffProfile.id}">Документы</a>
                </li>
                <li class="nav-item">
                    <a id="educationLink" class="nav-link"
                       href="${pageContext.request.contextPath}/staff/education?id=${staffProfile.id}">Образование</a>
                </li>
                <li class="nav-item">
                    <a id="militaryLink" class="nav-link"
                       href="${pageContext.request.contextPath}/staff/military?id=${staffProfile.id}">Служба
                        в армии</a>
                </li>
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
                                       value="${staffProfile.id}">
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
                            <label for="middleName">Отчество</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="middleName" type="text" name="middleName"
                                       value="${staffProfile.middleName}">
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="dateOfBirth">Дата рождения</label>
                            <div class="input-group">
                                <input class="form-control"
                                       id="dateOfBirth" type="date" name="dateOfBirth"
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
                                   id="serviceStartDate" type="date" name="serviceStartDate"
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
                                   id="rankAssigmentDate" type="date" name="rankAssigmentDate"
                                   value="${staffProfile.rankAssigmentDate}">
                        </div>
                    </div>
                    <div class="row m-3">
                        <div class="col-md-3">
                            <label for="department">Подразделение</label>
                            <div class="input-group">
                                <select class="form-control custom-select d-block "
                                        id="department"
                                        name="department" disabled>
                                    <option value="${staffProfile.department.code}">${staffProfile.department.shortName}</option>
                                    <core:forEach items="${department}" var="department">
                                        <option value="${department.code}">${department.shortName}</option>
                                    </core:forEach>
                                </select>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#departmentModal">
                                    Выбрать
                                </button>
                            </div>

                        </div>
                        <div class="modal fade" id="departmentModal" tabindex="-1"
                             aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Выберете подразделение</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <div>
                                            <label for="departmentSelectRoot">Подразделение</label>
                                            <select class="form-control custom-select d-block w-100"
                                                    id="departmentSelectRoot"
                                                    name="departmentSelectRoot">
                                                <option value=""></option>
                                                <core:forEach items="${departmentRoot}" var="department">
                                                    <option value="${department.code}">${department.shortName}</option>
                                                </core:forEach>
                                            </select>
                                        </div>
                                        <div id="departmentDivSecond" hidden>
                                            <label for="departmentSelectSecond"></label>
                                            <select class="form-control custom-select d-block w-100"
                                                    id="departmentSelectSecond"
                                                    name="departmentSelectSecond">
                                                <option value=""></option>
                                                <core:forEach items="${department}" var="department">
                                                    <option class="subselect depCode-${department.parentCode} departmentOptionSecond"
                                                            value="${department.code}"
                                                            hidden>${department.shortName}</option>
                                                </core:forEach>
                                            </select>
                                        </div>
                                        <div id="departmentDivThird" hidden>
                                            <label for="departmentSelectThird"></label>
                                            <select class="form-control custom-select d-block w-100"
                                                    id="departmentSelectThird"
                                                    name="departmentSelectThird">
                                                <option value=""></option>
                                                <core:forEach items="${department}" var="department">
                                                    <option class="subselect depCode-${department.parentCode} departmentOptionThird"
                                                            value="${department.code}"
                                                            hidden>${department.shortName}</option>
                                                </core:forEach>
                                            </select>
                                        </div>
                                        <div id="departmentDivFour" hidden>
                                            <label for="departmentSelectFour"></label>
                                            <select class="form-control custom-select d-block w-100"
                                                    id="departmentSelectFour"
                                                    name="departmentSelectFour">
                                                <option value=""></option>
                                                <core:forEach items="${department}" var="department">
                                                    <option class="subselect depCode-${department.parentCode} departmentOptionFour"
                                                            value="${department.code}"
                                                            hidden>${department.shortName}</option>
                                                </core:forEach>
                                            </select>
                                        </div>
                                        <div id="departmentDivFifth" hidden>
                                            <label for="departmentSelectFifth"> </label>
                                            <select class="form-control custom-select d-block w-100"
                                                    id="departmentSelectFifth"
                                                    name="departmentSelectFifth">
                                                <option value=""></option>
                                                <core:forEach items="${department}" var="department">
                                                    <option class="subselect depCode-${department.parentCode} departmentOptionFifth"
                                                            value="${department.code}"
                                                            hidden>${department.shortName}</option>
                                                </core:forEach>
                                            </select>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                            Закрыть
                                        </button>
                                        <button id="modalSave" type="button" class="btn btn-primary">Сохранить</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="position">Должность</label>
                            <select class="form-control custom-select d-block w-100"
                                    id="position"
                                    name="position">
                                <option value="${staffProfile.position.code}">${staffProfile.position.title}</option>
                                <core:forEach items="${position}" var="position">
                                    <option value="${position.code}">${position.title}</option>
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
                                   id="dismissalDate" type="date" name="dismissalDate"
                                   value="${staffProfile.dismissalDate}">
                        </div>
                    </div>


                    <div class="row m-3">
                        <div class="col-auto btn-group-sm">
                            <input class="btn btn-primary" type="submit" value="Сохранить"
                                   formaction="${pageContext.request.contextPath}/staff/personal/add"/>
                            <input class="btn btn-primary" type="button"
                                   onclick="location.href='${pageContext.request.contextPath}/staff/personal/'"
                                   value="Очистить"/>
                            <input class="btn btn-primary" type="button"
                                   onclick="location.href='${pageContext.request.contextPath}/dashboard'"
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
    document.getElementById('departmentDivSecond').hidden = false;
    document.getElementById('departmentDivThird').hidden = false;
    document.getElementById('departmentDivFour').hidden = false;
    document.getElementById('departmentDivFifth').hidden = false;

    document.getElementById('departmentSelectRoot').onclick = function () {
        const root = document.getElementById('departmentSelectRoot').value;

        if (Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionSecond')).length > 0) {
            document.getElementById('departmentDivSecond').hidden = false;
            Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionSecond')).forEach((depOption) =>
                depOption.hidden = false);
        }
    }
    document.getElementById('departmentSelectSecond').onclick = function () {
        const root = document.getElementById('departmentSelectSecond').value;

        if (Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionThird')).length > 0) {
            document.getElementById('departmentDivThird').hidden = false;
            Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionThird')).forEach((depOption) =>
                depOption.hidden = false);
        }
    }
    document.getElementById('departmentSelectThird').onclick = function () {
        const root = document.getElementById('departmentSelectThird').value;

        if (Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionFour')).length > 0) {
            document.getElementById('departmentDivFour').hidden = false;
            Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionFour')).forEach((depOption) =>
                depOption.hidden = false);
        }
    }
    document.getElementById('departmentSelectFour').onclick = function () {
        const root = document.getElementById('departmentSelectFour').value;

        if (Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionFifth')).length > 0) {
            document.getElementById('departmentDivFifth').hidden = false;
            Array.from(document.getElementsByClassName('depCode-' + root + ' departmentOptionFifth')).forEach((depOption) =>
                depOption.hidden = false);
        }
    }
    document.getElementById('modalSave').onclick = function () {
        document.getElementById('department').value = document.getElementById('departmentSelectFour').selectedOptions[0].value;    }


</script>
<jsp:include page="../template/_footer.jsp"/>
</body>
</html>
