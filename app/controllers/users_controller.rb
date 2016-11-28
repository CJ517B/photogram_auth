class UsersController < ApplicationController

def index
  @users=User.all
end

def profile
  @user=User.find(params[:id])
end

def my_likes
  @me=User.find(current_user.id)
  @users=User.all
  # render("/users/profile")
end

end
