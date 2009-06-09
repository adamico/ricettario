class RicetteController < ApplicationController
  def index
    @ricette = Ricetta.all
  end

  def show
    @ricetta = Ricetta.find(params[:id]) 
  end

  def new
    @ricetta = Ricetta.new
    @ricetta.ingredienti.build
  end

  def create
    @ricetta = Ricetta.new(params[:ricetta])

    if @ricetta.save
      flash[:notice] = "La ricetta è stata creata."
      redirect_to @ricetta
    else
      render :action => 'new'
    end
  end

  def edit
    @ricetta = Ricetta.find(params[:id])
    #@ricetta.ingredienti.build
  end

  def update
    @ricetta = Ricetta.find(params[:id])
    @ricetta.attributes = params[:ricetta]
    if @ricetta.save
      flash[:notice] = "La ricetta è stata modificata."
      redirect_to @ricetta
    else
       render :action => 'edit'
    end
  end

  def destroy
    @ricetta = Ricetta.find(params[:id])
    @ricetta.destroy
    flash[:notice] = "La ricetta è stata eliminata."
    redirect_to ricette_path
  end
end
