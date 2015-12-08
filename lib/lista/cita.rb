require "lista/lista"
require "lista/libro"

module Cita


 
  class Cita
      include Enumerable
attr_accessor :L_ordenada
    def initialize()
        @L=Lista::Lista.new
        @L_ordenada=nil
    end
    
    
    
  def insertar(valor)
        if valor.instance_of?Libro::Revista
            valor.nombrerevista=valor.nombrerevista.capitalize
            cant=valor.nombrerevista.length
                for i in(0..(cant - 1))
                 if valor.nombrerevista[i] == " "
                     valor.nombrerevista[i + 1]=valor.nombrerevista[i + 1].capitalize
                    end
                 end
        end
        
         if valor.instance_of?Libro::Periodico
            valor.articulo=valor.articulo.capitalize
            cant=valor.articulo.length
                for i in(0..(cant - 1))
                 if valor.articulo[i] == " "
                     valor.articulo[i + 1]=valor.articulo[i + 1].capitalize
                    end
                 end
        end
        
        
        if valor.instance_of?Libro::Libro
                   # valor.t[0][0]="#{valor.t[0][0].capitalize}"

        cant=valor.a.length
        copia=valor.a
       # puts valor.t[0][0]
     valor.t= valor.t.capitalize
        valor.a= "#{valor.a[1].capitalize}, #{valor.a[0][0].capitalize}."
        if cant > 2
           for i in(2..(cant-1))
                if i%2 == 0  #los elementos pares
                    aux="#{copia[i][0].capitalize}"
                    valor.a=valor.a + ' & ' + "#{copia[ i + 1 ].capitalize} " + aux + '.'
                end
           end
            #puts valor.a
        end
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
       @L_ordenada= @L.sort_by do
           |f| [f.a[0],-f.f,f.t[0]] 
           
           
           end#ordenar alfabeticamente por apellido
     
    end
    
  
  end
  
end