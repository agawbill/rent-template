class ClaimsController < ApplicationController
  def index
    if current_admin
    @claims=Claim.all
    @rents=Rent.all
  else
    redirect_to "/"
  end
  end

  def new

  end

  def create
    claim=Claim.new(claim_params)
    claim.admin_id=current_admin.id
    claim.rent_id=params[:rent_id]
    if claim.save
      redirect_to "/claims"
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show
  end

  def edit
  end

private

  def claim_params
    params.require(:claim).permit(:admin_id, :rent_id, :description, :status, :type_of_claim, :price)

end
end
