import wollok.game.*
import prota.*
import direcciones.*
import mezclador.*
import ingredientes.*


object bebida {
    var bebibasDeMenu = [mojito]

    method bebibaAleartorio() {
        return 
      
    }
  
}

object mojito {
    const ingredientesQuetiene = [jugoDeLimon, azucar]
    const nombre = "mojito"

    method ingredientesNecesarios() {
        return ingredientesQuetiene
      
    }
  
}