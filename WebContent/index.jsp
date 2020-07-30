<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styleforindex.css">
</head>
<body>

<form action="myurl" method="post">
    <h1 title="Форма регистрации на сайте">Регистрация</h1>
    <input type="hidden" name="command" value="forward" />
    <div class="group">
      <label for="">Enter name:</label> 
      
      <input type="text" placeholder="Ваше имя?" name="name" value="" required autofocus> 
    </div>
   <div class="group">
      <label for="">Enter surname:</label>       
      <input type="text" placeholder="Ваша фамилия?" name="surname" value="" required> 
    </div>
    <div class="group">
      <label for="">Enter patronymic:</label>        
      <input type="text" placeholder="Ваше отчество?" name="patronymic" value="" required> 
    </div>
    <div class="group">
      <label for="">Enter year birthday:</label>       
      <input type="text" placeholder="Ваш год рождения" name="yearBirthday" value="" required> 
    </div>
    <div class="group">
      <label for="">Enter e-mail:</label>       
      <input type="email" placeholder="Ваш e-mail?" name="e-mail" value="" required> 
    </div>
    <div class="group">
      <label for="">Enter phone number: </label>      
      <input type="tel" placeholder="Ваш телефон?" name="tel" value="" required> 
    </div>
    <div class="group">
			<center><button>Регистрация</button></center>
		</div>
  </form>
  
</body>
</html>