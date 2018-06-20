class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
      @property = Property.find(params[:id])
  end

  def new
    if current_admin
    @property = Property.new
    else
      redirect_to "/"
    end
  end

  def create
    property = Property.new(property_params)
    property.admin_id=current_admin.id
    if property.save
      redirect_to "/properties"
    else
      redirect_to "/properties/new"
  end

end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
        flash[:success] = "property has been updated"
        redirect_to "/properties"
      else
        flash[:error] = "please try again"
        render edit_property
      end
  end

  def destroy
    property = Property.find(params[:id])
    property.destroy
    redirect_to "/properties"
  end

private

  def property_params
    params.require(:property).permit(:title, :kind, :admin_id, :availability, :price, :lat, :lng, :description, :street, :apt, :city, :state, :image)
  end
end
