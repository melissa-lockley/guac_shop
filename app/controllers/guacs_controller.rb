class GuacsController < ApplicationController
  before_action :set_guac, only: [:show, :edit, :update, :destroy]

  # GET /guacs
  # GET /guacs.json
  def index
    @guacs = Guac.all
  end

  # GET /guacs/1
  # GET /guacs/1.json
  def show
  end

  # GET /guacs/new
  def new
    @guac = Guac.new
  end

  # GET /guacs/1/edit
  def edit
  end

  # POST /guacs
  # POST /guacs.json
  def create
    @guac = Guac.new(guac_params)

    respond_to do |format|
      if @guac.save
        format.html { redirect_to @guac, notice: 'Guac was successfully created.' }
        format.json { render :show, status: :created, location: @guac }
      else
        format.html { render :new }
        format.json { render json: @guac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guacs/1
  # PATCH/PUT /guacs/1.json
  def update
    respond_to do |format|
      if @guac.update(guac_params)
        format.html { redirect_to @guac, notice: 'Guac was successfully updated.' }
        format.json { render :show, status: :ok, location: @guac }
      else
        format.html { render :edit }
        format.json { render json: @guac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guacs/1
  # DELETE /guacs/1.json
  def destroy
    @guac.destroy
    respond_to do |format|
      format.html { redirect_to guacs_url, notice: 'Guac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guac
      @guac = Guac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guac_params
      params.require(:guac).permit(:name, :avacado, :mixins, :time_to_make, :cost, :date_created, :time_put_in)
    end
end
