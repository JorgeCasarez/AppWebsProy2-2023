import { PrismaClient } from "@prisma/client";

export default async function handler(req, res) {
  const prisma = new PrismaClient();

  if (req.method === "POST") {
    const orden = await prisma.orden.delete({
      where: {
        id: req.body.id
      },
    });
    res.json(orden);
  }
}
