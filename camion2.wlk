object camion {
    var carga = []

    method cargar(unaCosa){ 
        carga.add(unaCosa)
        unaCosa.consecuenciaDeCarga()
        }
    method cargarvarias(unaLista){ 
        carga.addAll(unaLista)
        unaLista.forEach({c=>c.consecuenciaDeCarga()})
        }        
    method descargar(unaCosa) {carga.remove(unaCosa)}
    method pesoCarga() = carga.sum({p=>p.peso()})
    method pesoTotal() = 1000 + self.pesoCarga()
    method todoPesoPar() = carga.all({p=>p.peso().even()})
    method cosaQuePesa(unPeso) = carga.any({p=>p.peso() == unPeso})
    method primerCosaConPeligrocidad(unNivel) = carga.find({p=>p.peligrocidad() == unNivel})
    method todasLasCosaQueSupera(unNivel) = carga.filter({p=>p.peligrocidad() > unNivel}) 
    method cosasMasPeligrosasQue(unaCosa) = self.todasLasCosaQueSupera(unaCosa.peligrocidad())
    method estaExedido() = self.pesoTotal() > 2500
    method puedeCircularEnRuta(nivelDePeligrocidad) = 
    !self.estaExedido() && self.todasLasCosaQueSupera(nivelDePeligrocidad).isEmpty()
    method tieneAlgoQuePesaEntre(min,max) = carga.any({p=>p.peso().between(min, max)})
    method cosaMasPesada() = carga.max({p=>p.peso()}) 




}