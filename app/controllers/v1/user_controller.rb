class v1::UserController < v1::BaseController
  before_action :authenticate_user!, except: [:create]
  before_action :set_user!, only: [:update, :destroy, :show]
  before_action :user_authorized?, only: [:update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def search

  end

  def update
    @user.update!(params.require)
  end

  def create
    @user = User.build(user_params)
    @user.save!
  end

  def destroy
    @user.destroy!
  end

  private

  def set_user!
    @user = User.find(params[:id])
  end

  def user_authorized?
    raise :unauthorized unless @user == current_user
  end

  def user_params
    params.require(:user).permit(:email, :phone, :username, :password, :password_confirmation)
  end


end
