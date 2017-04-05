class UngtuyensController < ApplicationController
  before_action :set_ungtuyen, only: [:show, :edit, :update, :destroy]

  # GET /ungtuyens
  # GET /ungtuyens.json
  def index
    @ungtuyens = Ungtuyen.all
  end

  # GET /ungtuyens/1
  # GET /ungtuyens/1.json
  def show
  end

  # GET /ungtuyens/new
  def new
    @ungtuyen = Ungtuyen.new
  end

  # GET /ungtuyens/1/edit
  def edit
  end

  # POST /ungtuyens
  # POST /ungtuyens.json
  def create
    @ungtuyen = Ungtuyen.new(ungtuyen_params)

    respond_to do |format|
      if @ungtuyen.save
	 
        format.html { redirect_to @ungtuyen, notice: 'Ungtuyen was successfully created.' }
        format.json { render :show, status: :created, location: @ungtuyen }
      else
        format.html { render :new }
        format.json { render json: @ungtuyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ungtuyens/1
  # PATCH/PUT /ungtuyens/1.json
  def update
    respond_to do |format|
      if @ungtuyen.update(ungtuyen_params)
        format.html { redirect_to @ungtuyen, notice: 'Ungtuyen was successfully updated.' }
        format.json { render :show, status: :ok, location: @ungtuyen }
      else
        format.html { render :edit }
        format.json { render json: @ungtuyen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ungtuyens/1
  # DELETE /ungtuyens/1.json
  def destroy
    @ungtuyen.destroy
    respond_to do |format|
      format.html { redirect_to ungtuyens_url, notice: 'Ungtuyen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ungtuyen
      @ungtuyen = Ungtuyen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ungtuyen_params
      params.require(:ungtuyen).permit(:hoso)
    end
end
