class IconupsController < ApplicationController
  before_action :set_iconup, only: [:show, :edit, :update, :destroy]

  # GET /iconups
  # GET /iconups.json
  def index
    @iconups = Iconup.all
  end

  # GET /iconups/1
  # GET /iconups/1.json
  def show
  end

  # GET /iconups/new
  def new
    @iconup = Iconup.new
  end

  # GET /iconups/1/edit
  def edit
  end

  # POST /iconups
  # POST /iconups.json
  def create
    @iconup = Iconup.new(iconup_params)

    respond_to do |format|
      if @iconup.save
        format.html { redirect_to surkle_path(@iconup.surkle_id), notice: 'Iconup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @iconup }
      else
        format.html { render action: 'new' }
        format.json { render json: @iconup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iconups/1
  # PATCH/PUT /iconups/1.json
  def update
    respond_to do |format|
      if @iconup.update(iconup_params)
        format.html { redirect_to @iconup, notice: 'Iconup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iconup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iconups/1
  # DELETE /iconups/1.json
  def destroy
    @iconup.destroy
    respond_to do |format|
      format.html { redirect_to iconups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iconup
      @iconup = Iconup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iconup_params
      params.require(:iconup).permit(:surkle_id, :product_id, :icon_id, :description, :notes)
    end
end
