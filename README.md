# ERASMUS24

# Game Project

This repository contains the development of a multiplayer web-based game platform. The project implements the game "Cant-Stop".

### Game Features
- Human vs. Human gameplay with a graphical interface.
- Game state stored in a MySQL database.
- Connection initialization and authentication (even without password).
- Turn validation, deadlock detection, and game rule enforcement.

### Technologies Used
- **Backend**: PHP, MySQL, AJAX, jQuery
- **Frontend**: HTML, CSS, JavaScript (with possible frameworks like React or Vue.js)
- **Version Control**: Git, GitHub

---

## Project Structure

.projectERASMUS24/ 
├── backend api/ 
│   ├── api.php # API endpoints for game logic 
│   ├── db.php # Database connection 
│   ├── game_rules.php # Game rules validation 
│   └── player_management.php # Player authentication and state 
├── database/ 
│   ├── Database Schema.sql # MySQL schema for storing game state and player data 
├── frontend/ 
│   ├── index.html # Main game interface 
│   ├── style.css # Game UI styling 
│   ├── script.js # Game interaction scripts (AJAX requests, etc.) 
│   └── images/ # Any images (icons, assets for the frontend) 
├── README.md # Project description and setup instructions 
└── .gitignore # Git ignore file

---

## How to Run the Project Locally

1. **Clone the repository:**

   ```bash
   git clone https://github.com/iee-ihu-gr-course1941/ERASMUS24_xxxxx.git
   cd ERASMUS24_xxxxx

2. **Set up the database:**

Import the Database Schema.sql file into your MySQL database:

    CREATE DATABASE erasmus24;
    USE erasmus24;
    SOURCE database/Database\ Schema.sql;

3. **Configure the backend:**

Modify the api/db.php file with your database connection details (username, password, database name).

4. **Start a local server:**

You can use XAMPP, MAMP, or any local server setup for PHP.

Place the project files in the appropriate folder (e.g., htdocs for XAMPP).
Start the server and access the game interface via http://localhost/ERASMUS24_xxxxx/frontend/index.html.

5. **Test the API:**

You can test the game logic and interactions through the API using Postman or your browser.

## API Endpoints

1. POST /api/register
Registers a new player (without password authentication for simplicity).

Request Body:
{
  "username": "player1"
}

2. GET /api/gameState
Retrieves the current game state.

Response:
{
  "gameId": 1,
  "playerTurn": "player1",
  "boardState": "xxxxx",
  "gameStatus": "ongoing"
}

3. POST /api/move
Makes a move for the current player.

Request Body:
{
  "gameId": 1,
  "player": "player1",
  "move": "A1"
}

4. GET /api/scoreboard
Retrieves the current leaderboard.

Response:
{
  "players": [
    { "username": "player1", "score": 10 },
    { "username": "player2", "score": 8 }
  ]
}


## Contributing
    1. Fork the repository to your GitHub account.
    2. Clone the forked repository to your local machine.
    3. Create a new branch (git checkout -b feature-name).
    4. Make changes and commit them (git commit -am 'Add new feature').
    5. Push the changes to your fork (git push origin feature-name).
    6. Create a pull request to the main repository.

## Acknowledgments

    GitHub for version control and project management

---

### Explanation of Sections:

- **Project Overview**: Provides a brief description of the project and the game features.
- **Technologies Used**: Lists the core technologies involved in the project.
- **Project Structure**: Describes the folder structure of the repository for better organization.
- **How to Run the Project Locally**: Provides step-by-step instructions for setting up and running the project on a local machine.
- **API Endpoints**: Specifies the key API routes for game-related actions, like player registration, fetching game state, and making moves.
- **Contributing**: Describes how others can contribute to the project.
- **Acknowledgments**: A place to acknowledge any tools, services, or resources that helped in the development.

---

