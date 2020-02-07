# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usuarios = [
  {:nombre => 'Charly', :apellidos => 'Falco', :username => 'cfalco', :admin => true},
  {:nombre => 'Malia', :apellidos => 'Tate', :username => 'malita'},
  {:nombre => 'Mike', :apellidos => 'Kozinsky', :username => 'koz'}
]

Usuario.create(usuarios)

categorias = ['Desconocida', '', 'Carne', 'Pescado', 'Lácteo', 'Legumbre', 'Especias', 'Fruta']

Categoria.create(categorias.map{ |cat| {nombre: cat} })

ingredientes = ['Leche', 'Tomate', 'Pechuga de pollo', 'Salmón', 'Cebolla', 'Oregano', 'Solomillo de cerdo', 'Pimiento verde', 'Berenjena', 'Lubina', 'Queso de cabra', 'Garbanzos', 'Oregano', 'Platano', 'Naranja', 'Calamares']

Ingrediente.create(ingredientes.map{ |ing| {nombre: ing} })

recetas = [
  { nombre: 'Ajoatao',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 4,
    publica: true,
    usuario_id: 1
  },
  {
    nombre: 'Escalicabra',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 8,
    publica: true,
    usuario_id: 2
  },
  {
    nombre: 'Solomillo encabramelizado',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 10,
    publica: false,
    usuario_id: 3
  }
]

Receta.create(recetas)

ingredientes_recetas = [
  {
    receta_id: 2,
    ingrediente_id: 9,
    cantidad: '1/2',
  },
  {
    receta_id: 2,
    ingrediente_id: 8,
    cantidad: '1/2',
  },
  {
    receta_id: 2,
    ingrediente_id: 5,
    cantidad: '1/2',
  },
  {
    receta_id: 2,
    ingrediente_id: 11,
    cantidad: '1 trozo',
  },
  {
    receta_id: 3,
    ingrediente_id: 11,
    cantidad: '2 medallones/persona',
  },
  {
    receta_id: 3,
    ingrediente_id: 7,
    cantidad: '2 medallones/persona',
  }
]

IngredientesReceta.create(ingredientes_recetas);