
=begin
Un comentario de
muchas lineas
=end


class Coche
  # Getters
  attr_reader :marca
  # Setters
  attr_writer :marca

  # Getter + Setter
  attr_accessor :modelo

  # Constructor: inicializa el objeto coche
  def initialize marca, modelo
    @marca = marca
    @modelo = modelo
  end

  # def marca
  #   @marca
  # end

  # def modelo= nuevoValor
  #   @modelo = nuevoValor
  # end

  def show_info
    muestra_algo()
    puts "#{@marca} #{@modelo}"
  end

  private
    def muestra_algo
      puts "Algo"
    end

  # protected
  # public
end

tesla = Coche.new("Tesla", "Roadster")
tesla.show_info
tesla.modelo = "S3"
tesla.show_info
# tesla.muestra_algo

class Persona
  attr_reader :nombre, :apellidos

  def initialize nombre, apellido, dni, fecha_nacimiento = Time.now
    @nombre = nombre
    @apellido = apellido
    @dni = dni
    @fecha_nacimiento = fecha_nacimiento
  end

  def nombre_completo
    "#{@nombre} #{@apellido}"
  end

  protected
    def info
      "#{@nombre} #{@apellido}\nEdad: #{get_age} años\nDni: #{@dni}\n"
    end

    # def aplicar_descuento
    #   300
    # end

  private
    attr_reader :fecha_nacimiento, :dni

    def get_age
      Time.now.year - @fecha_nacimiento.year
    end
end

class PersonaTrabajadora < Persona
  def initialize nombre, apellido, dni, fecha_nacimiento, puesto_trabajo
    super(nombre, apellido, dni, fecha_nacimiento)
    @puesto_trabajo = puesto_trabajo
  end

  # def aplicar_descuento
  #   super - 20%
  # end

  def info
    super + "Puesto de trabajo: #{@puesto_trabajo}"
  end
end

koz = PersonaTrabajadora.new('Mike', 'Kozinski', '00000000T', Time.new(1979, 7, 2), 'ATF special agent and undercover Mongols Sargent-at-Arms')
puts koz.info()