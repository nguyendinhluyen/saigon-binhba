<script type="text/javascript">
           
    (function() {
        var po = document.createElement('script');
        po.type = 'text/javascript';
        po.async = true;
        po.src = 'https://apis.google.com/js/client.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
     })();
     
    function googlelogin()
    {
        var myParams = {
            'clientid' : '1013527795357-j6ni5do1psd3pemq8khg9r6oams7fu9t.apps.googleusercontent.com', //Set client id
            'cookiepolicy' : 'single_host_origin',
            'callback' : 'signinCallback', //callback function
            'approvalprompt':'force',
            'scope' : 'https://www.googleapis.com/auth/plus.login https://www.googleapis.com/auth/plus.profile.emails.read'
        };
        gapi.auth.signIn(myParams);
    }
    function signinCallback(authResult)
    {
        if (authResult['status']['signed_in'])
        {
            // Update the app to reflect a signed in user
            // Hide the sign-in button now that the user is authorized, for example:
            gapi.client.load('plus','v1', function()
            {
                var request = gapi.client.plus.people.get(
                {
                    'userId': 'me'
                });
                request.execute(function(resp)
                {
                    var primaryEmail;
                    var nameUser;
                    var gender;
                    var birthday;
                    for (var i=0; i < resp.emails.length; i++)
                    {
                        if (resp.emails[i].type === 'account')
                            primaryEmail = resp.emails[i].value;
                    }
                    nameUser = resp.displayName;
                    gender = resp.gender;
                    birthday =  resp.birthday;
                    var getResult = function()
                    {
                        result = null;
                        $.ajax({
                            type: "POST",
                            url: "{linkS}home/modules/ajax/SessionAjaxGmail.php",
                            data: {name: nameUser, email: primaryEmail, gender: gender, birthday:birthday},
                            async : false,
                            success: function(msg)
                            {
                                result = msg;
                            }
                        });
                        return result;
                    };
                    var result = getResult();
                    
                    alert(result);
                    
                    if(result === "Đăng nhập thành công.")                        
                        window.location='thong-tin-tai-khoan';
                    else
                        window.location='dang-nhap';
                });
            });
        }
        else
        {
            // Update the app to reflect a signed out user
            // Possible error values:
            //   "user_signed_out" - User is signed-out
            //   "access_denied" - User denied access to your app
            //   "immediate_failed" - Could not automatically log in the user
            alert('Sign-in state: ' + authResult['error']); 
        }
    }
</script>

<script>        
    // This function is called when someone finishes with the Login
    // Button.  See the onlogin handler attached to it in the sample
    // code below.
    function checkLoginState()
    {                
        FB.login(function(response) 
        {
            if (response.authResponse) 
            {
                getUserInfo();
            } 
            else 
            {
                //user hit cancel button
                //alert("Đăng nhập thất bại. Vui lòng kiểm tra thông tin facebook!");
            }}, 
            { 
                scope: 'public_profile,email,user_birthday'
            }
        );        
    }

    window.fbAsyncInit = function()
    {
        FB.init({
            appId      : '1630518347190717',
            cookie     : true,  // enable cookies to allow the server to access the session
            xfbml      : true,  // parse social plugins on this page
            version    : 'v2.4' // use version 2.1
        });
        // Now that we've initialized the JavaScript SDK, we call
        // FB.getLoginStatus().  This function gets the state of the
        // person visiting this page and can return one of three states to
        // the callback you provide.  They can be:
        //
        // 1. Logged into your app ('connected')
        // 2. Logged into Facebook, but not your app ('not_authorized')
        // 3. Not logged into Facebook and can't tell if they are logged into
        //    your app or not.
        //
        // These three cases are handled in the callback function.
        //FB.getLoginStatus(function(response)
        //{
            //statusChangeCallback(response);
        //});
    };

    // Load the SDK asynchronously
    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    // Here we run a very simple test of the Graph API after login is
    // successful.  See statusChangeCallback() for when this call is made.
    function getUserInfo()
    {       
        var userName = null;
        
        var birthday = "";        
        
        FB.api('/me', function(response)
        {
            var getUserId = function()
            {
                userId = null;
                $.ajax({
                    type: "POST",
                    url: "{linkS}home/modules/ajax/SessionAjax.php",
                    data: {id:response.id, name: response.name, email: response.email, gender: response.gender,birthday: response.birthday},
                    async : false,
                    success: function(msg)
                    {
                        userId = msg;
                    }
                });
                return userId;             
            };
            
            var userId = getUserId();
            
            alert(userId);
            
            if(userId === "Đăng nhập thành công.")
                
                window.location='thong-tin-tai-khoan';
            else
                window.location='dang-nhap';                        
        });
    }
