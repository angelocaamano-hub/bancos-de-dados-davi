
CREATE DATABASE horta_da_vovo;
USE horta_da_vovo;


CREATE TABLE plantas (
    id_planta INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tempo_colheita_dias varchar(100),
    frequencia_rega int,
    especie varchar(100)
);


CREATE TABLE canteiros (
    id_canteiro INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(100), 
    data_plantio DATE,
    nome_planta varchar(100),
disponibilidade enum('livre','ocupado','manutenção'),
tamanho varchar(255)

);



CREATE TABLE tarefas (
    id_tarefa INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    data_agendada DATE,
    data_regacao date,
    data_limpeza date,
    data_colheita date,
    
    status ENUM('Pendente', 'Concluido') DEFAULT 'Pendente'
);
CREATE TABLE colheita (
    id_colheita INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    quantidade DECIMAL(10, 2) NOT NULL,   
    data_colheita DATE NOT NULL,
    talhao_setor VARCHAR(50),               
    observacoes TEXT,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) 



