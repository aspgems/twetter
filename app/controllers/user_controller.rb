class UserController < ApplicationController
  before_filter :authenticateUser, :lookup_duser
  
  def index
    @tweets = @duser.public_tweets.find(:all,:include => :user,:limit => 20  )
  end

  def favourites
    @tweets = @duser.favorite_tweets
  end

  def friends
    @users = @duser.friends
    redirect_to(:controller=>'statuses', :action=>'friends') if (@user==@duser)
  end

  def followers
    @users = @duser.followers        
    redirect_to(:controller=>'statuses', :action=>'followers') if (@user==@duser)
  end

  private

  def lookup_duser
    @duser = User.fetch(params[:username], current_user.username)
  end
end
