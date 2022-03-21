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

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name]
    dog.age = params[:age]
    dog.breed = params[:breed]
    dog.save
    render json: dog
  end

  def destroy
    dog = Dog.find(params[:id])
    dog.delete
  end
end

