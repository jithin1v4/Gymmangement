<html>
<head>
    <title>Gympact - Admin</title>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

</head>
<style>
*{
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

body{
  background-color: #E8EDF2; 
  font-family: 'Ubuntu', sans-serif;
}

div.container{
  position: absolute;
  top: 50%;
  left: 70%;
  transform: translate(-50%,-50%);
  border-radius: 10px;
  display: flex;
  flex-direction: row;
  align-items: center;

  background-color: white;
  padding: 30px;
  box-shadow: 0 50px 50px -50px darkslategray;
}

div.container div.myform{
  width: 270px;
  margin-right: 30px;
}

div.container div.myform h2{
  color: #1c1c1e;
  margin-bottom: 20px;
}

div.container div.myform input{
  border: none;
  outline: none;
  border-radius: 0;
  width: 100%;
  border-bottom: 2px solid #1c1c1e;
  margin-bottom: 25px;
  padding: 7px 0;
  font-size: 14px;
  font-family: 'Ubuntu', sans-serif;
}
div.container div.myform button{
  color: white;
  background-color: #1c1c1e;
  border: none;
  outline: none;
  border-radius: 2px;
  font-size: 14px;
  padding: 5px 12px;
  font-weight: 500;
  font-family: 'Ubuntu', sans-serif;
}
div.container div.image img{
  width: 300px;
}
</style>
<body>
    <div class="container">
        <div class="myform">
          <form action="http://localhost:10649/Gym/alogin" method="post">
            <h2>Admin Login</h2>
            <input type="text" name="uname"placeholder="Admin Name">
            <input type="password" name="password" placeholder="Password">
            <button type="submit">Log in</button>
          </form>
        </div>
        <div class="image">
          <img src="alog.jpg">
        </div>
      </div>
    
</body>

</html>