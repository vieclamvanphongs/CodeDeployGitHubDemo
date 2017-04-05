class SendMailJob < ApplicationJob::Base
  queue_as :urgent

  def perform(vieclam, nguoitimviec)
  @nguoitimviec=nguoitimviec
  @vieclam=vieclam
    UngtuyenMailer.ungtuyen_email (vieclam, nguoitimviec).deliver_later
  end
end
