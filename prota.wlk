import bebidas.*
import wollok.game.*
import direcciones.*
import mezclador.*
import ingredientes.*

object protagonista {
    var property bebidaActual = null
    var property ingredientes = []
    var property capacidadIngredientes = 4 
    var property bebidasQuePuedeLlevar = 1

    var property orden = null
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

    method ingredientesQueTiene() {
        game.say (self, "[" + " " + self.nombreIngredientes() + "]")
      
    }
    method nombreIngredientes() {
        var nombres = ""
        ingredientes.forEach({ingre => nombres = nombres + ingre.nombreIngre() + ", "})
        return nombres
      
    }


    method agregarBebida(bebida) {
        bebidaActual = bebida
      
    }

    method interactuarCon() {
        const interactuarCon = self.loQueTengoDelante()
        self.interactuar(interactuarCon)

    }

    method loQueTengoDelante() {
        return game.uniqueCollider(self)
      
    }

    method interactuar(interactuable) {
        interactuable.interaccion(self)

      
    }

    method validadCapacidadIngre() {
        if (ingredientes.size()==capacidadIngredientes) {
            self.error("no puedo llevar mas de 4 ingredientes a la vez")
        }
      
    }
    method validarLibreDeBebidas() {
        if (not (bebidaActual == null)) {
            self.error("no puedo llevar mas de una bebida a la vez")
        }
      
    }
    
  
}
