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
    end
  #end

def update
    user = User.find_by_id(params[:id])
    #if user.update(user_params)
    if user.update_attributes(user_params)
    #if user.update_attributes(params[:user])
      # student was updated successfully
      flash[:notice] = "User was update successfully!"
      redirect_to user_path(user)
    else
      # student was not updated show error message
    end
  end
  
def show
    #@user = User.find(user_params)
    @user = User.find_by_id(params[:id])
end
  
  #  def new
  #   @user = User.new
  # end
  
def create
  @user = User.new(user_params)
  if @user.save
      flash[:notice] = "user was created successfully!"
      redirect_to users_path
  else
      flash[:alert] = "user was was not created"
      redirect_to users_path
  end
end

def destroy
  @user = User.find_by_id(params[:id])
  @user.destroy
    flash[:notice] = "user removed"
      #redirect_to user_path
      redirect_to action: "index"
end


private

def user_params
 #params.require(:user).permit(:email, :name)    
 params.require(:user).permit(:id, :name, :email, :password, :password_confirmation)
 end
end

