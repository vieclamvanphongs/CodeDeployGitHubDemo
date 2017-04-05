class UngtuyenMailer < ApplicationMailer
 default from: "ducnhatvo@gmail.com"

  def ungtuyen_email (vieclam, nguoitimviec)

@nguoitimviec=nguoitimviec
@vieclam = vieclam
    attachments[File.basename(@vieclam.nophoso_url)] = File.read(("C:/Sites/cc/public" + @vieclam.nophoso_url), mode: "rb")

    mail(to: @vieclam.email, subject: " Thư ứng tuyển từ " + @nguoitimviec.email)
  end
end
 