object cosas {
    method peso() = 10
    method peligrocidad() = 1


    
}
object knightRider {
    method peso() = 500
    method peligrocidad() = 10
}

object bumblebee {
    var estado = auto
    method peso() = 800
    method peligrocidad() = estado.peligrocidad()
    method transformate() {
        estado = estado.nuevoEstado()
      
    }
  
}

object auto {
    method peligrocidad() = 15
    method nuevoEstado() = robot
  
}
object robot {
    method peligrocidad() = 30 
    method nuevoEstado() = auto
  
}

object ladrllo {
    var property cantidad = 0 // getter y setter(property)

    method peligrocidad() = 2
    method peso() = 2 * cantidad
    /*method cantidad(unValor) { (setter)
        cantidad = unValor
    }
    method cantidad() = cantidad (getter)
    property reemplasa ambos metodos
    */

}
object arena {
    var property peso = 0
    method peligrocidad() = 1  
  
}
object bateriaAtiaera {
    var tieneMisiles = true 
    method peso() = if(tieneMisiles) 300 else 200
    method peligrocidad(){
        if(tieneMisiles){
            100
        }else{
            0
        } //if(tieneMisiles) 100 else 0 (exprecion ternaria
    }
    method cargarMisiles() {
        tieneMisiles = true
      
    } 
    method descargarMisiles(){
        tieneMisiles = false
    }
  
}

object contenedor {
    const contenido = [] 
    method peso() = 100 + contenido.sum({p=>p.peso()})
    method pligrocidad() = if(contenido.isEmpty()) 0 
    else contenido.max({p=>p.peligrocidad()}).peligrociad()
    
    }







































  








