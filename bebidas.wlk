import wollok.game.*
import prota.*
import direcciones.*
import mezclador.*
import ingredientes.*


object mojito {
    const ingredientesQuetiene = [jugoDeLimon, azucar]
    const nombre = "mojito"

    method ingredientesNecesarios() {
        return ingredientesQuetiene
      
    }

    method nombreBebida() {
        return nombre
      
    }
  
}