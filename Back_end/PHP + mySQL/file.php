<!DOCTYPE html>  
 <html>  
      <head>  
           <title>Teste de Desenvolvimento FENG</title>  
      </head>  
      <body>  
           <?php   
           // Utilizo isso para identar corretamente
           header('Content-Type: application/json'); 
           // Conecto na minha base de dados
           $connect = mysqli_connect("localhost", "root", "root", "tabeladesenvolvimento"); 
           // Faço o meu select para retornar os campos desejados 
           $sql = "SELECT * FROM `todos` 
                   INNER JOIN desenv ON todos.Desenv_idDesenv = desenv.idDesenv 
                   INNER JOIN perguntas ON todos.Perguntas_idPerguntas = perguntas.idPerguntas 
                   INNER JOIN respostas ON todos.Respostas_idRespostas = respostas.idRespostas";  
           $result = mysqli_query($connect, $sql);  
           $json_array = array();  
           // Retorno um array e printo
           while($row = mysqli_fetch_assoc($result))  
           {  
                $json_array[] = $row;  
           }  
           // Printo o array com a identação correta
           echo json_encode($json_array, JSON_PRETTY_PRINT);  
           ?>  
      </body>  
 </html>  