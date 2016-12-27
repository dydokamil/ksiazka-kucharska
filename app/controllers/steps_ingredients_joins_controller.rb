class StepsIngredientsJoinsController < ApplicationController
  before_action :set_steps_ingredients_join, only: [:show, :edit, :update, :destroy]

  # GET /steps_ingredients_joins
  # GET /steps_ingredients_joins.json
  def index
    @steps_ingredients_joins = StepsIngredientsJoin.all
  end

  # GET /steps_ingredients_joins/1
  # GET /steps_ingredients_joins/1.json
  def show
  end

  # GET /steps_ingredients_joins/new
  def new
    @steps_ingredients_join = StepsIngredientsJoin.new
  end

  # GET /steps_ingredients_joins/1/edit
  def edit
  end

  # POST /steps_ingredients_joins
  # POST /steps_ingredients_joins.json
  def create
    @steps_ingredients_join = StepsIngredientsJoin.new(steps_ingredients_join_params)

    respond_to do |format|
      if @steps_ingredients_join.save
        format.html { redirect_to @steps_ingredients_join, notice: 'Steps ingredients join was successfully created.' }
        format.json { render :show, status: :created, location: @steps_ingredients_join }
      else
        format.html { render :new }
        format.json { render json: @steps_ingredients_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps_ingredients_joins/1
  # PATCH/PUT /steps_ingredients_joins/1.json
  def update
    respond_to do |format|
      if @steps_ingredients_join.update(steps_ingredients_join_params)
        format.html { redirect_to @steps_ingredients_join, notice: 'Steps ingredients join was successfully updated.' }
        format.json { render :show, status: :ok, location: @steps_ingredients_join }
      else
        format.html { render :edit }
        format.json { render json: @steps_ingredients_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps_ingredients_joins/1
  # DELETE /steps_ingredients_joins/1.json
  def destroy
    @steps_ingredients_join.destroy
    respond_to do |format|
      format.html { redirect_to steps_ingredients_joins_url, notice: 'Steps ingredients join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steps_ingredients_join
      @steps_ingredients_join = StepsIngredientsJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steps_ingredients_join_params
      params.require(:steps_ingredients_join).permit(:amount, :fk_ingredient_id, :fk_step_id)
    end
end
