<!DOCTYPE html>
<html>
<head>
    <title>User Interaction</title>
</head>
<body>
    <h1>Welcome to the User Interaction Page</h1>
    <form method="post" action="">
        <label for="name">Enter your name:</label>
        <input type="text" id="name" name="name" required>
        <input type="submit" value="Submit">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $name = htmlspecialchars($_POST['name']);
        echo "<h2>Hello, $name!</h2>";
        echo "<p>Your php configurations are </p>";
        echo phpinfo();
        echo "<p>Thank you for visiting our page.</p>";
    }
    ?>
</body>
</html>