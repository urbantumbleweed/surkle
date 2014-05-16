class SurklesController < ApplicationController
  before_action :set_surkle, only: [:show, :edit, :update, :destroy]

  # GET /surkles
  # GET /surkles.json
  def index
    @surkles = Surkle.all
  end

  # GET /surkles/1
  # GET /surkles/1.json
  def show
    @iconup = Iconup.new()
    @surkle.iconups
  end

  # GET /surkles/new
  def new
    @surkle = Surkle.new
  end

  # GET /surkles/1/edit
  def edit
  end

  # POST /surkles
  # POST /surkles.json
  def create
    @surkle = Surkle.create(surkle_params)
    SurklesUser.add_user_to_surkle(current_user.id, @surkle.id)
    

    respond_to do |format|
      if @surkle.save
        format.html { redirect_to @surkle, notice: 'Surkle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @surkle }
      else
        format.html { render action: 'new' }
        format.json { render json: @surkle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surkles/1
  # PATCH/PUT /surkles/1.json
  def update
    respond_to do |format|
      if @surkle.update(surkle_params)
        format.html { redirect_to @surkle, notice: 'Surkle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @surkle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surkles/1
  # DELETE /surkles/1.json
  def destroy
    @surkle.destroy
    respond_to do |format|
      format.html { redirect_to surkles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surkle
      @surkle = Surkle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surkle_params
      params.require(:surkle).permit(:floorplan, :description, :location, :timestamps)
    end
end
