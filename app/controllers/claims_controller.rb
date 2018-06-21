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
    @claims=Claim.new
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
    @claims= Claim.find(params[:id])
  end

  def edit
    @claims= Claim.find(params[:id])
  end

  def update
    @claims= Claim.find(params[:id])
    if @claims.update(claim_params)
    redirect_to "/claims"
    else
    render edit_claim
    end
  end

  def destroy
    claim = Claim.find(params[:id])
    claim.destroy
    redirect_to "/claims"
  end

private

  def claim_params
    params.require(:claim).permit(:admin_id, :rent_id, :description, :status, :type_of_claim, :price)
  end
end
