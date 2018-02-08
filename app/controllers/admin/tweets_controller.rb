class Admin::TweetsController < Admin::BaseController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @tweets = Tweet.order(created_at: :desc)
    @users = User.left_joins(:tweets).group(:id).order('COUNT(tweets.id) DESC')
  end

  def destroy
  	@tweet = Tweet.find(params[:id])
  	@tweet.destroy
  	flash[:notice] = "Successfully remove tweet"
  	redirect_back(fallback_location: root_path)
  end
end
