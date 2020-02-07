require 'test_helper'

# https://rubyplus.com/articles/3111-Model-Tests-in-Rails-5
# Devise se carga los tests, hay que quitar los fixtures de usuarios
class CategoriaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "No se debería de poder crear una categoria con el nombre vacío" do
    cat = Categoria.new(nombre: '')
    assert_equal false, cat.valid?
  end

  test "Debería de poder crear una categoria con un nombre único" do
    cat = Categoria.create(nombre: 'Unica1')
    assert_equal false, cat.id.blank?
    # cat.destroy
  end

  test "Debería de haber una categoria mas al crear una categoria" do
    num_categorias_antes = Categoria.all.count
    cat = Categoria.create(nombre: 'Cat2')
    num_categorias_despues = Categoria.all.count
    assert_equal num_categorias_antes, num_categorias_despues-1
    # cat.destroy
  end
end
