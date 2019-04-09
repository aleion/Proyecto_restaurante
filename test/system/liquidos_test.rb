require "application_system_test_case"

class LiquidosTest < ApplicationSystemTestCase
  setup do
    @liquido = liquidos(:one)
  end

  test "visiting the index" do
    visit liquidos_url
    assert_selector "h1", text: "Liquidos"
  end

  test "creating a Liquido" do
    visit liquidos_url
    click_on "New Liquido"

    fill_in "Categoria", with: @liquido.categoria
    fill_in "Detalle", with: @liquido.detalle
    fill_in "Nombre", with: @liquido.nombre
    fill_in "Precio", with: @liquido.precio
    click_on "Create Liquido"

    assert_text "Liquido was successfully created"
    click_on "Back"
  end

  test "updating a Liquido" do
    visit liquidos_url
    click_on "Edit", match: :first

    fill_in "Categoria", with: @liquido.categoria
    fill_in "Detalle", with: @liquido.detalle
    fill_in "Nombre", with: @liquido.nombre
    fill_in "Precio", with: @liquido.precio
    click_on "Update Liquido"

    assert_text "Liquido was successfully updated"
    click_on "Back"
  end

  test "destroying a Liquido" do
    visit liquidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Liquido was successfully destroyed"
  end
end
