INSERT INTO categoria_usuario (idCategoria, nomeCategoria, descricaoCategoria) VALUES
(1, 'Colaborador', 'Funcionario com acesso limitado.'),
(2, 'Analista de Dados', 'Responsável por gerar relatórios e insights.'),
(3, 'Gerente de Projeto', 'Gerencia equipes e acompanha o progresso.');


INSERT INTO tbUser (idUser, nomeUser, emailUser, senhaHash, id_Categoria) VALUES
(1, 'Pedro Soares', 'pedro.soares@email.com', 'senha_pedro_hash', 1),
(2, 'Luisa Ramos', 'luisa.ramos@email.com', 'senha_luisa_hash', 1),
(3, 'Ricardo Almeida', 'ricardo.almeida@email.com', 'senha_ricardo_hash', 2),
(4, 'Julia Mendes', 'julia.mendes@email.com', 'senha_julia_hash', 3);


INSERT INTO tbLoc (idLoc, Lat, Lon, cidadeLoc, estadoLoc) VALUES
(1, '-12.9714', '-38.5014', 'Salvador', 'BA'),
(2, '-3.7327', '-38.5267', 'Fortaleza', 'CE'),
(3, '-19.9167', '-43.9345', 'Belo Horizonte', 'MG'),
(4, '-8.0578', '-34.8824', 'Recife', 'PE');


INSERT INTO tbTE (idTE, nomeTE, descrTE) VALUES
(1, 'Problema de Infraestrutura', 'Falha em sistemas críticos de uma empresa.'),
(2, 'Ataque Cibernético', 'Tentativa de invasão ou violação de dados.'),
(3, 'Queda de Energia', 'Interrupção no fornecimento de eletricidade.');


INSERT INTO tbEvent (idEvent, nomeEvent, descrEvent, dataHora, status, id_TE, id_Loc) VALUES
(1, 'Falha no Servidor Principal', 'Perda de acesso ao banco de dados da empresa.', '2025-08-23 09:15:00', 'Crítico', 1, 3),
(2, 'Phishing na Rede', 'Email falso enviado para funcionários visando roubar credenciais.', '2025-08-23 11:45:00', 'Investigação', 2, 1),
(3, 'Apagão no Bairro Central', 'Problema em subestação elétrica causando blecaute.', '2025-08-22 21:00:00', 'Resolvido', 3, 4);


INSERT INTO tbRelato (idRelato, relato, dataHora, id_Event, id_User) VALUES
(1, 'Nossos sistemas pararam de responder. Nenhum acesso remoto.', '2025-08-23 09:20:00', 1, 1),
(2, 'O departamento de TI enviou um alerta sobre um email suspeito.', '2025-08-23 11:50:00', 2, 2),
(3, 'A luz acabou em toda a rua. Aparentemente foi um poste caído.', '2025-08-22 21:10:00', 3, 3);


INSERT INTO tbAlert (idAlert, msg, dataHora, levelAlert, id_Event) VALUES
(1, 'Sistema em estado de emergência. Acesso total bloqueado.', '2025-08-23 09:30:00', 3, 1),
(2, 'Alerta de segurança: não clicar em links desconhecidos.', '2025-08-23 11:55:00', 2, 2),
(3, 'Fornecimento de energia restabelecido. Problema solucionado.', '2025-08-22 23:00:00', 1, 3);


INSERT INTO historico_evento (idHistorico, id_Event, id_User, dataHora, acao, observacao) VALUES
(1, 1, 4, '2025-08-23 09:18:00', 'Registro de Evento', 'Evento de infraestrutura cadastrado por monitoramento.'),
(2, 1, 3, '2025-08-23 09:40:00', 'Análise de Dados', 'Análise inicial para identificar causa raiz do problema.'),
(3, 2, 4, '2025-08-23 11:47:00', 'Registro de Evento', 'Evento de segurança criado via sistema de alertas.'),
(4, 3, 4, '2025-08-22 21:05:00', 'Registro de Evento', 'Evento de energia relatado por usuário de campo.');