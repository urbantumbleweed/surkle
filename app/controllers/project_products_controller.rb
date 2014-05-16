class ProjectProductsController < ApplicationController
  before_action :set_project_product, only: [:show, :edit, :update, :destroy]

  # GET /project_products
  # GET /project_products.json
  def index
    @project_products = ProjectProduct.all
  end

  # GET /project_products/1
  # GET /project_products/1.json
  def show
  end

  # GET /project_products/new
  def new
    @project_product = ProjectProduct.new
  end

  # GET /project_products/1/edit
  def edit
  end

  # POST /project_products
  # POST /project_products.json
  def create
    @project_product = ProjectProduct.new(project_product_params)

    respond_to do |format|
      if @project_product.save
        format.html { redirect_to @project_product, notice: 'Project product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project_product }
      else
        format.html { render action: 'new' }
        format.json { render json: @project_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_products/1
  # PATCH/PUT /project_products/1.json
  def update
    respond_to do |format|
      if @project_product.update(project_product_params)
        format.html { redirect_to @project_product, notice: 'Project product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @project_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_products/1
  # DELETE /project_products/1.json
  def destroy
    @project_product.destroy
    respond_to do |format|
      format.html { redirect_to project_products_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_product
      @project_product = ProjectProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_product_params
      params.require(:project_product).permit(:project_id, :product_id, :quantity, :subtotal)
    end
end
