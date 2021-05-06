require "application_system_test_case"

class PetsTest < ApplicationSystemTestCase
  setup do
    @pet = pets(:one)
  end

  test "visiting the index" do
    visit pets_url
    assert_selector "h1", text: "Pets"
  end

  test "creating a Pet" do
    visit pets_url
    click_on "New Pet"

    fill_in "Atual state", with: @pet.atual_state
    fill_in "Clean", with: @pet.clean
    fill_in "Happiness", with: @pet.happiness
    fill_in "Helthy", with: @pet.helthy
    fill_in "Hungry", with: @pet.hungry
    fill_in "Life time", with: @pet.life_time
    fill_in "Nome", with: @pet.nome
    fill_in "Skin", with: @pet.skin
    fill_in "Sleep", with: @pet.sleep
    click_on "Create Pet"

    assert_text "Pet was successfully created"
    click_on "Back"
  end

  test "updating a Pet" do
    visit pets_url
    click_on "Edit", match: :first

    fill_in "Atual state", with: @pet.atual_state
    fill_in "Clean", with: @pet.clean
    fill_in "Happiness", with: @pet.happiness
    fill_in "Helthy", with: @pet.helthy
    fill_in "Hungry", with: @pet.hungry
    fill_in "Life time", with: @pet.life_time
    fill_in "Nome", with: @pet.nome
    fill_in "Skin", with: @pet.skin
    fill_in "Sleep", with: @pet.sleep
    click_on "Update Pet"

    assert_text "Pet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pet" do
    visit pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pet was successfully destroyed"
  end
end
