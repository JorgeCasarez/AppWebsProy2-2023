import { useRouter } from "next/router"
import useQuiosco from "../hooks/useQuiosco";

const pasos = [
    {paso:1, nombre: 'Menu', url: '/'},
    {paso:2, nombre: 'Resumen', url: '/resumen'},
    {paso:3, nombre: 'Datos y Total', url: '/total'},
]


const Pasos = () => {
    const {handleChangePaso} = useQuiosco();
    const router = useRouter();
  return (
    <div className="flex justify-between">
        {
        pasos.map(paso => (
            <button key={paso.paso}
            className="text-2xl font-bold"
            onClick={()=> {router.push(paso.url)}}>
                {paso.nombre}
            </button>
        ))
        }
    </div>
  )
}

export default Pasos
