class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def new
  end

  def create
    @pokemon = Pokemon.new(name: params[:name], image: params[:image], hp: params[:hp], attack: params[:attack], defense: params[:defense])
    @pokemon.save
  end

  def show
    @pokemon = Pokemon.find_by(id: params[:id])
  end

  def edit
    @pokemon = Pokemon.find_by(id: params[:id])
  end

  def update
    @pokemon = Pokemon.find_by(id: params[:id])
    @pokemon.assign_attributes(name: params[:name], image: params[:image], hp: params[:hp], attack: params[:attack], defense: params[:defense])
    @pokemon.save

    redirect_to "/pokemons"
  end

  def destroy
    @pokemon = Pokemon.find_by(id: params[:id])
    @pokemon.destroy

    redirect_to "/pokemons"
  end

end
