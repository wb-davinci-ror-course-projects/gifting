class GiftersController < ApplicationController
  before_action :set_gifter, only: [:show, :edit, :update, :destroy]
  before_action :session?, only: [:show, :edit, :update, :destroy]
  # GET /gifters
  # GET /gifters.json

  # GET /gifters/new
  def new
    @gifter = Gifter.new
  end

  # GET /gifters/1/edit
  def edit
  end

  # POST /gifters
  # POST /gifters.json
  def create
    @gifter = Gifter.new(gifter_params)

    respond_to do |format|
      if @gifter.save
        format.html { redirect_to root_path, notice: 'Gifter was successfully created.' }
        format.json { render :show, status: :created, location: @gifter }
      else
        format.html { render :new }
        format.json { render json: @gifter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gifters/1
  # PATCH/PUT /gifters/1.json
  def update
    if current_user.name = params[:name]
      respond_to do |format|
        if @gifter.update(gifter_params)
          format.html { redirect_to root_path, notice: 'Gifter was successfully updated.' }
          format.json { render :show, status: :ok, location: @gifter }
        else
          format.html { render :edit }
          format.json { render json: @gifter.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_path
    end
  end

  # DELETE /gifters/1
  # DELETE /gifters/1.json
  def destroy
    if current_user.name = params[:name]
        @gifter.destroy
      respond_to do |format|
        format.html { redirect_to gifters_url, notice: 'Gifter was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to login_path
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gifter
    @gifter = Gifter.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def gifter_params
    params.require(:gifter).permit(:name, :password, :password_confirmation)
  end

  def session?
    if current_user
    else
      redirect_to login_path
    end
  end
end
