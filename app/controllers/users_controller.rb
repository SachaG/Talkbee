class UsersController < InheritedResources::Base
  before_filter :authenticate_user!

 # def show
 #   @user = User.find(params[:id])
 # end

 # def index
 #   @users = User.all
 # end
  
  #def update
 #   update! do |success, failure|
 #     failure.html { redirect_to user_url(@user) }
 #   end
#  end
  
end
