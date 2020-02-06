# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

recetas = [
  { nombre: 'Ajoatao',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 4,
    publica: true
  },
  {
    nombre: 'Escalicabra',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 8,
    publica: true
  },
  {
    nombre: 'Solomillo encabramelizado',
    descripcion: "Paso 1: ...\nPaso 2: ...\nPaso 3: ...\nY esto es todo. A probarla.",
    puntuacion: 10,
    publica: false
  }
]

Receta.create(recetas)