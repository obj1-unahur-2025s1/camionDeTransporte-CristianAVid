object cosas {
    method peso() = 10
    method peligrocidad() = 1


    
}
object knightRider {
    method peso() = 500
    method peligrocidad() = 10
    method bulto() = 1 
    method consecuenciaDeCarga() {} 

}

object bumblebee {
    var estado = auto
    method peso() = 800
    method peligrocidad() = estado.peligrocidad()
    method transformate() {
        estado = estado.nuevoEstado()
      
    }
    method bulto() = 2
    method consecuenciaDeCarga() {}
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
    method bulto() = if(cantidad<=100) 1 else if(cantidad.between(101, 300)) 2 else 3 
    method consecuenciaDeCarga() {}
}
object arena {
    var property peso = 0
    method peligrocidad() = 1
    method bulto() = 1   
    method consecuenciaDeCarga() { peso = (peso-10).max(0)}
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
    method bulto() = if(tieneMisiles) 2 else 1
    method consecuenciaDeCarga() {self.cargarMisiles()}
    
}

object contenedor {
    const contenido = [] 
    method peso() = 100 + contenido.sum({p=>p.peso()})
    method pligrocidad() = if(contenido.isEmpty()) 0 
    else contenido.max({p=>p.peligrocidad()}).peligrociad()
    method agregarCosa(unaCosa) { contenido.add(unaCosa)}
    method quitarCosa(unaCosa) { contenido.remove(unaCosa)}
    method agregarlistadeCosa(unaLista) { contenido.addAll(unaLista)}
    //method bulto() = 
    method consecuenciaDeCarga() {contenido.forEach({c=>c.consecuenciaDeCarga()})}
    
    }
    object reciduosRadioactivos {
        var property peso = 0

        method peligrocidad() = 200 
        method bulto() = 1 
        method consecuenciaDeCarga() {peso += 15}
    }

    object embalajeDeSeguridad {
        var property cosaQueEnvuelve = arena
        method peso() =  cosaQueEnvuelve.peso()
        method peligrocidad() = cosaQueEnvuelve.peligrocidad() * 0.5
        method bulto() = 2
        method consecuenciaDeCarga() {}
        }




