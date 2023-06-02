import 'react-toastify/dist/ReactToastify.css'
import { ToastContainer } from 'react-toastify';
import { formatearDinero } from '../helpers'
import useQuiosco from '../hooks/useQuiosco'
import { toast } from 'react-toastify'


const Orden = ({ orden }) => {

  const { nombre, total, fecha, pedido } = orden
  const {handleEliminarOrden} = useQuiosco();

  const transformarFecha = (fecha) => {
    const fechaNum = Number(fecha);
    const fechaNueva = new Date(fechaNum)
    return (<p>{fechaNueva.getDate()}/{fechaNueva.getMonth()+1}/{fechaNueva.getFullYear()}</p>);
  }

  return (
    <div className='border p-3 w-full hover:bg-gray-100 ease-in duration-100 bg-white'>
        <div className='p-5'>
            <h3 className='text-3xl font-bold'>Cliente: {nombre}</h3>
            <p className='mt-5 font-black text-xl text-amber-500'>
                Total: {formatearDinero(total)}
            </p>

            <div className="text-xl font-bold mt-2">
                Fecha: {transformarFecha(fecha)}
            </div>
            <div className='flex justify-between'>
                <p className="text-sm font-bold mt-2">
                Productos
                </p>
                <p className="text-sm font-bold mt-2">
                Cantidad
                </p>
            </div>
            
            {pedido.map(({id,cantidad, nombre}) => {
                return(
                <ul className='flex justify-between' key={id} >
                    <li>{nombre}</li>
                    <li>{cantidad}</li>
                </ul>
                );
            })}
        
    <div className='w-full flex justify-end'>
        
            
            <button
                type='button'
                className=' bg-green-600 hover:bg-green-800 text-white
                            w-2/6 mt-5 p-3 uppercase font-bold '
                onClick={() => {
                    handleEliminarOrden(orden.id)
                    
                }
                }
            >Despachar</button>
            </div>
        </div>
    </div>
  )
}

export default Orden