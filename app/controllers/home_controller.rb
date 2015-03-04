class HomeController < ApplicationController

  def index
    @users = User.all
    redirect_to users_index_path
  end

end
