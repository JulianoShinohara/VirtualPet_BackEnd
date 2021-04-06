require "application_system_test_case"

class UserPetsTest < ApplicationSystemTestCase
  setup do
    @user_pet = user_pets(:one)
  end

  test "visiting the index" do
    visit user_pets_url
    assert_selector "h1", text: "User Pets"
  end

  test "creating a User pet" do
    visit user_pets_url
    click_on "New User Pet"

    fill_in "Pet", with: @user_pet.pet_id
    fill_in "User", with: @user_pet.user_id
    click_on "Create User pet"

    assert_text "User pet was successfully created"
    click_on "Back"
  end

  test "updating a User pet" do
    visit user_pets_url
    click_on "Edit", match: :first

    fill_in "Pet", with: @user_pet.pet_id
    fill_in "User", with: @user_pet.user_id
    click_on "Update User pet"

    assert_text "User pet was successfully updated"
    click_on "Back"
  end

  test "destroying a User pet" do
    visit user_pets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User pet was successfully destroyed"
  end
end
