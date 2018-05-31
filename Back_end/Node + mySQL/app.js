
// conecto a minha base de dados no SQL
const mysql = require('mysql');
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'tabeladesenvolvimento'
});

// Estabeleço a conexão com através do Node
connection.connect((err) => {
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

// Executo a minha query para pegar os campos desejados
connection.query('SELECT * FROM `todos` INNER JOIN desenv ON todos.Desenv_idDesenv = desenv.idDesenv INNER JOIN perguntas ON todos.Perguntas_idPerguntas = perguntas.idPerguntas INNER JOIN respostas ON todos.Respostas_idRespostas = respostas.idRespostas', (err,rows) => {
  if(err) throw err;
  console.log('Data received from Db:\n');
  // Printo os dados recebidos da minha database
  console.log(rows);
});

connection.end((err) => {
 // Termino a minha conexão
});