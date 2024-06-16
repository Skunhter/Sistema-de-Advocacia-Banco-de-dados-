use trabalho_3;

INSERT INTO advocacia (nome, telefone) VALUES 
('Advocacia Exemplo', '1234567891');

-- Inserir 30 dados na tabela advocacia_endereco
INSERT INTO advocacia_endereco (ID_Advocacia, Rua, Municipio, Cidade, Estado, CEP, Numero) VALUES 
(1, 'Rua A', 'Municipio A', 'Cidade A', 'Estado A', '12345-678', '1');

-- Inserir 30 dados na tabela especialidade_advogado
INSERT INTO especialidade_advogado (Descricao) VALUES 
('Direito Civil'), ('Direito Penal'), ('Direito Trabalhista'), ('Direito Tributário'),
('Direito Empresarial'), ('Direito Internacional'), ('Direito Ambiental'), ('Direito Administrativo'),
('Direito Constitucional'), ('Direito Previdenciário'), ('Direito Digital'), ('Direito de Família'),
('Direito Imobiliário'), ('Direito Comercial'), ('Direito do Consumidor'), ('Direito Militar'),
('Direito Eleitoral'), ('Direito Marítimo'), ('Direito Agrário'), ('Direito Sanitário'),
('Direito Desportivo'), ('Direito Médico'), ('Direito Educacional'), ('Direito Aeronáutico'),
('Direito Minerário'), ('Direito Cultural'), ('Direito da Moda'), ('Direito do Entretenimento'),
('Direito Portuário'), ('Direito das Telecomunicações');

-- Inserir 30 dados na tabela advogado
INSERT INTO advogado (ID_Advocacia, ID_Especialidade, Nome, CPF, telefone) VALUES 
(1, 1, 'Advogado A', 111111111, '4793854721'), (1, 2, 'Advogado B', 111111112, '2729459729'),
(1, 3, 'Advogado C', 111111113, '2729459729'), (1, 4, 'Advogado D', 111111114, '4793854721'),
(1, 5, 'Advogado E', 111111115, '4738593034'), (1, 6, 'Advogado F', 111111116, '4793854721'),
(1, 7, 'Advogado G', 111111117, '4895837349'), (1, 8, 'Advogado H', 111111118, '2729459729'),
(1, 9, 'Advogado I', 111111119, '4738593034'), (1, 10, 'Advogado J', 111111120, '2729459729'),
(1, 11, 'Advogado K', 111111121, '4793854721'), (1, 12, 'Advogado L', 111111122, '2729459729'),
(1, 13, 'Advogado M', 111111123, '4895837349'), (1, 14, 'Advogado N', 111111124, '4738593034'),
(1, 15, 'Advogado O', 111111125, '4738593034'), (1, 16, 'Advogado P', 111111126, '4793854721'),
(1, 17, 'Advogado Q', 111111127, '4895837349'), (1, 18, 'Advogado R', 111111111, '2729459729'),
(1, 19, 'Advogado S', 111111129, '4793854721'), (1, 20, 'Advogado T', 111111130, '2729459729'),
(1, 21, 'Advogado U', 111111131, '4793854721'), (1, 22, 'Advogado V', 111111132, '2729459729'),
(1, 23, 'Advogado W', 111111133, '4895837349'), (1, 24, 'Advogado X', 111111134, '4738593034'),
(1, 25, 'Advogado Y', 111111135, '4738593034'), (1, 26, 'Advogado Z', 111111136, '4793854721'),
(1, 27, 'Advogado AA', 111111137, '4895837349'), (1, 28, 'Advogado AB', 111111138, '4895837349'),
(1, 29, 'Advogado AC', 111111139, '4793854721'), (1, 30, 'Advogado AD', 111111111, '4793854721');

