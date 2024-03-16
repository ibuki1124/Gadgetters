class GadgetsController < ApplicationController
  def new
    @gadget = Gadget.new
  end
  
  def create
    @gadget = Gadget.new(gadget_params)
    @gadget.user_id = current_user.id
    if @gadget.save
      redirect_to gadget_path(@gadget), notice: "投稿が正常に行われました"
    else
      render :new
    end
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
    gadget = Gadget.find(params[:id])
    gadget.destroy
    redirect_to user_path(current_user), notice: "投稿を削除しました"
  end
  
  private
  def gadget_params
    params.require(:gadget).permit(:title, :body, :gadget_image)
  end
end
