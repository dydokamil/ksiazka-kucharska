class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
    @recipe_steps = RecipeStep.where(recipe_id: @recipe)
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @all_info = {}

    @recipe_steps = RecipeStep.where(recipe_id: @recipe).order(:number)

    @amounts = []
    @ingredients_name = []

    @recipe_steps.each do |step|
      @joins = StepsIngredientsJoin.where(recipe_step_id: step)
      @joins.each do |join|
        if not join.has_attribute? :amount
          next
        else
          @ingredients_name.append(Ingredient.find(join.ingredient_id)[:name])
          @amounts.append join.amount
        end
      end

      if @ingredients_name.empty? and @amounts.empty?
        next
      end

      @ingredients = []

      @ingredients_name.zip(@amounts) do |name, amount|
        @ingredients.append([name, amount])
      end

      @all_info[step.number] = @ingredients
      @ingredients = []
      @ingredients_name = []

    end
    # 2/0
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
  end

  # GET /recipes/1/edit
  def edit
    @recipe_steps = RecipeStep.where(recipe_id: @recipe).order(:number)
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def recipe_params
    params.require(:recipe).permit(:name, :description)
  end

end
