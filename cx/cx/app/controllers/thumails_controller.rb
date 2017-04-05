class ThumailsController < ApplicationController
  before_action :set_thumail, only: [:show, :edit, :update, :destroy]

  # GET /thumails
  # GET /thumails.json
  def index
    @thumails = Thumail.all
  end

  # GET /thumails/1
  # GET /thumails/1.json
  def show
  end

  # GET /thumails/new
  def new
    @thumail = Thumail.new
  end

  # GET /thumails/1/edit
  def edit
  end

  # POST /thumails
  # POST /thumails.json
  def create
    @thumail = Thumail.new(thumail_params)

    respond_to do |format|
      if @thumail.save
	  UngtuyenMailer.ungtuyen_email(@thumail).deliver
        format.html { redirect_to @thumail, notice: 'Thumail was successfully created.' }
        format.json { render :show, status: :created, location: @thumail }
      else
        format.html { render :new }
        format.json { render json: @thumail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thumails/1
  # PATCH/PUT /thumails/1.json
  def update
    respond_to do |format|
      if @thumail.update(thumail_params)
        format.html { redirect_to @thumail, notice: 'Thumail was successfully updated.' }
        format.json { render :show, status: :ok, location: @thumail }
      else
        format.html { render :edit }
        format.json { render json: @thumail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thumails/1
  # DELETE /thumails/1.json
  def destroy
    @thumail.destroy
    respond_to do |format|
      format.html { redirect_to thumails_url, notice: 'Thumail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thumail
      @thumail = Thumail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def thumail_params
      params.require(:thumail).permit(:name, :email)
    end
end
