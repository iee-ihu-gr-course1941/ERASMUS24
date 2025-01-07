/*CREATE TABLE game_state (
    id INT AUTO_INCREMENT PRIMARY KEY,
    board_state TEXT NOT NULL,
    player_turn INT NOT NULL,
    is_active BOOLEAN NOT NULL,
    scores TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);*/


CREATE DATABASE CantStop;
USE CantStop;

CREATE TABLE Users (
    id_user INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    date_register TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Games (
    id_game INT AUTO_INCREMENT PRIMARY KEY,
    id_player1 INT NOT NULL,
    id_player2 INT,
    state ENUM('activo', 'terminado', 'pendiente') DEFAULT 'pendiente',
    begin TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end TIMESTAMP,
    FOREIGN KEY (id_player1) REFERENCES Users(id_user),
    FOREIGN KEY (id_player2) REFERENCES Users(id_user)
);

CREATE TABLE Moves (
    id_move INT AUTO_INCREMENT PRIMARY KEY,
    id_game INT NOT NULL,
    id_player INT NOT NULL,
    position_x INT NOT NULL,
    position_y INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_game) REFERENCES Games(id_game),
    FOREIGN KEY (id_player) REFERENCES Users(id_user)
);

CREATE TABLE Progress (
    id_progress INT AUTO_INCREMENT PRIMARY KEY,
    id_game INT NOT NULL,
    id_player INT NOT NULL,
    column_number INT NOT NULL CHECK (column_number BETWEEN 2 AND 12), -- Números válidos para columnas
    progress INT DEFAULT 0, -- Avance actual en la columna
    FOREIGN KEY (id_game) REFERENCES Games(id_game),
    FOREIGN KEY (id_player) REFERENCES Users(id_user)
);

SELECT * FROM Games WHERE state = 'activo';

SELECT * FROM Games WHERE id_game = 1;

UPDATE Progress 
SET progress = progress + 1 
WHERE id_game = 1 AND id_player = 1 AND column_number = 2;

SELECT * FROM Progress WHERE id_game = 1 AND id_player = 1;

INSERT INTO Moves (id_game, id_player, position_x, position_y) 
VALUES (1, 1, 2, 3);


