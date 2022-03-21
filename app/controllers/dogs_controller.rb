class DogsController < ApplicationController
  def index
    dogs = Dog.all
    render json: dogs
  end

  def show
    dog = Dog.find(params[:id])
    render json: dog
  end

  def create
    dog = Dog.new(name: params[:name], age: params[:age], breed: params[:breed])
    dog.save
    render json: dog
  end
end

