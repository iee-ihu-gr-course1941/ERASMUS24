/*├── js/              # JavaScript files
  ├── api.js       # Functions for API calls (e.g., fetch wrapper)*/

async function fetchAPI(url, method = 'GET', body = null) {
    const headers = { 'Content-Type': 'application/json' };
    const response = await fetch(url, {
        method,
        headers,
        body: body ? JSON.stringify(body) : null,
    });
    return response.json();
}
