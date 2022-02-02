<?php

    $message = $_POST["message"];

    $files = scandir("./messages/");
    $num_files = count($files);

    if (is_bool($num_files)) {
        $filename = "msg-0.txt";
    } 
    else {
        $filename = "msg-{$num_files}.txt";
    }
    $file = fopen("./messages/{$filename}", "w+");

    fwrite($file, $message);
    fclose($file);

    echo("<p>Mensagem: {$message}\nArquivo: {$filename}</p>");
    // header("Location: index.php");

?>