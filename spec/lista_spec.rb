require 'spec_helper'
require 'lista'

describe '# PRUEBA' do
    LIBRO_A = Libro::Libro.new()
    LIBRO_B = Libro::Libro.new()
    LIBRO_C = Libro::Libro.new()
    LIBRO_A.setA(%w{cristina tosco daniel daher Vanessa gonzalez Laura martin})
    LIBRO_B.setA(%w{Pepito Grillo})
    LIBRO_C.setA(%w{Ana Anibal})
    
it "# comprobando ordenar por apellido" do
 L = Lista::Lista.new()
   
    L.insert(LIBRO_A)
    L.insert(LIBRO_B)
    L.insert(LIBRO_C)
    b_l=L.sort_by{ |f| [f.a[1]] }  #ordenar alfabeticamente por apellido
    #puts b_l.to_s
  end
  
  it "# comprobando insertar desde cita" do
   L1 = Lista::Lista.new()
   C = Cita::Cita.new()
   C.insertar(LIBRO_A)
  # C.mostrar()
  end
  
  it "# Cita ordenada por apellido" do
       LIBRO_A1 = Libro::Libro.new()
    LIBRO_B1 = Libro::Libro.new()
    LIBRO_C1 = Libro::Libro.new()
    LIBRO_D1 = Libro::Libro.new()

    LIBRO_A1.setA(%w{cristina tosco daniel daher Vanessa gonzalez Laura martin})
    LIBRO_B1.setA(%w{Pepito Grillo})
    LIBRO_C1.setA(%w{Ana Anibal})
    LIBRO_C1.setFecha(1500)

    LIBRO_D1.setA(%w{Ana Anibal})
    LIBRO_D1.setFecha(1900)

      C1 = Cita::Cita.new()
  # C1.insertar(LIBRO_A)

    C1.insertar(LIBRO_A1)
    C1.insertar(LIBRO_B1)
    C1.insertar(LIBRO_C1)
    C1.insertar(LIBRO_D1)

    C1.ordenar()
    C1.mostrar()
    
    #puts b_l.to_s
  end
  
end


