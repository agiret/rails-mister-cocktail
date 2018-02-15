class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = Dose.all
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    respond_to do |format|
      format.html { redirect_to doses_url, notice: 'dose was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])

    @dose.cocktail = @cocktail
    # @dose.save
    # redirect_to cocktail_path(@cocktail)
    # p @dose
    respond_to do |format|
      if @dose.save
        # p "coucoucoucocu"
        format.html { redirect_to @cocktail, notice: 'dose was successfully created.' }
        format.json { render :show, status: :created, location: @cocktail }
      else
        # p "totototototototo"
        # p @dose.errors
        format.html { render :new }
        format.json { render json: @dose.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end

end




# @review = Review.new(review_params)
#     @cocktail = Restaurant.find(params[:restaurant_id])

#     # # we need `restaurant_id` to asssociate review with corresponding restaurant
#     @review.restaurant = @restaurant
#     # @review.save
#     # redirect_to restaurant_path(@restaurant)
#     p @review

#     respond_to do |format|
#       if @review.save
#         p "coucoucoucocu"
#         format.html { redirect_to @restaurant, notice: 'Review was successfully created.' }
#         format.json { render :show, status: :created, location: @restaurant }
#       else
#         p "totototototototo"
#         p @review.errors
#         format.html { render :new }
#         format.json { render json: @review.errors, status: :unprocessable_entity }
#       end
#     end
