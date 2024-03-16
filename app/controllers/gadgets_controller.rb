class GadgetsController < ApplicationController
  def new
    @gadget = Gadget.new
  end
  
  def create
    gadget = Gadget.new(gadget_params)
    gadget.user_id = current_user.id
    gadget.save
    redirect_to gadget_path(gadget)
  end

  def index
    @gadgets = Gadget.all
    @user = current_user
  end

  def show
    @gadget = Gadget.find(params[:id])
    @user = @gadget.user
  end
  
  def destroy
  end
  
  private
  def gadget_params
    params.require(:gadget).permit(:title, :body, :gadget_image)
  end
end
