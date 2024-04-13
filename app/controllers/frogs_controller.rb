class FrogsController < ApplicationController
  def index
    # Logic to fetch all frogs from the database
    @frogs = Frog.all
  end

  def show
    # Logic to find a specific frog by ID
    @frog = Frog.find(params[:id])
  end

  def create
    # Logic to create a new frog
    @frog = Frog.new(frog_params)
    if @frog.save
      render json: @frog, status: :created
    else
      render json: @frog.errors, status: :unprocessable_entity
    end
  end

  def update
    # Logic to update an existing frog
    @frog = Frog.find(params[:id])
    if @frog.update(frog_params)
      render json: @frog
    else
      render json: @frog.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # Logic to delete a frog
    @frog = Frog.find(params[:id])
    @frog.destroy
    head :no_content
  end

  def complete_quest
    return if @frog&.habit.present? && @frog.habit.completed == true

    @frog = Frog.find(params[:id])
    @frog.update(level: @frog.level + 1)
    @frog.update(health: 10 * @frog.level, max_health: 10 * @frog.level)
    @frog&.habit&.update(completed: true)
    redirect_to frogs_path, notice: 'Quest completed successfully!'
  end

  private

  def frog_params
    params.require(:frog).permit(:name, :species, :level, :health, :stamina, :max_health, :max_stamina, :rarity,
                                 :image_url)
  end
end
