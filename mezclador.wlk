import wollok.game.*
import prota.*
import direcciones.*
import bebidas.*
import ingredientes.*


object mezcladorBebidas {
    const barte = protagonista
    var bebibasDeMenu = [mojito]
    var property position = game.at(0,8)

    method image() {
        return "nido.png"
      
    }

    method prepararBebida(ingredientesDados) {
        const bebidaConIngre = self.bebidaConEstosIngredientes(ingredientesDados)
        self.validarBebida(bebidaConIngre)
        barte.agregarBebida(bebidaConIngre.get(0))
      
    }

    method bebidaConEstosIngredientes(ingre) {
        return bebibasDeMenu.filter({ bebida => bebida.ingredientesNecesarios() == ingre })
      
    }

    method validarBebida(bebidas) {
        if(bebidas.isEmpty()) {
            self.error("no existe una bebida con estos ingredientes")
        }
      
    }
  
}