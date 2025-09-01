object tom {
    var energia = 50
    method comerUnRaton(raton){
        energia = energia + 12 + raton.peso()
    }

    method correr(metros){
        energia = energia - metros / 2
    }

    method velocidadMaxima() = 5 + energia / 10

    method puedeCazar(distancia) {
        return energia - distancia / 2 >= 0
    }

    method cazarSiPuede(raton, distancia) {
        if (self.puedeCazar(distancia)) {
            self.correr(distancia)
            self.comerUnRaton(raton)
        }
    }


}

object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAnios(){
        edad = edad + 1
    }

    method velocidadMaxima() = 15.2
    
}

object nibbles {
    method peso() = 35

    method velocidadMaxima() = 18.7
}

object perez {
    var cantidadDeDientes = 4

    method recogerDiente(){
        cantidadDeDientes = cantidadDeDientes + 1
    }

    method  vaciarBolso() {
        cantidadDeDientes = 0
    }

    method peso() = 10 + cantidadDeDientes*2
}

// Inventar otro ratón
object chizzy{
    method peso() = 45

    method velocidadMaxima() = 16.7
}