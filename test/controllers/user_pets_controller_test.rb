require "test_helper"

class UserPetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_pet = user_pets(:one)
  end

  test "should get index" do
    get user_pets_url
    assert_response :success
  end

  test "should get new" do
    get new_user_pet_url
    assert_response :success
  end

  test "should create user_pet" do
    assert_difference('UserPet.count') do
      post user_pets_url, params: { user_pet: { pet_id: @user_pet.pet_id, user_id: @user_pet.user_id } }
    end

    assert_redirected_to user_pet_url(UserPet.last)
  end

  test "should show user_pet" do
    get user_pet_url(@user_pet)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_pet_url(@user_pet)
    assert_response :success
  end

  test "should update user_pet" do
    patch user_pet_url(@user_pet), params: { user_pet: { pet_id: @user_pet.pet_id, user_id: @user_pet.user_id } }
    assert_redirected_to user_pet_url(@user_pet)
  end

  test "should destroy user_pet" do
    assert_difference('UserPet.count', -1) do
      delete user_pet_url(@user_pet)
    end

    assert_redirected_to user_pets_url
  end
end
