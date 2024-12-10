CREATE TABLE game_state (
    id INT AUTO_INCREMENT PRIMARY KEY,
    board_state TEXT NOT NULL,
    player_turn INT NOT NULL,
    is_active BOOLEAN NOT NULL,
    scores TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
