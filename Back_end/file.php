<!DOCTYPE html>  
 <html>  
      <head>  
           <title>Webslesson Tutorial | Convert Data from Mysql to JSON Format using PHP</title>  
      </head>  
      <body>  
           <?php   
           $connect = mysqli_connect("localhost", "root", "root", "tabelateste");  
           $sql = "SELECT * FROM `todos` INNER JOIN desenv ON todos.Desenv_idDesenv = desenv.idDesenv INNER JOIN perguntas ON todos.Perguntas_idPerguntas = perguntas.idPerguntas INNER JOIN respostas ON todos.Respostas_idRespostas = respostas.idRespostas";  
           $result = mysqli_query($connect, $sql);  
           $json_array = array();  
           while($row = mysqli_fetch_assoc($result))  
           {  
                $json_array[] = $row;  
           }  
           /*echo '<pre>';  
           print_r(json_encode($json_array));  
           echo '</pre>';*/  
           echo json_encode($json_array);  
           ?>  
      </body>  
 </html>  