class GearsController < ApplicationController
  def index
    @gears = Gear.all
  end
  
  def new
    @gear = Gear.new
  end
  
  def create
    @gear = Gear.new(gear_params)
    @gear.user_id = current_user.id
    if @gear.save
      redirect_to gears_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def gear_params
    params.require(:gear).permit(:name, :maker, :image, :introduction, :price, :genre_id)
  end
  
end
