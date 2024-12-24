async function makeMove(column) {
  try {
      const response = await fetch('http://127.0.0.1:5500/backend/routes/moves.php', {
          method: 'POST',
          headers: {
              'Content-Type': 'application/json',
          },
          body: JSON.stringify({ column }),
      });
      if (!response.ok) {
          throw new Error('Invalid move');
      }
      return await response.json();
  } catch (error) {
      console.error('Error making move:', error);
      return null;
  }
}