</script>

<script>
    function myFunctionLogin()
    {                        
        // User Login
        document.getElementById("username").required = true;
        
        if(document.getElementById("username").value === "")
        {
            document.getElementById('username').setCustomValidity('Vui lòng nhập địa chỉ email!');
        }
        else
        {
            if(document.getElementById("username").value.indexOf("@") < 1)
            {
                document.getElementById('username').setCustomValidity('Địa chỉ email không đúng!');
            }            
            else
            {
                document.getElementById('username').setCustomValidity('');
            }            
        }        
        
        // Password Login
        document.getElementById("passwd").required = true;
        
        if(document.getElementById("passwd").value === "")
        {
            document.getElementById('passwd').setCustomValidity('Vui lòng nhập mật khẩu!');
        }
        else
        {
            document.getElementById('passwd').setCustomValidity('');
        }           
        
        document.getElementById("usernameregistry").removeAttribute("required");        
        document.getElementById('usernameregistry').setCustomValidity('');        
        document.getElementById("passwordregistry").removeAttribute("required");        
        document.getElementById('passwordregistry').setCustomValidity('');        
        document.getElementById("passwordregistryagain").removeAttribute("required");        
        document.getElementById('passwordregistryagain').setCustomValidity('');
    }
    
    function functionOninputEmail()
    {
        document.getElementById('username').setCustomValidity('');
    }
    
    function myKeyDownEmail()
    {
        document.getElementById('username').setCustomValidity('');
    }
    
    function myKeyDownPassword()
    {
        document.getElementById('passwd').setCustomValidity('');
    }
    
    function functionOninputPassword()
    {
        document.getElementById('passwd').setCustomValidity('');
    }
            
    function myFunctionRegistry()
    {                                
        // Username Registry
        document.getElementById("usernameregistry").required = true;
        
        if(document.getElementById("usernameregistry").value === "")
        {
            document.getElementById('usernameregistry').setCustomValidity('Vui lòng nhập địa chỉ email!');
        }
        else
        {
            if(document.getElementById("usernameregistry").value.indexOf("@") < 1)
            {
                document.getElementById('usernameregistry').setCustomValidity('Địa chỉ email không đúng!');
            }
            else
            {
                document.getElementById('usernameregistry').setCustomValidity('');
            }
        }     
        
        // Password Registry
        document.getElementById("passwordregistry").required = true;
        
        if(document.getElementById("passwordregistry").value === "")
        {
            document.getElementById('passwordregistry').setCustomValidity('Vui lòng nhập mật khẩu!');
        }
        else
        {
            document.getElementById('passwordregistry').setCustomValidity('');
        }       
        
        // Password Registry Again
        document.getElementById("passwordregistryagain").required = true;
        
        if(document.getElementById("passwordregistryagain").value === "")
        {
            document.getElementById('passwordregistryagain').setCustomValidity('Vui lòng nhập mật khẩu!');
        }
        else
        {
            if(document.getElementById("passwordregistryagain").value !== document.getElementById("passwordregistry").value )
            {
                document.getElementById('passwordregistryagain').setCustomValidity('Mật khẩu nhập lại không trùng!');
            }
            else
            {
                document.getElementById('passwordregistryagain').setCustomValidity('');
            }                        
        }       
                                
        document.getElementById("username").removeAttribute("required");        
        document.getElementById('username').setCustomValidity('');        
        document.getElementById("passwd").removeAttribute("required");        
        document.getElementById('passwd').setCustomValidity('');
    }

    function myKeyDownEmailRegistry()
    {
        document.getElementById('usernameregistry').setCustomValidity('');
    }
    
    function myKeyDownPasswordRegistry()
    {
        document.getElementById('passwordregistry').setCustomValidity('');
    }
    
    function myKeyDownPasswordRegistryAgain()
    {
        document.getElementById('passwordregistryagain').setCustomValidity('');
    }
    
    function functionOninputEmailRegistry()
    {
        document.getElementById('usernameregistry').setCustomValidity('');
    }
    
    function functionOninputPasswordRegistry()
    {
        document.getElementById('passwordregistry').setCustomValidity('');
    }
    
    function functionOninputPasswordRegistryAgain()
    {
        document.getElementById('passwordregistryagain').setCustomValidity('');
    }
    
    function myFunctionFacebookGoogleLogin(type)
    {
        document.getElementById("username").removeAttribute("required");        
        document.getElementById('username').setCustomValidity('');        
        document.getElementById("passwd").removeAttribute("required");        
        document.getElementById('passwd').setCustomValidity('');
        document.getElementById("usernameregistry").removeAttribute("required");        
        document.getElementById('usernameregistry').setCustomValidity('');        
        document.getElementById("passwordregistry").removeAttribute("required");        
        document.getElementById('passwordregistry').setCustomValidity('');        
        document.getElementById("passwordregistryagain").removeAttribute("required");        
        document.getElementById('passwordregistryagain').setCustomValidity('');
        if(type === "1")
            checkLoginState();   
        else
            googlelogin();
    }