-- Inserir 30 dados na tabela endereco_advogado
INSERT INTO endereco_advogado (ID_Advogado, Rua, Municipio, Cidade, Estado, CEP, Numero) VALUES 
(1, 'Rua A', 'Municipio A', 'Cidade A', 'Estado A', '12345-678', '1'),
(2, 'Rua B', 'Municipio B', 'Cidade B', 'Estado B', '12345-679', '2'),
(3, 'Rua C', 'Municipio C', 'Cidade C', 'Estado C', '12345-680', '3'),
(4, 'Rua D', 'Municipio D', 'Cidade D', 'Estado D', '12345-681', '4'),
(5, 'Rua E', 'Municipio E', 'Cidade E', 'Estado E', '12345-682', '5'),
(6, 'Rua F', 'Municipio F', 'Cidade F', 'Estado F', '12345-683', '6'),
(7, 'Rua G', 'Municipio G', 'Cidade G', 'Estado G', '12345-684', '7'),
(8, 'Rua H', 'Municipio H', 'Cidade H', 'Estado H', '12345-685', '8'),
(9, 'Rua I', 'Municipio I', 'Cidade I', 'Estado I', '12345-686', '9'),
(10, 'Rua J', 'Municipio J', 'Cidade J', 'Estado J', '12345-687', '10'),
(11, 'Rua K', 'Municipio K', 'Cidade K', 'Estado K', '12345-688', '11'),
(12, 'Rua L', 'Municipio L', 'Cidade L', 'Estado L', '12345-689', '12'),
(13, 'Rua M', 'Municipio M', 'Cidade M', 'Estado M', '12345-690', '13'),
(14, 'Rua N', 'Municipio N', 'Cidade N', 'Estado N', '12345-691', '14'),
(15, 'Rua O', 'Municipio O', 'Cidade O', 'Estado O', '12345-692', '15'),
(16, 'Rua P', 'Municipio P', 'Cidade P', 'Estado P', '12345-693', '16'),
(17, 'Rua Q', 'Municipio Q', 'Cidade Q', 'Estado Q', '12345-694', '17'),
(18, 'Rua R', 'Municipio R', 'Cidade R', 'Estado R', '12345-695', '18'),
(19, 'Rua S', 'Municipio S', 'Cidade S', 'Estado S', '12345-696', '19'),
(20, 'Rua T', 'Municipio T', 'Cidade T', 'Estado T', '12345-697', '20'),
(21, 'Rua U', 'Municipio U', 'Cidade U', 'Estado U', '12345-698', '21'),
(22, 'Rua V', 'Municipio V', 'Cidade V', 'Estado V', '12345-699', '22'),
(23, 'Rua W', 'Municipio W', 'Cidade W', 'Estado W', '12345-700', '23'),
(24, 'Rua X', 'Municipio X', 'Cidade X', 'Estado X', '12345-701', '24'),
(25, 'Rua Y', 'Municipio Y', 'Cidade Y', 'Estado Y', '12345-702', '25'),
(26, 'Rua Z', 'Municipio Z', 'Cidade Z', 'Estado Z', '12345-703', '26'),
(27, 'Rua AA', 'Municipio AA', 'Cidade AA', 'Estado AA', '12345-704', '27'),
(28, 'Rua AB', 'Municipio AB', 'Cidade AB', 'Estado AB', '12345-705', '28'),
(29, 'Rua AC', 'Municipio AC', 'Cidade AC', 'Estado AC', '12345-706', '29'),
(30, 'Rua AD', 'Municipio AD', 'Cidade AD', 'Estado AD', '12345-707', '30');


