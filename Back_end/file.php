<!DOCTYPE html>  
 <html>  
      <head>  
           <title>Teste de Desenvolvimento FENG</title>  
      </head>  
      <body>  
           <?php   
           header('Content-Type: application/json'); 
           $connect = mysqli_connect("localhost", "root", "root", "tabeladesenvolvimento");  
           $sql = "SELECT * FROM `todos` 
                   INNER JOIN desenv ON todos.Desenv_idDesenv = desenv.idDesenv 
                   INNER JOIN perguntas ON todos.Perguntas_idPerguntas = perguntas.idPerguntas 
                   INNER JOIN respostas ON todos.Respostas_idRespostas = respostas.idRespostas";  
           $result = mysqli_query($connect, $sql);  
           $json_array = array();  
           while($row = mysqli_fetch_assoc($result))  
           {  
                $json_array[] = $row;  
           }  
           echo json_encode($json_array, JSON_PRETTY_PRINT);  
           ?>  
      </body>  
 </html>  