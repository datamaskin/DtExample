<%--
  Created by IntelliJ IDEA.
  User: datamaskinaggie
  Date: 3/15/17
  Time: 3:30 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <asset:javascript src="jquery.js" />
    <asset:javascript src="grails-datatables.js" />
    %{--<asset:javascript src="jquery.dataTables.js"/>--}%
</head>

<body>
<dt:datatable  name="dtexamples" serverDataLoad="true" controller="dtexample.DtController" dataAction="index">
    <dt:column name="firstName" />
    <dt:column name="lastName" />
    <dt:column name="email" />
</dt:datatable>
<asset:deferredScripts/>
</body>
</html>