</script>

<div class ="container" style ="margin-bottom: 50px">
    <div class ="row">            
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <form action="{linkS}process-login" method="post" name="com-login" id="com-form-login">                                                 
                <div class = "col-sx-12 col-sm-12 col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1"
                     style ="float:left; margin-top: 50px; padding-left: 0px">
                    <div style = "font-family:PoetsenOne;
                                  font-size: 30px;
                                  color: #019cfd;
                                  font-weight: lighter">
                        Đăng nhập
                    </div>                    
                    <table style = "width: 100%">
                        <tr>
                            <br/>
                            <td>
                               <div class="form-inline">
                                    <div class ="form-group"> 
                                        <label class="sr-only" for="username">Email address</label>
                                        <input  type="text"
                                                class ="form-control"
                                                name="username"
                                                id ="username"
                                                placeholder = "Email đăng nhập"
                                                onkeydown="myKeyDownEmail();"
                                                oninput="functionOninputEmail();"
                                                style = "-webkit-border-radius: 15px;
                                                        -moz-border-radius: 15px;
                                                        border-radius: 15px;
                                                        height: 40px;
                                                        outline:none;
                                                        padding: 5px;                                                        
                                                        font-family: RobotoSlabRegular;
                                                        font-size: 14px; 
                                                        width: 290px;
                                                        border: 1px solid #ddd;
                                                        font-weight: lighter;
                                                        color: #adadad"
                                                maxlength="50"/>
                                    </div>                                   
                                    <span>
                                        <img src="{linkS}layout/bootstrap/images/taikhoan_login.png" height="30px"/>
                                    </span> 
                                </div>
                                
                            </td>                            
                        </tr>                        
                        <tr>                                    
                            <td>
                                <br/>   
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label class="sr-only" for="passwd">Password</label>                                    
                                        <input type="password"                                                                              
                                                class="form-control"
                                                id="passwd"                                                                                 
                                                name="passwd"
                                                oninput="functionOninputPassword();"
                                                onkeydown="myKeyDownPassword();"
                                                placeholder = "Mật khẩu"
                                                style = "-webkit-border-radius: 15px;
                                                         -moz-border-radius: 15px;
                                                         border-radius: 15px;
                                                         height: 40px;
                                                         outline:none;
                                                         padding: 5px;
                                                         font-family: RobotoSlabRegular;
                                                         font-size: 14px;
                                                         width: 290px;
                                                         border: 1px solid #ddd;
                                                         font-weight: lighter;
                                                         color: #adadad"
                                                 maxlength="50"/>
                                    </div>
                                    <span>
                                        <img src="{linkS}layout/bootstrap/images/matkhau_login.png" 
                                             height="30px"/>
                                    </span>
                                </div>                                                              
                            </td>
                        </tr>
                        <tr>                                    
                            <td>
                                <input type="checkbox" 
                                       name="remember" 
                                       value="1"
                                       style = "float: left; 
                                                margin-top: 23px;
                                                margin-right: 5px"/> 
                                <span style = "font-family: RobotoSlabRegular; 
                                               font-size: 14px;
                                               font-weight: lighter;
                                               color: #adadad;
                                               float: left;
                                               margin-top: 20px">
                                    Ghi nhớ
                                </span>
                                <input type="submit"
                                       name="login" 
                                       onclick="myFunctionLogin();"
                                       style="width:150px;
                                              height:40px;
                                              border:0px; 
                                              outline: none; 
                                              float: right;
                                              margin-top: 20px;
                                              margin-right: 60px;
                                              background:url('{linkS}layout/bootstrap/images/bt_dangnhap.png') no-repeat left center;" 
                                      value=""/>
                            </td>                             
                        </tr>
                        <tr>
                            <td>
                                <a href="{linkS}quen-mat-khau" 
                                   style = "font-family: RobotoSlabRegular; 
                                            font-size: 14px; 
                                            color: #45b6fe;
                                            float: left;
                                            margin-top: 0px">
                                    Quên mật khẩu
                                </a>
                            </td>
                        </tr>                                              
                    </table>                     
                    <table>
                        <tr>
                            <td colspan="3" style = "padding-top: 20px; width: 100%">
                               <hr/>
                            </td>
                        </tr>    
                        <tr>                            
                            <td colspan="3">                                
                                <span style = "font-family: RobotoSlabRegular; 
                                               font-size: 15px;
                                               color: #6b6b6b;
                                               display: block;
                                               margin-left: auto;
                                               margin-right: auto;
                                               text-align: center">
                                    Hoặc bạn có thể đăng nhập bằng tài khoản
                                </span>
                            </td>
                        </tr>    
                        <tr>
                            <td>
                                <input name="facebook_login" 
                                       onclick="myFunctionFacebookGoogleLogin('1');"
                                       style="width:130px;
                                              height:40px;
                                              border:0px; 
                                              outline: none;
                                              margin-top: 20px;
                                              margin-right: 15px;
                                              cursor:pointer;
                                              background : url('{linkS}layout/bootstrap/images/facebook_login.png') no-repeat left center;" 
                                       value=""/>                                
                            </td>                                       
                            <td>
                                <span style = "font-family: RobotoSlabRegular; 
                                               font-size: 14px;
                                               color: #adadad;">
                                    <br/>
                                    hoặc
                                </span>
                            </td>
                            <td>          
                                <input name="google_login" 
                                       onclick="myFunctionFacebookGoogleLogin('2');"
                                       style="width:130px;
                                              height:40px;
                                              border:0px; 
                                              outline: none;
                                              margin-top: 20px;
                                              margin-left: 15px;
                                              cursor:pointer;
                                              background : url('{linkS}layout/bootstrap/images/google_login.png') no-repeat left center;" 
                                       value=""/>                                                          
                            </td>           
                        </tr>
                    </table>
                </div>
                                       
                <div class = "hidden-xs hidden-sm col-md-1 col-lg-1" 
                     style = "float:left; padding-left: 4px;margin-top: 50px">                                        
                    <span>
                        <img src="{linkS}layout/bootstrap/images/line_dang_nhap.png" 
                             height="390px" width="10px"/>
                    </span>                    
                </div>
                                       
                <div class = "col-sx-12 col-sm-12 col-md-5 col-lg-5"
                     style ="float:left; margin-top: 50px">                    
                    <div style = "font-family:PoetsenOne; 
                                font-size:30px ;
                                color: #019cfd; 
                                font-weight: lighter">
                        Đăng ký tài khoản mới
                    </div>                     
                    <table>
                        <tr>
                            <td>
                                <br/>
                                <div class ="form-inline">
                                    <div class ="form-group">
                                        <input  type="text"          
                                                class ="form-control"
                                                id="usernameregistry"
                                                name="usernameregistry"
                                                onkeydown="myKeyDownEmailRegistry();"
                                                oninput="functionOninputEmailRegistry();"
                                                placeholder = "Email đăng ký"
                                                style = "-webkit-border-radius: 15px;
                                                         -moz-border-radius: 15px;
                                                         border-radius: 15px;
                                                         height: 40px;
                                                         outline:none;
                                                         padding: 5px;
                                                         font-family: RobotoSlabRegular;
                                                         font-size: 14px;
                                                         width: 290px;
                                                         border: 1px solid #ddd;
                                                         font-weight: lighter;
                                                         color: #adadad"
                                                maxlength="50"/>
                                        
                                    </div>    
                                    <span>
                                        <img src="{linkS}layout/bootstrap/images/taikhoan_login.png" height="30px"/>
                                    </span>
                                </div>                                                                    
                            </td>                            
                        </tr>
                        <tr>                            
                            <td>                               
                                <br/>
                                <div class ="form-inline">
                                    <div class ="form-group">                                        
                                        <input  type="password"     
                                                class ="form-control"
                                                id="passwordregistry"
                                                oninput="functionOninputPasswordRegistry();"
                                                onkeydown="myKeyDownPasswordRegistry();"                                                
                                                name="passwordregistry"
                                                placeholder = "Mật khẩu"
                                                style = "-webkit-border-radius: 15px;
                                                         -moz-border-radius: 15px;
                                                         border-radius: 15px;
                                                         height: 40px;
                                                         outline:none;
                                                         padding: 5px;
                                                         font-family: RobotoSlabRegular;
                                                         font-size: 14px;
                                                         width: 290px;
                                                         border: 1px solid #ddd;
                                                         font-weight: lighter;
                                                         color: #adadad"                                                
                                                maxlength="50"/>                                            
                                    </div>
                                    <span>
                                        <img src="{linkS}layout/bootstrap/images/matkhau_login.png" 
                                             height="30px"/>
                                    </span>
                                </div>                                                                
                            </td>                            
                        </tr>
                        <tr>                            
                            <td>                                
                                <br/>                                
                                <div class ="form-inline">
                                    <div class ="form-group">
                                        <input  type="password"                                                                                                                        
                                                class ="form-control"
                                                id="passwordregistryagain"
                                                name="passwordregistryagain"
                                                oninput="functionOninputPasswordRegistryAgain();"
                                                onkeydown="myKeyDownPasswordRegistryAgain();"
                                                placeholder = "Nhập lại mật khẩu"
                                                style = "-webkit-border-radius: 15px;
                                                         -moz-border-radius: 15px;
                                                         border-radius: 15px;
                                                         height: 40px;
                                                         outline:none;
                                                         padding: 5px;
                                                         font-family: RobotoSlabRegular;
                                                         font-size: 14px;
                                                         width: 290px;
                                                         border: 1px solid #ddd;
                                                         font-weight: lighter;
                                                         color: #adadad"
                                                maxlength="50"/>
                                    </div>
                                    <span>
                                        <img src="{linkS}layout/bootstrap/images/matkhau_login.png" 
                                             height="30px"/>
                                    </span>                                     
                                </div>                                                                                                    
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" 
                                       name="registry"
                                       onclick="myFunctionRegistry();"
                                       style="width:150px;
                                              height:40px;
                                              border:0px;
                                              outline:none;
                                              margin-top:20px;
                                              float:right;
                                              margin-right: 10px;
                                              background:url('{linkS}layout/bootstrap/images/tao_tai_khoan.png') no-repeat left center;);" 
                                       value=""/> 
                            </td>
                        </tr>
                    </table>                                        
                </div>
                <input type="hidden" name="option" value="com_user" />
                <input type="hidden" name="task" value="login" />
                <input type="hidden" name="return" value="aW5kZXgucGhw" />
                <input type="hidden" name="edf47aae86f469e7c9b85c4408c628f3" value="1" />
            </form>
        </div>
    </div><!-- end div main -->
</div><!-- end container -->
