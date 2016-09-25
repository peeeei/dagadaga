class SessionsController < ApplicationController
  layout 'session'

  def new
    @user = User.new
    render template: "users/new"
  end

  def home
  end

  def create
    user = User.find_by(name: params[:session][:name])
    user2 = User.find_by(pass: params[:session][:password])
    if user && user2
      # ユーザーログイン後にユーザー情報のページにリダイレクトする
      redirect_to root_path
    else
      # エラーメッセージを作成する
      flash[:notice] = 'Invalid name/password combina'
      render 'home'
    end
  end

  def destroy
  end
end
