const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = 3000;

const pool = new Pool({
    user: 'fl0user',
    host: 'ep-curly-dew-62793267.us-east-2.aws.neon.fl0.io',
    database: 'PetsApp',
    password: 'Wiy8ezE0qVbU',
    port: 5432,
    ssl: { rejectUnauthorized: false }, // Ignora la verificación del certificado, NO LO USES EN PRODUCCIÓN
  });
  

app.get('/api/users', async (req, res) => {
  try {
    const { rows } = await pool.query('SELECT * FROM users');
    res.json(rows);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
