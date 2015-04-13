class GeneratedNamesController < ApplicationController
  before_action :set_generated_name, only: [:show, :edit, :update, :destroy]


  # GET /generated_names
  # GET /generated_names.json
  def index
    @generated_name = GeneratedName.new
  end

  # GET /generated_names/1
  # GET /generated_names/1.json
  def show
  end

  # GET /generated_names/new
  def new
    @generated_name = GeneratedName.new
  end

  # GET /generated_names/1/edit
  def edit
  end

  # POST /generated_names
  # POST /generated_names.json
  def create
    first_name = NameFetcher.make_api_call
    @generated_name = GeneratedName.new(generated_name_params.merge(first_name:first_name))

    redirect_to :back
  end

  # PATCH/PUT /generated_names/1
  # PATCH/PUT /generated_names/1.json
  def update
    respond_to do |format|
      if @generated_name.update(generated_name_params)
        format.html { redirect_to @generated_name, notice: 'Generated name was successfully updated.' }
        format.json { render :show, status: :ok, location: @generated_name }
      else
        format.html { render :edit }
        format.json { render json: @generated_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generated_names/1
  # DELETE /generated_names/1.json
  def destroy
    @generated_name.destroy
    respond_to do |format|
      format.html { redirect_to generated_names_url, notice: 'Generated name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generated_name
      @generated_name = GeneratedName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def generated_name_params
      params.require(:generated_name).permit(:first_name, :surname)
    end
end
