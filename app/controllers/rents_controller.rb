class RentsController < ApplicationController

  def index
    @rents = Rent.all
  end

  def show
    @rent = Rent.find(params[:id])
  end

  def new
    @scooter = Scooter.find_by(id: params[:scooter_id])
    @rent = Rent.new
  end

  def create
    @rent = Rent.new(rent_params)
    @scooter = Scooter.find(params[:scooter_id])
    @rent.user = current_user
    @rent.scooter = @scooter

    # @rent.scooter = Scooter.find_by(id: params[:scooter_id])
    if @rent.save
      redirect_to @rent#scooter_rents_path(@rent)
    else
      render :new
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy

    redirect_to rents_path
  end

  private

  def rent_params
    params.require(:rent).permit(:start_date, :end_date)
  end

end
