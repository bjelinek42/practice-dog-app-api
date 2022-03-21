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
    dog = Dog.new(name: params[:name], age: params[:age], breed: params[:breed], user_id: current_user.id)
    if dog.save
      render json: dog
    else
      render json: dog.errors.full_messages
    end
  end

  def update
    dog = Dog.find(params[:id])
    dog.name = params[:name]
    dog.age = params[:age]
    dog.breed = params[:breed]
    if dog.user_id == current_user.id
      dog.save
    else
      render json: {message: "you are not the user that created this dog"}
    end
  end

  def destroy
    dog = Dog.find(params[:id])
    if dog.user_id == current_user.id
      dog.delete
    else
      render json: {message: "you are not the user that created this dog"}
    end
  end
end

