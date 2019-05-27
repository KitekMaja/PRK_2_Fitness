<?php 
include ('baza.php');
?>

<p>prijava</p>

<form action="" method="post">
			
			 <input  type="text" name="email"
				placeholder="Email"
				value="<?php if(isset($_POST['email'])) echo $_POST['email'] ?>"
				autocomplete="off" /><br />
				
			
				
			
			 <input type="submit" name='prijava' value="Prijava"/><br />
		</form>





<?php 
// $email = $_POST['email'];




$connect = mysqli_connect('localhost', 'root', '', 'baza');
// $email=$_POST['email'];
// $email = mysqli_real_escape_string($connect, $_POST['email']);
    
   
    
    
//     $password=md5($password);
    
    if(isset($_POST['prijava'])){
        $email = $_POST['email'];
        $_SESSION['email']=$email;
        $email = mysqli_real_escape_string($connect, $_POST['email']);
        
        if(empty($email) ){  //|| empty($password
            if (empty($email)) {  echo "Email is required"; }
            
           // if (empty($password)) { echo  "Password is required"; }
            
        }else{
            
            $user_check_query = "SELECT  email FROM uporabnik  WHERE email='$email'LIMIT 1";  // AND geslo='$password'
            $result = mysqli_query($connect, $user_check_query);
            
            if (mysqli_num_rows($result) === 1) {
                $_SESSION['email'] = $email;
                $_SESSION['loggedin'] = true;
            
           
            mysqli_close($connect);
                
                // pot do imenika in datoteke, v katerem smo
                // v nasem primeru
//                 $pot = "localhost/hotel/Strani";
                
                // preusmeritev na zacetno prijavo
                header("Location: profil.php");
                
               
            }
           
        }
    }
?>