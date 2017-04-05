class HomeController < ApplicationController
  def index
 
  if nhatuyendung_session
  redirect_to '/vieclams'
  end
  
  @vieclams=Vieclam.all.paginate(page: params[:page], per_page: 20).order('id DESC')
 
  
  end
  def index2
  
  
  @vieclams=Vieclam.all.paginate(page: params[:page], per_page: 20).order('id DESC')
  
  
  end
  def index3
  
  @vieclam = Vieclam.find(params[:id])
 
  
  
  end
   def index4
   @nhatuyendung=Nhatuyendung.find(current_nhatuyendung)
   d=(@nhatuyendung.id)
  @vieclams= Vieclam.timkiem(d).order('id DESC')
  
end
def index5
 
end
def index6

@tt=params[:diadiemurl]
   @vieclams= Vieclam.tkdiadiem(params[:diadiemurl]).paginate(page: params[:page], per_page: 20)
end
def index7
@ttt=params[:nghanhngheurl]
   @vieclams= Vieclam.tknghanhnghe(params[:nghanhngheurl]).paginate(page: params[:page], per_page: 20)
end
end
