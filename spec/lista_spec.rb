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
    puts b_l.to_s
  end
  
  it "# comprobando insertar desde cita" do
   L1 = Lista::Lista.new()
   C = Cita::Cita.new()
   C.insertar(LIBRO_A)
   C.mostrar()
  end
end


