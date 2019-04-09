require "application_system_test_case"

class ComidasTest < ApplicationSystemTestCase
  setup do
    @comida = comidas(:one)
  end

  test "visiting the index" do
    visit comidas_url
    assert_selector "h1", text: "Comidas"
  end

  test "creating a Comida" do
    visit comidas_url
    click_on "New Comida"

    fill_in "Categoria", with: @comida.categoria
    fill_in "Detalle", with: @comida.detalle
    fill_in "Nombre", with: @comida.nombre
    fill_in "Precio", with: @comida.precio
    click_on "Create Comida"

    assert_text "Comida was successfully created"
    click_on "Back"
  end

  test "updating a Comida" do
    visit comidas_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @comida.categoria
    fill_in "Detalle", with: @comida.detalle
    fill_in "Nombre", with: @comida.nombre
    fill_in "Precio", with: @comida.precio
    click_on "Update Comida"

    assert_text "Comida was successfully updated"
    click_on "Back"
  end

  test "destroying a Comida" do
    visit comidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comida was successfully destroyed"
  end
end
