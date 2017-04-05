class SendEmailJob < ApplicationJob
 queue_as :default

  def perform (vieclam, nguoitimviec)
@nguoitimviec=nguoitimviec   
   @vieclam = vieclam
    UngtuyenMailer.ungtuyen_email(@vieclam, @nguoitimviec).deliver_later
end
	end