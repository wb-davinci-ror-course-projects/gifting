class SessionsController < ApplicationController

  def start
      respond_to do |format|
        gifter = Gifter.find_by(name: params[:name])
        if gifter && gifter.authenticate(params[:password])
          session[:gifter_id] = gifter.id
          format.html { redirect_to root_path, notice: 'You have been logged in.' }
          # format.json { render :show, status: :created, location: @gifter }
        else
          flash[:error] = 'Invalid name or password'
          format.html { render :login }
          # format.json { render json: @gifter.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    session.clear
    redirect_to login_path, notice: 'You have been logged out'
  end

  private

  def gifter_params
    params.require(:gifter).permit(:name, :password)
  end
end
