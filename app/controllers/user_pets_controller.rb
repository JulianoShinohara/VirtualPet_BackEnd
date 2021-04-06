class UserPetsController < ApplicationController
  before_action :set_user_pet, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  
  # GET /user_pets or /user_pets.json
  def index
    @user_pets = UserPet.all
  end

  # GET /user_pets/1 or /user_pets/1.json
  def show
  end

  # GET /user_pets/new
  def new
    @user_pet = UserPet.new
  end

  # GET /user_pets/1/edit
  def edit
  end

  # POST /user_pets or /user_pets.json
  def create
    @user_pet = UserPet.new(user_pet_params)

    respond_to do |format|
      if @user_pet.save
        format.html { redirect_to @user_pet, notice: "User pet was successfully created." }
        format.json { render :show, status: :created, location: @user_pet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_pets/1 or /user_pets/1.json
  def update
    respond_to do |format|
      if @user_pet.update(user_pet_params)
        format.html { redirect_to @user_pet, notice: "User pet was successfully updated." }
        format.json { render :show, status: :ok, location: @user_pet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_pets/1 or /user_pets/1.json
  def destroy
    @user_pet.destroy
    respond_to do |format|
      format.html { redirect_to user_pets_url, notice: "User pet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_pet
      @user_pet = UserPet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_pet_params
      params.require(:user_pet).permit(:user_id, :pet_id)
    end
end
