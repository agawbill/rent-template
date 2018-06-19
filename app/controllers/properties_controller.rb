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
  end

private

  def property_params
    params.require(:property).permit(:title, :kind, :admin_id, :availability, :price, :lat, :lng, :description, :street, :apt, :city, :state)
  end

end
