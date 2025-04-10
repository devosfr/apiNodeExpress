const express = require("express");
import cors from 'cors';
const { PrismaClient } = require("@prisma/client");

const app = express();
const prisma = new PrismaClient();

app.use(express.json());

app.use(cors()); // Permite qualquer origem

// ou, para permitir apenas o seu front-end:
app.use(cors({
  origin: 'http://127.0.0.1:8080'
}));

app.get("/users", async (req, res) => {
  const users = await prisma.user.findMany();
  res.json(users);
});

app.get("/projetos", async (req, res) => {
  const users = await prisma.user.findMany();
  res.json(users);
});

app.post("/users", async (req, res) => {
  const { name, email } = req.body;
  const user = await prisma.user.create({ data: { name, email } });
  res.json(user);
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));

// await app.listen('8080', "0.0.0.0") // Escute em 0.0.0.0 para permitir conexões externas
// console.log(`🚀 Server running on port ${port}`)