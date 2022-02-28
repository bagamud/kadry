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
                    <a id="documentsLink" class="nav-link active"
                       href="${pageContext.request.contextPath}/profile/documents?id=${staffProfile.id}">Документы</a>
                </li>
                <li class="nav-item">
                    <a id="educationLink" class="nav-link"
                       href="${pageContext.request.contextPath}/profile/education?id=${staffProfile.id}">Образование</a>
                </li>
                <li class="nav-item">
                    <a id="militaryLink" class="nav-link"
                       href="${pageContext.request.contextPath}/profile/military?id=${staffProfile.id}">Служба
                        в армии</a>
                </li>
            </ul>
            <div class="card">
                <div class="row m-3">
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                        Добавить документ
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="addModalLabel">Документ</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <form class="needs-validation"
                                      action="${pageContext.request.contextPath}/profile/documents"
                                      method="post"
                                      name="form"
                                      id="formId">
                                    <div class="modal-body">
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
                                                <label for="documentType">Вид документа</label>
                                                <select class="form-control custom-select d-block w-100"
                                                        id="documentType"
                                                        name="documentType">
                                                    <option value="${documentCard.documentType.id}">${documentCard.documentType.name}</option>
                                                    <core:forEach items="${documentType}" var="docType">
                                                        <option value="${docType.id}">${docType.name}</option>
                                                    </core:forEach>
                                                </select>
                                            </div>

                                            <div class="col-md-2 mb-3">
                                                <label for="docSerialCode">Серия</label>
                                                <input class="form-control"
                                                       id="docSerialCode" type="text" name="docSerialCode"
                                                       value="${documentCard.docSerialCode}">
                                            </div>
                                            <div class="col-md-3 mb-3">
                                                <label for="docNumber">Номер</label>
                                                <input class="form-control"
                                                       id="docNumber" type="text" name="docNumber"
                                                       value="${documentCard.docNumber}">
                                            </div>

                                            <div class="col-md-2 mb-3">
                                                <label for="issueDate">Дата выдачи</label>
                                                <input class="form-control"
                                                       id="issueDate" type="date" name="issueDate"
                                                       value="${documentCard.issueDate}">
                                            </div>
                                            <div class="col-md-2 mb-3">
                                                <label for="expirationDate">Действителен до</label>
                                                <input class="form-control"
                                                       id="expirationDate" type="date" name="expirationDate"
                                                       value="${documentCard.expirationDate}">
                                            </div>
                                        </div>
                                        <div class="row m-3">
                                            <div class="col-md-11 mb-3">
                                                <label for="temporaryPasswd">Кем выдан</label>
                                                <input class="form-control custom-select d-block w-100"
                                                       id="temporaryPasswd"
                                                       name="temporaryPasswd" value="${documentCard.depCode}">
                                            </div>
                                            <div class="col-md-1 mb-3">
                                                <div class="btn-group-lg">
                                                    <label class="form-check-label" for="active">Действует</label>
                                                    <input type="checkbox"
                                                           class="form-check-input btn-lg btn-outline-primary"
                                                           id="active"
                                                           name="active">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input class="btn btn-secondary" type="button"
                                               data-bs-dismiss="modal"
                                               value="Закрыть"/>
                                        <input class="btn btn-primary" type="submit" value="Сохранить"
                                               formaction="${pageContext.request.contextPath}/staff/documents/add"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
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
