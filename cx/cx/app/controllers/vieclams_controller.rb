class VieclamsController < ApplicationController
  before_action :set_vieclam, only: [:show, :edit, :edit2, :update,  :update2, :destroy]

  # GET /vieclams
  # GET /vieclams.json
  def index
     @vieclams = Vieclam.search(params[:tencv], params[:nghanhnghe],params[:diadiem] ).paginate(page: params[:page], per_page: 20)
  
  end
  def index2
   @vieclams = Vieclam.all
  
  end
 
def nopcv
 @vieclam = Vieclam.find(params[:id])
  
end
  # GET /vieclams/1
  # GET /vieclams/1.json
  def show
  if nguoitimviec_session
 @nguoitimviec=Nguoitimviec.find(current_nguoitimviec)
 @vieclams = Vieclam.all
 end
 if nhatuyendung_session
@nhatuyendung=Nhatuyendung.find(current_nhatuyendung)
 @vieclams = Vieclam.all
end
 
  
  end

  # GET /vieclams/new
  def new
  if !nhatuyendung_session
redirect_to '/nhatuyendungs/sign_in'
  else
    @vieclam = Vieclam.new
	@nhatuyendung=Nhatuyendung.find(current_nhatuyendung)
  end
end
  # GET /vieclams/1/edit
  def edit2
if !nguoitimviec_session
redirect_to '/nguoitimviecs/sign_in'
else
 @nguoitimviec=Nguoitimviec.find(current_nguoitimviec)
 end
  end
def edit
if !nhatuyendung_session
redirect_to '/nhatuyendungs/sign_in'
  else
  @nhatuyendung=Nhatuyendung.find(current_nhatuyendung)
 
  end
  end
  # POST /vieclams
  # POST /vieclams.json
  def create
 if nhatuyendung_session
@nhatuyendung=Nhatuyendung.find(current_nhatuyendung)
 end
    @vieclam = Vieclam.new(vieclam_params)

    respond_to do |format|
      if @vieclam.save
        format.html { redirect_to @vieclam, notice: 'Vieclam was successfully created.' }
        format.json { render :show, status: :created, location: @vieclam }
      else
        format.html { render :new }
        format.json { render json: @vieclam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vieclams/1
  # PATCH/PUT /vieclams/1.json
  def update2
  @nguoitimviec=Nguoitimviec.find(current_nguoitimviec)
 
    respond_to do |format|
      if @vieclam.update(vieclam_params)
 SendEmailJob.set(wait: 1.seconds).perform_later(@vieclam, @nguoitimviec)
        format.html { redirect_to @vieclam, notice: 'Bạn đã ứng tuyển thành công vào vị trí '+@vieclam.tencv }
        format.json { render :show, status: :ok, location: @vieclam }
      else
        format.html { render :edit2 }
        format.json { render json: @vieclam.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @vieclam.update(vieclam_params)
	
        format.html { redirect_to @vieclam, notice: 'Vieclam was successfully updated.' }
        format.json { render :show, status: :ok, location: @vieclam }
      else
        format.html { render :edit }
        format.json { render json: @vieclam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vieclams/1
  # DELETE /vieclams/1.json
  def destroy
    @vieclam.destroy
    respond_to do |format|
      format.html { redirect_to vieclams_url, notice: 'Vieclam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vieclam
      @vieclam = Vieclam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vieclam_params
      params.require(:vieclam).permit(:tencv, :congty, :nghanhnghe, :vitri, :mota, :yeucau, :mucluong, :quyenloi, :diadiem, :ngaydangtuyen, :ngayhethan, :email, :nophoso, :daungtuyen, :idnhatuyendung, :motacongty, :trangweb, :kichhoat, :nghanhngheurl, :tencvtk, :tencvtkn)
    end
	
end
