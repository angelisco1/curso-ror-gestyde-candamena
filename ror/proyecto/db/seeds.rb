# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


categorias = ['Desconocida', 'Verdura', 'Carne', 'Pescado', 'Lácteo', 'Legumbre', 'Especias', 'Fruta']

Categoria.create(categorias.map{ |cat| {nombre: cat} })

ingredientes = ['Leche', 'Tomate', 'Pechuga de pollo', 'Salmón', 'Cebolla', 'Oregano', 'Solomillo de cerdo', 'Pimiento verde', 'Berenjena', 'Lubina', 'Queso de cabra', 'Garbanzos', 'Oregano', 'Platano', 'Naranja', 'Calamares']

Ingrediente.create(ingredientes.map{ |ing| {nombre: ing} })