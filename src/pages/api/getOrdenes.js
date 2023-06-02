import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

export default async function handler(req, res){
    const ordenes = await prisma.orden.findMany()
  res.status(200).json(ordenes)
}