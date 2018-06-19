class RentsController < ApplicationController
  def index
    @rents=Rent.all
  end

  def new
    @rent=Rent.new(rent_params)
  end

  def show
  end

  def assign
    r=Rent.new(rent_params)
    r.property_id=params[:property_id]
    r.user_id=current_user.id
    if r.save
      redirect_to "/rents"
    else
      render "/"
    end
  end

  def edit
  end

  private

  def rent_params
    params.require(:rent).permit(:user_id, :property_id, :price, :status, :rent_date, :devolution_date)
  end

end
