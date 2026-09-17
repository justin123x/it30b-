<?php

// Database Connection
$host = 'localhost';
$db = 'it30b_lab_db';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host; dbname=$db; charset=$charset";

$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (PDOException $e) {
    die("Database connection failed" . $e->getMessage());
}

// Session
session_start();

// Determine current section
$section = $_GET['section'] ?? 'students';

// Determine CRUD Operation
$action = $_GET['action'] ?? '';

// Fetch Students
if ($section=== 'students'){

$stmt = $pdo->prepare("
        SELECT *
        FROM student
        ORDER BY student_id DESC
    ");
    $stmt->execute();
    $students = $stmt->fetchAll();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Simply Library System</h1>
    <nav>
        <a href="index.php?section=students">Students</a>
        <a href="index.php?section=books">Books</a>
        <a href="index.php?section=borrow">Borrow</a>
</nav>
<hr>
<?php if($section === 'students'): ?>
        <h1>Students</h1>
       <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Course</th>
                <th>Created</th>
                <th>Action</th>
</tr>
        </thead>
        <tbody>
    <?php foreach($students as $student): ?>
        <tr>
            <td>
            <?=htmlspecialchars($student['student_id']) ?></td>
    <td>
            <?=htmlspecialchars($student['student_first_name']) ?></td>
    <td>
            <?=htmlspecialchars($student['student_last_name']) ?></td>
    <td>
            <?=htmlspecialchars($student['student_course']) ?></td>
    <td>
            <?=htmlspecialchars($student['student_created_at']) ?></td>
    <td>
        <a href="index.php?action=edit&id=<?=htmlspecialchars($student['student_id']) ?>">Edit</a>

        <a href="index.php?action=delete&id=<?=htmlspecialchars($student['student_id']) ?>">Delete</a>
    </td>
    </tr>
    <?php endforeach?>
    </tbody>

    </table>

    <?php endif;?>

        <?php if($section === 'books'): ?>
        <h1>Books</h1>
        <?php endif;?>

        <?php if($section === 'borrow'): ?>
        <h1>Borrow</h1>
        <?php endif;?>
</body>
</html>