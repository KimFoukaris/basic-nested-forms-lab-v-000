class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
    @recipe = Recipe.ingredients.build(name: 'Give it a name')
  end

  def create
  end
end
