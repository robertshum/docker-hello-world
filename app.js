const app = require('express')();

app.get('/', (_req, res) => {
  res.json({ message: 'Docker is easy to start! 🐳🐋' });
}
);

const port = process.env.PORT || 8080;

app.listen(port, () => console.log(`app is using http://localhost:${port}`));