require "lista/lista"
require "lista/libro"

module Cita


 
  class Cita
      include Enumerable

    def initialize()
        @L=Lista::Lista.new
        @L_ordenada=nil
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
           # puts valor.a
        end
        @L.insert(valor)
    end
    
    def mostrar()
      ind=@L_ordenada.length
        for i in(0..(ind-1))
        
            @L_ordenada[i].formatea()
        
        end
             
        #puts @L_ordenada.formatean()
    end
    
    
    def ordenar
       @L_ordenada= @L.sort_by{ |f| [f.a[0],-f.f] }  #ordenar alfabeticamente por apellido
     
    end
    
  
  end
  
end