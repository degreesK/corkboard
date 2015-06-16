class CorksController < ApplicationController
  before_action :find_cork, only: [:show, :edit, :update, :destroy]

  def index
    @corks = Cork.all.order("created_at DESC")
  end

  def show
  end

  def new
    @cork = current_user.corks.build
  end

  def create
    @cork = current_user.corks.build(cork_params)

    if @cork.save
      redirect_to @cork, notice: "Successfully created new Post"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @cork.update(cork_params)
      redirect_to @cork, notice: "Cork was Successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @cork.destroy
    redirect_to root_path
  end

  private

  def cork_params
    params.require(:cork).permit(:title, :description)
  end

  def find_cork
    @cork = Cork.find(params[:id])
  end
end
