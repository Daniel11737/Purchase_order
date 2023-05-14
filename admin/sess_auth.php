

<?php
session_start();

include('connect.php')

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $hashedpwd = password_hash($password, PASSWORD_DEFAULT);
    $stmt = $conn->prepare("SELECT * FROM employee_login WHERE login_id = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        $hashedpwd = $row['login_password'];
        
        if (password_verify($password, $hashedpwd)) {
            $role = $row['position'];
            
            $_SESSION['username'] = $username;
            $_SESSION['position'] = $role;
            
            switch ($role) {
                case "employee":
                    header("Location: programmer_interface.php");
                    break;
                case "admin":
                    header("Location: web_developer_interface.php");
                    break;
                case "designer":
                    header("Location: designer_interface.php");
                    break;
                case "project_manager":
                    header("Location: project_manager_interface.php");
                    break;
                default:
                    echo "Invalid role.";
                    break;
            }
        } else {
            echo "Invalid password.";
        }
    } else {
        echo "Invalid username.";
    }
}
?>

<!-- // <form method="post" action="">
//     <label>Username:</label>
//     <input type="text" name="username">
//     <br>
//     <label>Password:</label>
//     <input type="password" name="password">
//     <br>
//     <input type="submit" name="login" value="Log In">
// </form> -->
