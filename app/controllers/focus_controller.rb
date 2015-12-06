class FocusController < ApplicationController
  before_action :set_focu, only: [:show, :edit, :update, :destroy]

  # GET /focus
  # GET /focus.json
  def index
    @focu = Focu.all
  end

  # GET /focus/1
  # GET /focus/1.json
  def show
  end

  # GET /focus/new
  def new
    @focu = Focu.new
  end

  # GET /focus/1/edit
  def edit
  end

  # POST /focus
  # POST /focus.json
  def create
    @focu = Focu.new(focu_params)

    respond_to do |format|
      if @focu.save
        format.html { redirect_to @focu, notice: 'Focus was successfully created.' }
        format.json { render :show, status: :created, location: @focu }
      else
        format.html { render :new }
        format.json { render json: @focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /focus/1
  # PATCH/PUT /focus/1.json
  def update
    respond_to do |format|
      if @focu.update(focu_params)
        format.html { redirect_to @focu, notice: 'Focu was successfully updated.' }
        format.json { render :show, status: :ok, location: @focu }
      else
        format.html { render :edit }
        format.json { render json: @focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /focus/1
  # DELETE /focus/1.json
  def destroy
    @focu.destroy
    respond_to do |format|
      format.html { redirect_to focus_url, notice: 'Focu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_focu
      @focu = Focu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def focu_params
      params.require(:focu).permit(:date, :notes)
    end
end
