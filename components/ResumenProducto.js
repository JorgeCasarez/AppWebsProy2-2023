import Image from 'next/image';

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
      </div>
    )
  }
  
  export default ResumenProducto