-- Inserir 30 dados na tabela cliente
INSERT INTO cliente (nome, CPF, telefone) VALUES 
('Cliente A', 222222222, '479283491'), ('Cliente B', 222222222, '493845992'),
('Cliente C', 222222223, '482923019'), ('Cliente D', 222222224, '482923019'),
('Cliente E', 222222225, '483293850'), ('Cliente F', 222222226, '395839340'),
('Cliente G', 222222227, '395839340'), ('Cliente H', 222222228, '482923019'),
('Cliente I', 222222229, '493845992'), ('Cliente J', 222222230, '482923019'),
('Cliente K', 222222222, '482923019'), ('Cliente L', 222222232, '493845992'),
('Cliente M', 222222233, '483293850'), ('Cliente N', 222222234, '482923019'),
('Cliente O', 222222235, '493845992'), ('Cliente P', 222222236, '395839340'),
('Cliente Q', 222222237, '395839340'), ('Cliente R', 222222222, '493845992'),
('Cliente S', 222222239, '493845992'), ('Cliente T', 222222240, '395839340'),
('Cliente U', 222222221, '493845992'), ('Cliente V', 222222242, '483293850'),
('Cliente W', 222222243, '483293850'), ('Cliente X', 222222244, '493845992'),
('Cliente Y', 222222245, '395839340'), ('Cliente Z', 222222246, '482923019'),
('Cliente AA', 222222247, '395839340'), ('Cliente AB', 222222248, '493845992'),
('Cliente AC', 222222249, '493845992'), ('Cliente AD', 222222222, '395839340');

-- Inserir 30 dados na tabela endereco_cliente
INSERT INTO endereco_cliente (ID_Cliente, Rua, Municipio, Cidade, Estado, CEP, Numero) VALUES 
(1, 'Rua A', 'Municipio A', 'Cidade A', 'Estado A', '12345-678', '1'),
(2, 'Rua B', 'Municipio B', 'Cidade B', 'Estado B', '12345-679', '2'),
(3, 'Rua C', 'Municipio C', 'Cidade C', 'Estado C', '12345-680', '3'),
(4, 'Rua D', 'Municipio D', 'Cidade D', 'Estado D', '12345-681', '4'),
(5, 'Rua E', 'Municipio E', 'Cidade E', 'Estado E', '12345-682', '5'),
(6, 'Rua F', 'Municipio F', 'Cidade F', 'Estado F', '12345-683', '6'),
(7, 'Rua G', 'Municipio G', 'Cidade G', 'Estado G', '12345-684', '7'),
(8, 'Rua H', 'Municipio H', 'Cidade H', 'Estado H', '12345-685', '8'),
(9, 'Rua I', 'Municipio I', 'Cidade I', 'Estado I', '12345-686', '9'),
(10, 'Rua J', 'Municipio J', 'Cidade J', 'Estado J', '12345-687', '10'),
(11, 'Rua K', 'Municipio K', 'Cidade K', 'Estado K', '12345-688', '11'),
(12, 'Rua L', 'Municipio L', 'Cidade L', 'Estado L', '12345-689', '12'),
(13, 'Rua M', 'Municipio M', 'Cidade M', 'Estado M', '12345-690', '13'),
(14, 'Rua N', 'Municipio N', 'Cidade N', 'Estado N', '12345-691', '14'),
(15, 'Rua O', 'Municipio O', 'Cidade O', 'Estado O', '12345-692', '15'),
(16, 'Rua P', 'Municipio P', 'Cidade P', 'Estado P', '12345-693', '16'),
(17, 'Rua Q', 'Municipio Q', 'Cidade Q', 'Estado Q', '12345-694', '17'),
(18, 'Rua R', 'Municipio R', 'Cidade R', 'Estado R', '12345-695', '18'),
(19, 'Rua S', 'Municipio S', 'Cidade S', 'Estado S', '12345-696', '19'),
(20, 'Rua T', 'Municipio T', 'Cidade T', 'Estado T', '12345-697', '20'),
(21, 'Rua U', 'Municipio U', 'Cidade U', 'Estado U', '12345-698', '21'),
(22, 'Rua V', 'Municipio V', 'Cidade V', 'Estado V', '12345-699', '22'),
(23, 'Rua W', 'Municipio W', 'Cidade W', 'Estado W', '12345-700', '23'),
(24, 'Rua X', 'Municipio X', 'Cidade X', 'Estado X', '12345-701', '24'),
(25, 'Rua Y', 'Municipio Y', 'Cidade Y', 'Estado Y', '12345-702', '25'),
(26, 'Rua Z', 'Municipio Z', 'Cidade Z', 'Estado Z', '12345-703', '26'),
(27, 'Rua AA', 'Municipio AA', 'Cidade AA', 'Estado AA', '12345-704', '27'),
(28, 'Rua AB', 'Municipio AB', 'Cidade AB', 'Estado AB', '12345-705', '28'),
(29, 'Rua AC', 'Municipio AC', 'Cidade AC', 'Estado AC', '12345-706', '29'),
(30, 'Rua AD', 'Municipio AD', 'Cidade AD', 'Estado AD', '12345-707', '30');

