class RentsController < ApplicationController
  def index
    @rents=Rent.all
    if !current_admin
    redirect_to "/"
    end
  end

  def new
    @rent=Rent.new(rent_params)
  end

  def show
    if current_admin || current_user
    @claim=Claim.new
    @rent=Rent.find(params[:id])
  else
    redirect_to "/properties"
  end
end

  def assign
    @rent=Rent.new(rent_params)
    @rent.property_id=params[:property_id]
    @rent.user_id=current_user.id
    if @rent.save
      Property.update(@rent.property_id, {:availability => 'Occupied'})
      redirect_to "/users/edit"
    else


      flash[:error] = @rent.errors.full_messages.to_sentence
      redirect_back(fallback_location: root_path)

      end
    end


  def edit
    @rents=Rent.find(params[:id])
  end

  def update
    @rents=Rent.find(params[:id])
    if @rents.save
      flash[:success] = "rent has been updated"
      redirect_to "/rents"
    else
      flash[:error] = "please try again"
      render edit_rent_path
    end
  end

  def destroy
    rent = Rent.find(params[:id])
    rent.destroy
    redirect_to "/rents"
  end

  private

  def rent_params
    params.require(:rent).permit(:user_id, :property_id, :price, :status, :rent_date, :devolution_date)
  end

end
