class Admin::UsersController < ApplicationController
  # 下記はログイン機能を実装した後、コメントアウト
  # before_action :check_admin
  before_action :set_admin_user, only: %i[show destroy]

  def index
    @general_users = User.general
    @admin_users = User.admin
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(admin_user_params)

    if @user.save
      redirect_to admin_users_path, notice: "管理者ユーザー「#{@user.nickname}」が作成されました。"
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: "管理者ユーザー「#{@user.nickname}」が削除されました。"
  end

  private

  def set_admin_user
    @user = User.find(params[:id])
  end

  # ログイン機能を実装次第コメントアウト
  # def check_admin
    # 現在のユーザーが管理者ユーザーかチェック
    # redirect_to root_path unless current_user.admin?
  # end

  def admin_user_params
    params.require(:user).permit(:nickname, :email).merge(role: :admin)
  end

end
