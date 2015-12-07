require "lista/lista"
require "lista/libro"

module Cita


 
  class Cita
      
    def initialize()
        @L=Lista::Lista.new
        
    end
    
    def insertar(valor)
        cant=valor.a.length
        copia=valor.a
        valor.a= "#{valor.a[1].capitalize} #{valor.a[0][0].capitalize}."
        if cant > 2
           for i in(2..(cant-1))
                if i%2 == 0  #los elementos pares
                    aux="#{copia[i][0].capitalize}"
                    valor.a=valor.a + ' & ' + "#{copia[ i + 1 ].capitalize} " + aux + '.'
                end
           end
            puts valor.a
        end
        @L.insert(valor)
    end
    
    def mostrar
        @L.mostrar 
    end
    
    def formatea()
       # puts 
    end
  end
  
end