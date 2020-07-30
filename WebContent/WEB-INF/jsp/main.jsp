<%@ page language="java" import="by.htp.les02.entity.User" import="by.htp.les02.entity.Registration" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styleformain.css">
</head>
<body>
    
     <br />
     <!--  
         Registration registrationX = (Registration) request.getAttribute("registrationInfo");
         if (registrationX == null){
        	 registrationX = new Registration();
         }
         out.println(registrationX.getName());
         out.println(registrationX.getSurname());
         out.println(registrationX.getPatronymic());
         out.println(registrationX.getYearBirthday());
         out.println(registrationX.getMail());
         out.println(registrationX.getPhoneNumber());
         
        -->
      <br />
      <jsp:useBean id="registrationInfo" class="by.htp.les02.entity.Registration" scope="request" />
      <h1>Регистрация успешно завершена</h1>
  <table> 
      <tr>
      <th>Имя</th>
      <th>Фимилия</th>
      <th>Отчество</th>
      <th>Год рождения</th>
      <th>Почта</th>
      <th>Номер телефона</th>
      </tr>   
      <tr>
      <td><jsp:getProperty property="name" name = "registrationInfo" /></td>     
      <td><jsp:getProperty property="surname" name = "registrationInfo" /></td>      
      <td><jsp:getProperty property="patronymic" name = "registrationInfo" /></td>      
      <td><jsp:getProperty property="yearBirthday" name = "registrationInfo" /></td>      
      <td><jsp:getProperty property="mail" name = "registrationInfo" /></td>      
      <td><jsp:getProperty property="phoneNumber" name = "registrationInfo" /></td>
    </tr>
    </table>    
     

</body>
</html>