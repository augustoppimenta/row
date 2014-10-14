class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  # GET /animals
  # GET /animals.json
  def index
    @animals = Animal.all
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
      if(@animal.race_id ==1 && @animal.age >= 15 && @animal.peso >= 330)
        flash[:notice] = "ATENÇÃO: Esta novilha pode ser liberada para reprodução!"
      elsif(@animal.race_id ==2 && @animal.age >= 24 && @animal.peso >= 330)
        flash[:notice] = "ATENÇÃO: Esta novilha pode ser liberada para reprodução!"
      elsif(@animal.race_id ==3 && @animal.age >= 20 && @animal.peso >= 320)
        flash[:notice] = "ATENÇÃO: Esta novilha pode ser liberada para reprodução!"
      elsif(@animal.race_id ==4 && @animal.age >= 15 && @animal.peso >= 230)
        flash[:notice] = "ATENÇÃO: Esta novilha pode ser liberada para reprodução!"
      elsif(@animal.race_id ==14 && @animal.age >= 20 && @animal.peso >= 270)
        flash[:notice] = "ATENÇÃO: Esta novilha pode ser liberada para reprodução!"
      end
  end

  # GET /animals/new
  def new
    @animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to animals_url, notice: 'Animal cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal, notice: 'Animal atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url, notice: 'Animal excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal
      @animal = Animal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:age, :peso, :race_id)
    end
end
