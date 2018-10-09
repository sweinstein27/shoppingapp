class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_action :current_user
  # before_action :require_logged_in, except: [:new, :create, :home]
  # helper_method :current_user
  helper_method :current_order


  def logged_in?
    !!current_user
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end


  private
    def require_logged_in
      redirect_to root_path unless logged_in?
    end

    # def current_user
    #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # end
    
end