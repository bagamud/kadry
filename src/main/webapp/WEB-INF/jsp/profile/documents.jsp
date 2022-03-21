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
            <div class="d-grid justify-content-md-end">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
                    Добавить документ
                </button>
            </div>

            <div class="card">
                <div class="row m-3">
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
                                                <label for="staffId">#</label>
                                                <div class="input-group">
                                                    <input class="form-control"
                                                           readonly
                                                           min="0"
                                                           id="staffId" type="number" name="staffId"
                                                           value="${staffProfile.staffId}">
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
                                                <label for="depCode">Кем выдан</label>
                                                <input class="form-control custom-select d-block w-100"
                                                       id="depCode"
                                                       name="depCode" value="${documentCard.depCode}">
                                            </div>
                                            <div class="col-md-1 mb-3">
                                                <label class="" for="active">Действует</label>
                                                <input type="text"
                                                       class="form-control"
                                                       id="active"
                                                       name="active" value="${documentCard.active}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input class="btn btn-secondary" type="button"
                                               data-bs-dismiss="modal"
                                               value="Закрыть"/>
                                        <input class="btn btn-primary" type="submit" value="Сохранить"
                                               formaction="${pageContext.request.contextPath}/profile/documents/add"/>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <table class="table table-hover">
                        <core:forEach items="${documentsList}" var="document">
                            <tr data-bs-toggle="modal" data-bs-target="#Modal${document.id}">
                                <td>${document.documentType.name}</td>
                                <td>Серия ${document.docSerialCode} № ${document.docNumber}</td>
                                <td>Выдан: ${document.issueDate},
                                        ${document.depCode}</td>
                                <td>Действителен до: ${document.expirationDate}</td>
                            </tr>
                            <div class="modal fade" id="Modal${document.id}" tabindex="-1"
                                 aria-labelledby="ModalLabel${document.id}"
                                 aria-hidden="true">
                                <div class="modal-dialog modal-xl">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="ModalLabel${document.id}">Документ</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                        </div>
                                        <form class="needs-validation"
                                              action="${pageContext.request.contextPath}/profile/documents"
                                              method="post"
                                              name="form">
                                            <div class="modal-body">
                                                <div class="row m-3">
                                                    <div class="col-md-2 mb-3" hidden>
                                                        <label for="staffId${document.id}"></label>
                                                        <input class="form-control"
                                                               id="staffId${document.id}" type="number" name="staffId"
                                                               value="${staffProfile.staffId}">
                                                    </div>
                                                    <div class="col-md-2 mb-3" hidden>
                                                        <label for="id${document.id}"></label>
                                                        <input class="form-control"
                                                               id="id${document.id}" type="number" name="id"
                                                               value="${document.id}">
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="documentType${document.id}">Вид документа</label>
                                                        <select class="form-control custom-select d-block w-100"
                                                                id="documentType${document.id}"
                                                                name="documentType">
                                                            <option value="${document.documentType.id}">${document.documentType.name}</option>
                                                            <core:forEach items="${documentType}" var="docType">
                                                                <option value="${docType.id}">${docType.name}</option>
                                                            </core:forEach>
                                                        </select>
                                                    </div>

                                                    <div class="col-md-2 mb-3">
                                                        <label for="docSerialCode${document.id}">Серия</label>
                                                        <input class="form-control"
                                                               id="docSerialCode${document.id}" type="text"
                                                               name="docSerialCode"
                                                               value="${document.docSerialCode}">
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="docNumber${document.id}">Номер</label>
                                                        <input class="form-control"
                                                               id="docNumber${document.id}" type="text" name="docNumber"
                                                               value="${document.docNumber}">
                                                    </div>

                                                    <div class="col-md-2 mb-3">
                                                        <label for="issueDate${document.id}">Дата выдачи</label>
                                                        <input class="form-control"
                                                               id="issueDate${document.id}" type="date" name="issueDate"
                                                               value="${document.issueDate}">
                                                    </div>
                                                    <div class="col-md-2 mb-3">
                                                        <label for="expirationDate${document.id}">Действителен
                                                            до</label>
                                                        <input class="form-control"
                                                               id="expirationDate${document.id}" type="date"
                                                               name="expirationDate"
                                                               value="${document.expirationDate}">
                                                    </div>
                                                </div>
                                                <div class="row m-3">
                                                    <div class="col-md-11 mb-3">
                                                        <label for="depCode${document.id}">Кем выдан</label>
                                                        <input class="form-control custom-select d-block w-100"
                                                               id="depCode${document.id}"
                                                               name="depCode" value="${document.depCode}">
                                                    </div>
                                                    <div class="col-md-1 mb-3">
                                                        <label class="form-label" for="active${document.id}">Действует</label>
                                                        <input type="text"
                                                               class="form-control"
                                                               id="active${document.id}"
                                                               name="active" value="${document.active}">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <input class="btn btn-secondary" type="button"
                                                       data-bs-dismiss="modal"
                                                       value="Закрыть"/>
                                                <input class="btn btn-primary" type="submit" value="Сохранить"
                                                       formaction="${pageContext.request.contextPath}/profile/documents/add"/>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </core:forEach>
                    </table>
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
