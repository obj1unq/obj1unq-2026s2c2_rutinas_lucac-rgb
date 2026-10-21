class Rutina {

    method caloriasConsumidas(tiempo) = 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()

    method descanso(tiempo)
    method intensidad()

}

class Running inherits Rutina {

    const intensidadConfigurable

    override method descanso(tiempo) = if(tiempo > 20) 5 else 2

    override method intensidad() = intensidadConfigurable

}

class Maraton inherits Running {

    override method caloriasConsumidas(tiempo) = super(tiempo)*2

}

class Remo inherits Rutina {

    override method intensidad() = 1.3

    override method descanso(tiempo) = tiempo/5

}

class RemoDeCompeticion inherits Remo {

    override method intensidad() = 1.7

    override method descanso(tiempo) = (super(tiempo)-3).max(2)

}