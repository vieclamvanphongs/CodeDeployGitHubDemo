class NhatuyendungController < ApplicationController
 before_action :set_nhatuyendung, only: [:index ]
  def index
 @nhatuyendung = Nhatuyendung.find(params[:id])
  

  end
    def set_nhatuyendung
     @nhatuyendung = Nhatuyendung.find(params[:id])
    end
end
