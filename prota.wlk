import wollok.game.*

object protagonista {
    var property position = game.at(0,1)

    method image() {
        return "silvestre.png"
      
    }

    method mover(direccion) {
        if (!self.estaEnLimite(direccion)) {
            position = direccion.siguiente(position)
        }
        
      
    }

    method estaEnLimite(direccion) {
        return direccion.borde(position)
      
    }
  
}
