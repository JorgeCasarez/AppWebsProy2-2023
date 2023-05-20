import { PrismaClient } from "@prisma/client"

const prisma = new PrismaClient()

export default async function handler(req, res) {
  const categorias = await prisma.categoria.create({
    data: {
        icono: "Test",
        nombre: "Text"
      }
  })
  res.status(200)
}
