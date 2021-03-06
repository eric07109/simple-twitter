class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # 請參考 Devise 文件自訂表單後通過 Strong Parameters 的方法
  # https://github.com/plataformatec/devise#strong-parameters
  # 注意有 sign_up 和 account_update 兩種參數要處理

  before_action :configure_permitted_parameters, if: :devise_controller?


  def authenticate_admin
  	unless current_user.admin?
  		flash[:alert] = "You are not allowed to access Admin page"
  		redirect_to root_path
  	end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
