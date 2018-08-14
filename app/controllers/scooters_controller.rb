class ScootersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
    @scooter = Scooter.find(params[:id])
  end

  def new
    @scooter = Scooter.new
  end

  def create
    @scooter = Scooter.new(scooter_params)
    @scooter.user = current_user

    if @scooter.save
      redirect_to @scooter
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def scooter_params
    params.require(:scooter).permit(:name, :description)
  end

end
