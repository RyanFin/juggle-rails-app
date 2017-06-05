class JugglesController < ApplicationController
  before_action :set_juggle, only: [:show, :edit, :update, :destroy]

  # GET /juggles
  # GET /juggles.json
  def index
    @juggles = Juggle.all
  end

  # GET /juggles/1
  # GET /juggles/1.json
  def show
  end

  # GET /juggles/new
  def new
    @juggle = Juggle.new
  end

  # GET /juggles/1/edit
  def edit
  end

  # POST /juggles
  # POST /juggles.json
  def create
    @juggle = Juggle.new(juggle_params)

    respond_to do |format|
      if @juggle.save
        format.html { redirect_to @juggle, notice: 'Juggle was successfully created.' }
        format.json { render :show, status: :created, location: @juggle }
      else
        format.html { render :new }
        format.json { render json: @juggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juggles/1
  # PATCH/PUT /juggles/1.json
  def update
    respond_to do |format|
      if @juggle.update(juggle_params)
        format.html { redirect_to @juggle, notice: 'Juggle was successfully updated.' }
        format.json { render :show, status: :ok, location: @juggle }
      else
        format.html { render :edit }
        format.json { render json: @juggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juggles/1
  # DELETE /juggles/1.json
  def destroy
    @juggle.destroy
    respond_to do |format|
      format.html { redirect_to juggles_url, notice: 'Juggle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juggle
      @juggle = Juggle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juggle_params
      params.require(:juggle).permit(:trick, :difficulty)
    end
end
