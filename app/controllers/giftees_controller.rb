class GifteesController < ApplicationController
  before_action :set_giftee, only: [:show, :edit, :update, :destroy]

  # GET /giftees
  # GET /giftees.json
  def index
    @giftees = Giftee.all
  end

  # GET /giftees/1
  # GET /giftees/1.json
  def show
  end

  # GET /giftees/new
  def new
    @giftee = Giftee.new
  end

  # GET /giftees/1/edit
  def edit
  end

  # POST /giftees
  # POST /giftees.json
  def create
    @giftee = Giftee.new(giftee_params)

    respond_to do |format|
      if @giftee.save
        format.html { redirect_to @giftee, notice: 'Giftee was successfully created.' }
        format.json { render :show, status: :created, location: @giftee }
      else
        format.html { render :new }
        format.json { render json: @giftee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giftees/1
  # PATCH/PUT /giftees/1.json
  def update
    respond_to do |format|
      if @giftee.update(giftee_params)
        format.html { redirect_to @giftee, notice: 'Giftee was successfully updated.' }
        format.json { render :show, status: :ok, location: @giftee }
      else
        format.html { render :edit }
        format.json { render json: @giftee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giftees/1
  # DELETE /giftees/1.json
  def destroy
    @giftee.destroy
    respond_to do |format|
      format.html { redirect_to giftees_url, notice: 'Giftee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_giftee
    @giftee = Giftee.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def giftee_params
    params.require(:giftee).permit(:first_name, :last_name)
  end
end
