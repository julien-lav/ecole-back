class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
   if user && user.authenticate(params[:session][:password])
     session[:user_id] = user.id
     log_in user
     redirect_to user, notice: 'Connecté !'
   else
     flash.now[:orange] = 'Erreur : Mauvais email ou mot de passe !'
     render 'new'
   end
 end

  def destroy
    log_out
    redirect_to root_path, notice: 'Déconnecté !'
  end
end
