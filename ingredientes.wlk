import wollok.game.*
import prota.*
import direcciones.*
import bebidas.*

object jugoDeLimon {
    var property position = game.at(0,3)
    var property nombreIngre = "juego de Limon"
    method image() {
        return "muro.png"
      
    }

    method interaccion(barte) {
        barte.validadCapacidadIngre()
        barte.ingredientes().add(self)
        game.say(barte, "agarraste jugo de limon")
      
    }
  
}

object azucar {
    var property position = game.at(0, 5)
    var property nombreIngre = "azucar"

    method image() {
        return "muro.png"
      
    } 

    method interaccion(barte) {
        barte.validadCapacidadIngre()
        barte.ingredientes().add(self)
        game.say(barte, "agarraste azucar")
      
    }
  
}