-- Inserir 30 dados na tabela caso
INSERT INTO caso (id_cliente, id_advogado, descricao) VALUES 
(1, 1, 'Caso A'),
(2, 2, 'Caso B'),
(3, 3, 'Caso C'),
(4, 4, 'Caso D'),
(5, 5, 'Caso E'),
(6, 6, 'Caso F'),
(7, 7, 'Caso G'),
(8, 8, 'Caso H'),
(9, 9, 'Caso I'),
(10, 10, 'Caso J'),
(11, 11, 'Caso K'),
(12, 12, 'Caso L'),
(13, 13, 'Caso M'),
(14, 14, 'Caso N'),
(15, 15, 'Caso O'),
(16, 16, 'Caso P'),
(17, 17, 'Caso Q'),
(18, 18, 'Caso R'),
(19, 19, 'Caso S'),
(20, 20, 'Caso T'),
(21, 21, 'Caso U'),
(22, 22, 'Caso V'),
(23, 23, 'Caso W'),
(24, 24, 'Caso X'),
(25, 25, 'Caso Y'),
(26, 26, 'Caso Z'),
(27, 27, 'Caso AA'),
(28, 28, 'Caso AB'),
(29, 29, 'Caso AC'),
(30, 30, 'Caso AD');

-- Inserir 30 dados na tabela atendimento
INSERT INTO atendimento (id_caso, id_cliente, id_advogado, data_atendimento, descricao) VALUES 
(1, 1, 1, '2024-05-01', 'Atendimento 1'),
(2, 2, 2, '2024-05-02', 'Atendimento 2'),
(3, 3, 3, '2024-05-03', 'Atendimento 3'),
(4, 4, 4, '2024-05-04', 'Atendimento 4'),
(5, 5, 5, '2024-05-05', 'Atendimento 5'),
(6, 6, 6, '2024-05-06', 'Atendimento 6'),
(7, 7, 7, '2024-05-07', 'Atendimento 7'),
(8, 8, 8, '2024-05-08', 'Atendimento 8'),
(9, 9, 9, '2024-05-09', 'Atendimento 9'),
(10, 10, 10, '2024-05-10', 'Atendimento 10'),
(11, 11, 11, '2024-05-11', 'Atendimento 11'),
(12, 12, 12, '2024-05-12', 'Atendimento 12'),
(13, 13, 13, '2024-05-13', 'Atendimento 13'),
(14, 14, 14, '2024-05-14', 'Atendimento 14'),
(15, 15, 15, '2024-05-15', 'Atendimento 15'),
(16, 16, 16, '2024-05-16', 'Atendimento 16'),
(17, 17, 17, '2024-05-17', 'Atendimento 17'),
(18, 18, 18, '2024-05-18', 'Atendimento 18'),
(19, 19, 19, '2024-05-19', 'Atendimento 19'),
(20, 20, 20, '2024-05-20', 'Atendimento 20'),
(21, 21, 21, '2024-05-21', 'Atendimento 21'),
(22, 22, 22, '2024-05-22', 'Atendimento 22'),
(23, 23, 23, '2024-05-23', 'Atendimento 23'),
(24, 24, 24, '2024-05-24', 'Atendimento 24'),
(25, 25, 25, '2024-05-25', 'Atendimento 25'),
(26, 26, 26, '2024-05-26', 'Atendimento 26'),
(27, 27, 27, '2024-05-27', 'Atendimento 27'),
(28, 28, 28, '2024-05-28', 'Atendimento 28'),
(29, 29, 29, '2024-05-29', 'Atendimento 29'),
(30, 30, 30, '2024-05-30', 'Atendimento 30');
