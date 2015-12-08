module Libro

 
  class Libro
     include Comparable, Enumerable
    attr_accessor :a,:t, :s, :e, :ed, :f, :vect, :n_pag
    
   
    def initialize()
     
      @a = nil
      @t = 0
      @s = 0
      @e = 0
      @ed = 0
      @f = 0
      @vect = nil
      @n_pag = 0
    end
    #########################################
  
    
    def setA(a)
      @a=a
    end
    
    def setT(t)
      @t=t
    end
    
    def setS(s)
      @s=s
    end
    
    def setEdt(edt)
      @e=edt
    end
    
    def setEdc(edc)
      @ed=edc
    end
    
    def setFecha(f)
      @f=f
    end
    
    def setNum(n)
      @vect=n
    end
    
    def setNp(nn)
      @n_pag=nn
    end
    
    #########################################
    def geta
      return "#{@a}"
    end

    def gett
      return "#{@t}"
    end

    def getss
      return "#{@s}"
    end
    
    def geteditorial
      return "#{@e}"
    end
    
    def getedicion
      return "#{@ed}"
    end
    
    def getfecha
      return "#{@f}"
    end
    
    def getISBN
      return "#{@vect}"
    end
    
    def formatea()
        puts "#{@t}, #{@a}\n#{@s}\n#{@e}; #{@ed} #{@f}\n#{@vect}"
        return "#{@t}, #{@a}\n#{@s}\n#{@e}; #{@ed} #{@f}\n#{@vect}"
    end

   def <=> (other)
       return nil unless other.kind_of? Libro
       if @a == other.a
            @f <=> other.f
         
        else
           @a <=> other.a

       end
   
   end
    
   
    
    
  end
  
 class Revista < Libro
    
    attr_reader :nombrerevista
    
    def initialize(n)
      @nombrerevista=n
      super()
    end
    
    def <=>(other)
      @nombrerevista<=>other.nombrerevista
      super()
    end
    
    def == (other)
      if  @nombrerevista == other.nombrerevista
        super
        #return true
      else
        return false
      end
    end
    
  end
  
  class Periodico < Libro
    attr_reader :articulo
    def initialize(columna)
      @articulo=columna
      super()
    end
    
    def <=>(other)
      @articulo<=>other.articulo
      super()
    end
    
    def == (other)
      if  @articulo == other.articulo
        super
        #return true
      else
        return false
      end
    end
    
  end
  
  class Documento < Libro
    attr_reader :url
    def initialize(dir)
      @url=dir
      super()
    end
    
    def <=>(other)
      @url<=>other.url
      super()
    end
    
    def == (other)
      if  @url == other.url
        super
        #return true
      else
        return false
      end
    end
    
  end
  
end