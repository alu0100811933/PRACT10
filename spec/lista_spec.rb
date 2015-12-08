require 'spec_helper'
require 'lista'

describe '# PRUEBA' do
   
    
  it "# CLASE CITA" do
       LIBRO_A1 = Libro::Libro.new()
    LIBRO_B1 = Libro::Libro.new()
    LIBRO_C1 = Libro::Libro.new()
    LIBRO_D1 = Libro::Libro.new()
    LIBRO_E1 = Libro::Libro.new()


    LIBRO_A1.setA(%w{David Perez Daniel Daher Jorge Zamora})
    LIBRO_A1.setFecha(1605)
    LIBRO_A1.setT("que vivia un hidalgo de los de lanza en astillero")
    LIBRO_A1.setEdc("Primera edición")
    LIBRO_A1.setS("Serie 1")
    LIBRO_A1.setEdt("Planeta")



    LIBRO_E1.setA(%w{David Perez Daniel Daher Jorge Zamora})
    LIBRO_E1.setFecha(1605)
    LIBRO_E1.setT("el ingenioso hidalgo don Quijote de la Mancha")
    LIBRO_E1.setEdc("Primera edición")
    LIBRO_E1.setS("Serie 1")
    LIBRO_E1.setEdt("Santillana")
        

    LIBRO_B1.setA(%w{Miguel Cervantes})
    LIBRO_B1.setFecha(1615)
    LIBRO_B1.setT("no ha mucho tiempo")
    LIBRO_B1.setEdc("Segunda edición")
    LIBRO_B1.setS("Serie 2")
    LIBRO_B1.setEdt("Anaya")


    
    LIBRO_C1.setA(%w{Ana Anibal})
    LIBRO_C1.setFecha(2000)
    LIBRO_C1.setT("en un lugar de la mancha")
    LIBRO_C1.setEdc("120ª edición")
    LIBRO_C1.setS("Serie 2")
    LIBRO_C1.setEdt("Planeta")


  
    
    LIBRO_D1.setA(%w{Ana Anibal Pedro Diaz})
    LIBRO_D1.setFecha(1605)
    LIBRO_D1.setT("de cuyo nombre no quiero acordarme")
    LIBRO_D1.setEdc("Primera edición")
    LIBRO_D1.setS("Serie 3")
    LIBRO_D1.setEdt("Oxford")


    C1 = Cita::Cita.new()

    C1.insertar(LIBRO_A1)
    C1.insertar(LIBRO_E1)
    C1.insertar(LIBRO_B1)
    C1.insertar(LIBRO_C1)
    C1.insertar(LIBRO_D1)

    C1.ordenar()
    C1.mostrar()
    
    expect(C1.L_ordenada[0]).to eq(LIBRO_C1) 
    expect(C1.L_ordenada[1]).to eq(LIBRO_D1)
    expect(C1.L_ordenada[2]).to eq(LIBRO_B1)
    expect(C1.L_ordenada[3]).to eq(LIBRO_E1)
    expect(C1.L_ordenada[4]).to eq(LIBRO_A1)
    #puts b_l.to_s
  end
  
 
  
  it "# Comprobando mayúscula la primera letra nombres y colocación inversa" do
     expect(LIBRO_C1.geta).to eq("Anibal, A.")
   end
   
   
  
   it "# Comprobando hija revista" do
      r1=Libro::Revista.new("el poder de los números primos")
      C3 = Cita::Cita.new()
      C3.insertar(r1)
      expect(r1.nombrerevista).to eq("El Poder De Los Números Primos")
   end
   
    it "# Comprobando hija periodico" do
     p1=Libro::Periodico.new("el poder de los números primos")
     C4 = Cita::Cita.new()
      C4.insertar(p1)
       expect(p1.articulo).to eq("El Poder De Los Números Primos")
   end
   
   
  
end


