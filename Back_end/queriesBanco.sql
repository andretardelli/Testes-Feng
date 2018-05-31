INSERT INTO `desenv` (`idDesenv`, `name`, `descrtiption`, `category`, `basePoints`, `startDate`, `endDate`, `isActive`, `alreadyAnswered`) VALUES ('1', 'Teste de desenvolvimento', 'Teste para desenvolvedor back-end', 'Testes', '100', '2018-02-15', '2018-02-22', '0', '1');

INSERT INTO `perguntas` (`idPerguntas`, `textQuestion`, `type`) VALUES ('1', 'Qual o seu nome?', 'text'), ('2', 'Para qual area voce esta aplicando?', 'select'), ('3', '', '');

INSERT INTO `respostas` (`idRespostas`, `textAnswer`, `value`) VALUES ('1', 'Front-end', 'front-end'), ('2', 'Back-end', 'back-end'), ('3', NULL, NULL);

INSERT INTO `todos` (`Desenv_idDesenv`, `Perguntas_idPerguntas`, `Respostas_idRespostas`) VALUES ('1', '1', '3'), ('1', '2', '1'), ('1', '2', '2');