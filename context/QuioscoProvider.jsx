import { useState, useEffect, createContext } from "react";
import axios from "axios";
import Producto from "../components/Producto";

const QuioscoContext = createContext()

const QuioscoProvider = ({children})=>{

    const [categorias, setCategorias] = useState([])
    const [categoriaActual, setCategoriaActual] = useState({})
    const [producto, setProducto] = useState({})
    const [modal, setModal] = useState(false)
    const [pedido, setPedido] = useState([])

    const handleChangeModal = () => {
        setModal(!modal)
    }
    const obtenerCategorias = async ()=>{
        const {data} = await axios('/api/categorias')
        setCategorias(data)
    }

    useEffect(()=>{
        obtenerCategorias()
    },[])

    useEffect(()=>{
        setCategoriaActual(categorias[0])
    },[categorias])

    const handleClickCategoria = (id)=>{
        const categoria = categorias.filter(cat => cat.id===id)
        setCategoriaActual(categoria[0])
    }

    const handleSetProducto = producto =>{
        setProducto(producto)
    }

    const handleAgregarPedido = ({categoriaId, imagen, ...producto}) =>{
        
        
        if(pedido.some(productoState => productoState.id === producto.id)){

            const pedidoActualizado = pedido.map(productoState => productoState.id === producto.id? producto : productoState);
            
            setPedido(pedidoActualizado);
            
        }else{
            setPedido([...pedido, producto])
        }
        
    }

    return(
        <QuioscoContext.Provider
            value={
                {
                    categorias,
                    categoriaActual,
                    handleClickCategoria,
                    handleSetProducto,
                    modal,
                    handleChangeModal,
                    producto,
                    handleAgregarPedido
                }
            }
        >
            {children}
        </QuioscoContext.Provider>
    )


}

export {
    QuioscoProvider
}

export default QuioscoContext