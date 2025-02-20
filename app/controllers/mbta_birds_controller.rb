class MbtaBirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show
    bird = Bird.find(params[:id])
    puts params[:id]
    render json: bird
  end

  def create
    bird = Bird.create(com_name: params[:com_name], sci_name: params[:sci_name], mbta_y_n: params[:mbta_y_n]) 
    render json: bird
  end
  def update
    bird = Bird.find(params[:id])
    bird.update(
      com_name: params[:com_name] || bird.com_name, 
      sci_name: params[:sci_name] || bird.sci_name, 
      mbta_y_n: params[:mbta_y_n]|| bird.mbta_y_n
    )
    render json: bird
  end
  def destroy
    bird = Bird.find(params[:id])
    bird.destroy
    render json: bird
  end
end
