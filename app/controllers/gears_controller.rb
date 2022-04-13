class GearsController < ApplicationController
  def index
    @gears = Gear.all.page(params[:page]).reverse_order
  end
  
  def new
    @gear = Gear.new
  end
  
  def create
    if user_signed_in?
      @gear = Gear.new(gear_params)
      @gear.user_id = current_user.id
      if @gear.save
        redirect_to gears_path
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
    @gear = Gear.find(params[:id])
  end
  
  def update
    gear = Gear.find(params[:id])
    if gear.user_id == current_user.id
      gear.update(gear_params)
      redirect_to gears_path
    end
  end
  
  def destroy
    @gear = Gear.find(params[:id])
    if @gear.user_id == current_user.id
      @gear.destroy
      redirect_to gears_path
    end
  end
  
  private
  
  def gear_params
    params.require(:gear).permit(:name, :maker, :image, :introduction, :price, :genre_id, :user_id)
  end
  
end
