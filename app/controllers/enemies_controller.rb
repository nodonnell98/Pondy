class EnemiesController < ApplicationController
  def index
    # Logic to fetch all enemys from the database
    @enemies = Enemy.all
  end

  def show
    # Logic to find a specific enemy by ID
    @enemy = Enemy.find(params[:id])
  end

  def create
    # Logic to create a new enemy
    @enemy = Enemy.new(enemy_params)
    if @enemy.save
      render json: @enemy, status: :created
    else
      render json: @enemy.errors, status: :unprocessable_entity
    end
  end

  def update
    # Logic to update an existing enemy
    @enemy = Enemy.find(params[:id])
    if @enemy.update(enemy_params)
      render json: @enemy
    else
      render json: @enemy.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # Logic to delete a enemy
    @enemy = Enemy.find(params[:id])
    @enemy.destroy
    head :no_content
  end

  private

  def enemy_params
    params.require(:enemy).permit(:name, :resource_type, :level, :health, :stamina, :max_health, :max_stamina, :resource_qty,
                                  :image_url)
  end
end
