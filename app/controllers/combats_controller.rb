class CombatsController < ApplicationController
  def index
    # Add code here to fetch all combats from the database
    @combats = Combat.all
  end

  def show
    # Add code here to fetch a specific combat from the database
    @combat = Combat.find(params[:id])
    @frog = Frog.find(@combat.frog_id)
    @enemy = Enemy.find(@combat.enemy_id)
  end

  def new
    # Add code here to create a new combat instance
    @combat = Combat.new
  end

  def create
    # Add code here to save the new combat to the database
    @combat = Combat.new(combat_params)
    if @combat.save
      redirect_to combat_path(@combat)
    else
      render :new
    end
  end

  def edit
    # Add code here to fetch the combat to be edited from the database
    @combat = Combat.find(params[:id])
  end

  def update
    # Add code here to update the combat in the database
    @combat = Combat.find(params[:id])
    if @combat.update(combat_params)
      redirect_to combat_path(@combat)
    else
      render :edit
    end
  end

  def destroy
    # Add code here to delete the combat from the database
    @combat = Combat.find(params[:id])
    @combat.destroy
    redirect_to combats_path
  end

  private

  def combat_params
    params.require(:combat).permit(:frog_id, :enemy_id)
  end
end
