class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    # respond_to do |format|
      if @cocktail.save
        # format.html { redirect_to @cocktail, notice: 'cocktail was successfully created.' }
        # format.json { render :show, status: :created, location: @cocktail }
        redirect_to root_path
      else
        # format.html { render :new }
        # format.json { render json: @cocktail.errors, status: :unprocessable_entity }
        render :new
      end
    # end
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(params[:id])
    else
      render :show
    end
    # raise
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

end
