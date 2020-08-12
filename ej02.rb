module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_accessor :nombre
    def initialize (nombre)
        @nombre=nombre
    end
end

class Ave<Animal
    include Habilidades::Volador
    include Alimentacion::Herbiboro
end

class Mamifero<Animal
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Insecto<Animal
    include Habilidades::Volador,
    Alimentacion::Herbiboro
end

class Pinguino<Ave
    include Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Paloma<Ave
    include Habilidades::Volador,
    Alimentacion::Herbiboro
end

class Pato<Ave
    include Habilidades::Caminante,
    Alimentacion::Herbiboro
end

class Perro<Mamifero
    include Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Gato<Mamifero
    include Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Vaca<Mamifero
    include Habilidades::Caminante,
    Alimentacion::Carnivoro
end

class Mosca<Insecto
    include Habilidades::Volador,
    Alimentacion::Carnivoro
end

class Mariposa<Insecto
    include Habilidades::Volador,
    Alimentacion::Herbiboro
end

class Abeja<Insecto
    include Habilidades::Volador,
    Alimentacion::Herbiboro
end














