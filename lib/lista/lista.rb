Nodo = Struct.new(:v, :n, :b)

module Lista
    
    class Lista
        include Enumerable
        attr_reader :cabeza, :nodo_ini, :nodo_act, :contar, :vacia, :tail
        
        def initialize()
            @cabeza = nil
            @nodo_ini = nil
            @nodo_act = nil 
            @contar = 0
            @vacia = 0
            @tail = nil
        end
        
         def each 
             aux = @nodo_ini
                 while aux[1]!=nil do
                     yield aux[0]
                     aux = aux[1]
                 end
             yield @nodo_act[0]
         end
        
        
        def insert(valor)
            @vacia = @vacia + 1
            if @contar == 0
                    @nodo_ini = Nodo.new(valor, nil, nil)
                    @contar=1
                    @tail=nodo_ini
                    @nodo_act = @nodo_ini
                    @cabeza = @nodo_act


            else
                if @contar == 1
    
                     nodo_act[2]=nodo_ini
    
                end       
                               
                nodo_aux = Nodo.new(valor, nil, @nodo_act)

                @nodo_act[1] = nodo_aux
                @nodo_act = nodo_aux
                @cabeza = @nodo_act

                
            end
        end
        
        def mostrar
           
           puts "Nodo inicial(primero): #{@nodo_ini}" 
           
           
        end
        
        def extraer
            @nodo_ini=@nodo_ini[1]
            @nodo_ini[2]=nil
            @tail=@nodo_ini
        end
        
    end 
    
end