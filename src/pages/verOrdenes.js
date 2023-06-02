import React from 'react'
import useQuiosco from '../../hooks/useQuiosco'
import Orden from '../../components/Orden'
const verOrdenes = () => {

 const {orden} = useQuiosco();

  return (
    <div className=''>
        <p className='text-3xl font-bold py-5 flex justify-center w-full'> Pedidos</p>
      <div className='grid gap-4 grid-cols-2 xl:grid-cols-3 2xl:grid-cols-3 mx-2'>
        {orden.length === 0 ? (
        <p className="text-center text-2xl col-span-2">
            No se han realizado pedidos
        </p>
    ) 
        :(orden?.map(orden =>(
            <Orden key={orden.id} orden={orden}/>
          )))}
      </div>
    </div>
  )
}

export default verOrdenes
