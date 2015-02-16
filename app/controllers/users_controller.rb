class UsersController < ApplicationController

def index
  @user = User.all
end

def new
    @user = User.new
  end

def edit
    @user = User.find_by_id(params[:id])
    #if user.update_attributes(params[:user])
    #(params[:user])
      # student was updated successfully
      #flash[:notice] = "User was update successfully!"
      #redirect_to user_path(user)
    #else
      # student was not updated show error message
    #end
  end

def update
    user = User.find_by_id(params[:id])
    if user.update(user_params)
    #if user.update_attributes(user_params)
    #if user.update_attributes(params[:user])
      # student was updated successfully
      flash[:notice] = "User was update successfully!"
      redirect_to user_path(user)
    else
      # student was not updated show error message
    end
  end
  def show
    @user = User.find_by_id(params[:id])

end
  def create
    #@user = User.new(params[:user])
    @user = User.new(user_params)
    if @user.save
      # user was saved successfully
      flash[:notice] = "user was created successfully!"
      redirect_to users_path
    else
      # user was not saved due to an error
      flash[:alert] = "user was was not created"
      redirect_to users_path
    end
  end


#private

def user_params
 params.require(:user).permit(:email, :name)
 end
end

