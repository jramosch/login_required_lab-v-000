class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name].nil? && !params[:name].blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name unless session[:name].nil?
    redirect_to '/login'
  end
end
