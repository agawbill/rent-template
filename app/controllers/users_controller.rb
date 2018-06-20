class UsersController < ApplicationController
  def show
    @claims=Claim.all
    # user=User.find(params[:id])
    # @rents= Rent.pluck(user.id)

    # @rents=Rent.includes(user_id: current_user.id).all
    @rents=Rent.all

    # @rents=Rent.all
  # end
  @user=User.find(params[:id])
end
end
