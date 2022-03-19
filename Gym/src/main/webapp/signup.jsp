<html>
<head>  <title> Gympact - Create account</title>
<link rel="stylesheet" href="https://unpkg.com/alert/dist/sweetalert.css">
</head>
<style>

    @import url('httpss://fonts.googleapis.com/css?family=Roboto');

body {
        background:linear-gradient(to right, #78a7ba 0%, #385D6C 50%, #78a7ba 99%);
        }

.signup-form {
                font-family: "Roboto", sans-serif;
                width:650px;
                margin:30px auto;
                background:linear-gradient(to right, #ffffff 0%, #fafafa 50%, #ffffff 99%);
                border-radius: 10px;
                }

.form-header  {
                background-color: #EFF0F1;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                }

.form-header h1 {
                    font-size: 30px;
                    text-align:center;
                    color:#666;
                    padding:20px 0;
                    border-bottom:1px solid #cccccc;
                    }
.form-body {
            padding:10px 40px;
            color:#666;
            }

.form-group{
            margin-bottom:20px;
            }

.form-body .label-title {
                            color:#1BBA93;
                            font-size: 17px;
                            font-weight: bold;
                            }

.form-body .form-input {
                            font-size: 17px;
                            box-sizing: border-box;
                            width: 100%;
                            height: 34px;
                            padding-left: 10px;
                            padding-right: 10px;
                            color: #333333;
                            text-align: left;
                            border: 1px solid #d6d6d6;
                            border-radius: 10px;
                            background: white;
                            outline: none;
                        }



.horizontal-group .left{
                            float:left;
                            width:49%;
                            }

.horizontal-group .right{
                            float:right;
                            width:49%;
                            }

input[type="file"] {
                    outline: none;
                    cursor:pointer;
                    font-size: 17px;
                    }

#range-label {
                width:15%;
                padding:5px;
                background-color: #1BBA93;
                color:white;
                border-radius: 5px;
                font-size: 17px;
                position: relative;
                top:-8px;
                }


::-webkit-input-placeholder {
                                color:#d9d9d9;
                            }

/* Form Footer */
/*---------------------------------------*/
.form-footer {
                clear:both;
            }

.signup-form .form-footer  {
                            background-color: #EFF0F1;
                            border-bottom-left-radius: 10px;
                            border-bottom-right-radius: 10px;
                            padding:10px 40px;
                            text-align: right;
                            border-top: 1px solid #cccccc;
                            }

.form-footer span {
                    float:left;
                    margin-top: 10px;
                    color:#999;  
                    font-style: italic;
                    font-weight: thin;
                }

.btn {
        display:inline-block;
        padding:10px 20px;
        background-color: #1BBA93;
        font-size:17px;
        border:none;
        border-radius:5px;
        color:#bcf5e7;
        cursor:pointer;
    }

.btn:hover {
                background-color: #169c7b;
                color:white;
            }

</style>
<body>
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    <br><br>
    <form class="signup-form" action="http://localhost:10649/Gym/Registers" method="post">

    <!-- form header -->
    <div class="form-header">
        <h1>Create Account</h1>
    </div>

    <!-- form body -->
    <div class="form-body">

        <!-- Firstname and Lastname -->
        <div class="horizontal-group">
            <div class="form-group left">
                <label for="firstname" class="label-title">First name *</label>
                <input name="name" type="text" id="firstname" class="form-input" placeholder="enter your first name" required="required" />
            </div>
            <div class="form-group right">
                <label for="lastname" class="label-title">Last name</label>
                <input name="lname" type="text" id="lastname" class="form-input" placeholder="enter your last name" />
            </div>
        </div>

        <div class="form-group">
            <label for="email" class="label-title">Email*</label>
            <input name="mailid" type="email" id="email" class="form-input" placeholder="enter your email" required="required">
        </div>
      
        <!-- Passwrod and confirm password -->
        <div class="horizontal-group">
            <div class="form-group left">
                <label for="password" class="label-title">Password *</label>
                <input name="password" type="password" id="password" class="form-input" placeholder="enter your password" required="required">
            </div>
            <div class="form-group right">
                <label for="confirm-password" class="label-title">Confirm Password *</label>
                <input type="password" class="form-input" id="confirm-password" placeholder="enter your password again" required="required">
            </div>
    
        <div class="horizontal-group">
            <div class="form-group left">
                <label class="label-title">Gender:</label>
                <div class="input-group">
                    <label for="male">
                    <input type="radio" name="gender" value="male" id="male"> Male</label>
                    <label for="female">
                    <input type="radio" name="gender" value="female" id="female"> Female</label>
                </div>
            </div>

        <div class="horizontal-group">              
            <div class="form-group right">
                  <label for="experience" class="label-title">Age</label>
                  <input name="age" type="number" min="18" max="80"  value="18" class="form-input">
            </div>       
        </div>        
        </div>
    
    <!-- form footer -->
        <div class="form-footer">
            <span>Already a user? <a href="login.jsp">Login</a></span>
            <button type="submit" class="btn">Create</button>
        </div>
    </div>
 
    </form>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script type="text/javascript">
	var status=document.getElementById("status").value;
	if(status=="succes")
		{
		swal("congrats","account created","succes");
		}
	
	</script>

</body>
</html>