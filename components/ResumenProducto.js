import Image from 'next/image';
import { formatearDinero } from '../helpers';

const ResumenProducto = ({producto}) => {
    return (
      <div className='shadow p-5 mb-3 flex gap-10 items-center'>
        <div className='md:w-1/6'>
          <Image
            width={300}
            height={400}
            alt={`Imagen producto ${producto.nombre}`}
            src={`/assets/img/${producto.imagen}.jpg`}>

          </Image>
          </div>
          <div className='md:w-5/6'>
            <p className='text-3xl font-bold'>
              Cantidad: {producto.cantidad}
            </p>
            <p className='text-xl font-bold mt-2 text-amber-500'>
              Precio: {formatearDinero(producto.precio)}
            </p>
            <p className='text-sm font-bold mt-2'>
              SubTotal: {formatearDinero(producto.precio * producto.cantidad)}
            </p>
          </div>
          <div>
            <button
            type='button'
            className='bg-sky-700 flex px-5 py-2 text-white rounded-md font-bold uppercase shadow-md w-full mt-3'>
              Editar
            </button>
            <button
            type='button'
            className='bg-red-700 flex px-5 py-2 text-white rounded-md font-bold uppercase shadow-md w-full mt-3'>
              Eliminar
            </button>
          </div>
      </div>
    )
  }
  
  export default ResumenProducto