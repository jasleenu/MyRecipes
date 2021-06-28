class RecipesController < ApplicationController
  
  def home
    @recipes = Recipe.all
  end
  
  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.chef = Chef.find(2)
    if @recipe.save
      flash[:success] ='Your recipe was created successfully!'
      redirect_to recipes_path
    else
      render :new
    end
  end
  
  def index
    @recipes = Recipe.all
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  
  def edit
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      flash[:success] ='Your recipe was updated successfully!'
      redirect_to recipe_path(@recipe)
    else
      render :edit
    end
  end
  private 
  
  def recipe_params
   params.require(:recipe).permit(:recipename,:description, :summary)
  end
end
