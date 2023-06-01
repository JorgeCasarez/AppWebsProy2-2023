import { categorias } from "./data/categorias";
import { productos } from "./data/productos";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

const main =async () : Promise<void>=> {
    console.log("start")
    try {
        console.log("categorias")
        await prisma.categoria.createMany({
            data: categorias            
        })

        console.log("productos")

        await prisma.producto.createMany({
            data: productos
        })
        
    } catch (error) {
        console.log("xxxxx")
        console.log(error)
    }
    
}