class PropertiesController < ApplicationController
    before_action :find_property, only: [:upvote]
  def index
    @properties = Property.last(10)

      @apiKey=ENV['API_KEY']

  end

  def show
      @property = Property.find(params[:id])
      @comments= Comment.all
      @lat = @property.lat
      @lng = @property.lng
      @apiKey=ENV['API_KEY']
      @rent=Rent.new


  end

  def showall
    @properties = Property.all
      @apiKey=ENV['API_KEY']
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
      # params[:images].each do |picture|
      # @property.images.create(:images => :property)
    else
      redirect_to "/properties/new"
    end
  end
 


  def edit
    if current_admin
    @property = Property.find(params[:id])
  else
    redirect_to "/properties"
  end
end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
        flash[:success] = "property has been updated"
        redirect_to "/properties"
      else
        flash[:error] = "please try again"
        render edit_property_path
      end
  end

  def destroy
    property = Property.find(params[:id])
    property.destroy
    redirect_to "/properties"
  end

    def upvote
      @property.upvote_by current_user
      redirect_to "/properties"
    end


private

  def property_params
    params.require(:property).permit(:title, :kind, :admin_id, :availability, :price, :description, :street, :city, :state, :country, :houseNumber, :zipcode, :image)
  end

  def find_property
    @property = Property.find(params[:id])
  end

end
