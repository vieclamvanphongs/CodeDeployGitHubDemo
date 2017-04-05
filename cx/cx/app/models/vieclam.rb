class Vieclam < ApplicationRecord
mount_uploader :nophoso, NophosoUploader

#def to_param
 # "#{tencv}".parameterize
  #end
def self.search(tencv, nghanhnghe, diadiem)
if nghanhnghe=="Tất cả nghành nghề" 
nghanhnghe=""
end
if diadiem=="Tất cả địa điểm"
diadiem=""
end


if tencv||nghanhnghe||diadiem
 
    where('( tencv LIKE ?  or tencvtk LIKE ? or tencvtkn LIKE ?) and nghanhnghe LIKE ? and diadiem LIKE ? ',"%#{tencv}%","%#{tencv}%","%#{tencv}%", "%#{nghanhnghe}%", "%#{diadiem}%").order('id DESC')
	
  else
    order('id DESC') 
  end
end

def self.timkiem(idnhatuyendung)

if idnhatuyendung

    where(' idnhatuyendung = ?  ',idnhatuyendung).order('id DESC')
	
  else
    order('id DESC') 
  end
end

def self.tkdiadiem(diadiemurl)

if diadiemurl

    where(' diadiemurl = ?  ',diadiemurl).order('id DESC')
	
  else
    order('id DESC') 
  end
end

def self.tknghanhnghe(nghanhngheurl)

if nghanhngheurl

    where(' nghanhngheurl = ?  ',nghanhngheurl).order('id DESC')
	
  else
    order('id DESC') 
  end
end





def tencv=(value)

 write_attribute(:tencv, value)
 write_attribute(:tencvtkn, value.gsub(/[àáạảãâầấậẩẫăằắặẳẵđỳýỵỷỹùúụủũưừứựửữòóọỏõôồốộổỗơờớợởỡèéẹẻẽêềếệểễìíịỉĩ]/, 'ì'=>'Ì','i'=>'I','í'=>'Í','ị'=>'Ị','ỉ'=>'Ỉ','ĩ'=>'Ĩ','e'=>'E','è'=>'È','é'=>'É','ẹ'=>'Ẹ','ẻ'=>'Ẻ','ẽ'=>'Ẽ','ề'=>'Ề','ế'=>'Ế','ệ'=>'Ệ','ê'=>'Ê','ể'=>'Ể','ễ'=>'Ễ','o'=>'O','ò'=>'Ò','ó'=>'Ó','ọ'=>'Ọ','ỏ'=>'Ỏ','õ'=>'Õ','ô'=>'Ô','ồ'=>'Ồ','ố'=>'Ố','ộ'=>'Ộ','ỗ'=>'Ỗ','ổ'=>'Ổ','ơ'=>'Ơ','ờ'=>'Ờ','ớ'=>'Ớ','ợ'=>'Ợ','ở'=>'Ở','ỡ'=>'Ỡ','ù'=> 'Ù', 'ú'=> 'Ú', 'ụ'=> 'Ụ', 'ủ'=> 'Ủ', 'ũ'=> 'Ũ', 'ư'=> 'Ư', 'ừ'=> 'Ừ', 'ứ'=> 'Ứ', 'ự'=> 'Ự', 'ử'=> 'Ử', 'ữ'=> 'Ữ', 'à'=> 'À','ỳ'=> 'Ỳ','ý'=> 'Ý','ỵ'=> 'Ỵ','ỷ'=> 'Ỷ','ỹ'=> 'Ỹ','đ'=> 'Đ','á'=> 'Á','ạ'=> 'Ạ','ả'=> 'Ả','ã'=> 'Ã','â'=> 'Â','ầ'=> 'Ầ','ấ'=> 'Ấ','ậ'=> 'Ậ','ẩ'=> 'Ẩ','ẫ'=> 'Ẫ','ă'=> 'Ă','ằ'=> 'Ằ','ắ'=> 'Ắ','ặ'=> 'Ặ','ẳ'=> 'Ẳ','ẵ' => 'Ẵ').upcase)
write_attribute(:tencvtk, value.gsub(/[ÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐỲÝỴỶỸÙÚỤỦŨƯỪỨỰỬỮÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨ]/,'I'=>'i','Ì'=>'ì','Í'=>'í','Ị'=>'ị','Ỉ'=>'ỉ','Ĩ'=>'ĩ','È'=>'è','É'=>'é','Ẹ'=>'ẹ','Ẻ'=>'ẻ','Ẽ'=>'ẽ','Ề'=>'ề','Ế'=>'ế','Ệ'=>'ệ','Ê'=>'ê','Ể'=>'ể','Ễ'=>'ễ','Ò'=>'ò','Ó'=>'ó','Ọ'=>'ọ','Ỏ'=>'ỏ','Õ'=>'õ','Ô'=>'ô','Ồ'=>'ồ','Ố'=>'ố','Ộ'=>'ộ','Ỗ'=>'ỗ','Ổ'=>'ổ','Ơ'=>'ơ','Ờ'=>'ờ','Ớ'=>'ớ','Ợ'=>'ợ','Ở'=>'ở','Ỡ'=>'ỡ','Ù'=> 'ù', 'Ú'=> 'ú', 'Ụ'=> 'ụ', 'Ủ'=> 'ủ', 'Ũ'=> 'ũ', 'Ư'=> 'ư', 'Ừ'=> 'ừ', 'Ứ'=> 'ứ', 'Ự'=> 'ự', 'Ử'=> 'ử', 'Ữ'=> 'ữ', 'À'=> 'à','Ỳ'=> 'ỳ','Ý'=> 'ý','Ỵ'=> 'ỵ','Ỷ'=> 'ỷ','Ỹ'=> 'ỹ','Đ'=> 'đ','Á'=> 'á','Ạ'=> 'ạ','Ả'=> 'ả','Ã'=> 'ã','Â'=> 'â','Ầ'=> 'ầ','Ấ'=> 'ấ','Ậ'=> 'ậ','Ẩ'=> 'ẩ','Ẫ'=> 'ẫ','Ă'=> 'ă','Ằ'=> 'ằ','Ắ'=> 'ắ','Ặ'=> 'ặ','Ẳ'=> 'ẳ','Ẵ' => 'ẵ').downcase)
    write_attribute(:tencvurl, value.gsub(/[àáạảãâầấậẩẫăằắặẳẵđỳýỵỷỹùúụủũưừứựửữòóọỏõôồốộổỗơờớợởỡèéẹẻẽêềếệểễìíịỉĩÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐỲÝỴỶỸÙÚỤỦŨƯỪỨỰỬỮÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨ ]/,' '=>'-','ì'=>'i','í'=>'i','ị'=>'i','ỉ'=>'i','ĩ'=>'i','è'=>'e','é'=>'e','ẹ'=>'e','ẻ'=>'e','ẽ'=>'e','ề'=>'e','ế'=>'e','ệ'=>'e','ê'=>'e','ể'=>'e','ễ'=>'e','ò'=>'o','ó'=>'o','ọ'=>'o','ỏ'=>'o','õ'=>'o','ô'=>'o','ồ'=>'o','ố'=>'o','ộ'=>'o','ỗ'=>'o','ổ'=>'o','ơ'=>'o','ờ'=>'o','ớ'=>'o','ợ'=>'o','ở'=>'o','ỡ'=>'o','ù'=> 'u', 'ú'=> 'u', 'ụ'=> 'u', 'ủ'=> 'u', 'ũ'=> 'u', 'ư'=> 'u', 'ừ'=> 'u', 'ứ'=> 'u', 'ự'=> 'u', 'ử'=> 'u', 'ữ'=> 'u', 'à'=> 'a','ỳ'=> 'y','ý'=> 'y','ỵ'=> 'y','ỷ'=> 'y','ỹ'=> 'y','đ'=> 'd','á'=> 'a','ạ'=> 'a','ả'=> 'a','ã'=> 'a','â'=> 'a','ầ'=> 'a','ấ'=> 'a','ậ'=> 'a','ẩ'=> 'a','ẫ'=> 'a','ă'=> 'a','ằ'=> 'a','ắ'=> 'a','ặ'=> 'a','ẳ'=> 'a','ẵ' => 'a', 'Ì'=>'I','Í'=>'I','Ị'=>'I','Ỉ'=>'I','Ĩ'=>'I','È'=>'E','É'=>'E','Ẹ'=>'E','Ẻ'=>'E','Ẽ'=>'E','Ề'=>'E','Ế'=>'E','Ệ'=>'E','Ê'=>'E','Ể'=>'E','Ễ'=>'E','Ò'=>'O','Ó'=>'O','Ọ'=>'O','Ỏ'=>'O','Õ'=>'O','Ô'=>'O','Ồ'=>'O','Ố'=>'O','Ộ'=>'O','Ỗ'=>'O','Ổ'=>'O','Ơ'=>'O','Ờ'=>'O','Ớ'=>'O','Ợ'=>'O','Ở'=>'O','Ỡ'=>'O','Ù'=> 'U', 'Ú'=> 'U', 'Ụ'=> 'U', 'Ủ'=> 'U', 'Ũ'=> 'U', 'Ư'=> 'U', 'Ừ'=> 'U', 'Ứ'=> 'U', 'Ự'=> 'U', 'Ử'=> 'U', 'Ữ'=> 'U', 'À'=> 'A','Ỳ'=> 'Y','Ý'=> 'Y','Ỵ'=> 'Y','Ỷ'=> 'Y','Ỹ'=> 'Y','Đ'=> 'D','Á'=> 'A','Ạ'=> 'A','Ả'=> 'A','Ã'=> 'A','Â'=> 'A','Ầ'=> 'A','Ấ'=> 'A','Ậ'=> 'A','Ẩ'=> 'A','Ẫ'=> 'A','Ă'=> 'A','Ằ'=> 'A','Ắ'=> 'A','Ặ'=> 'A','Ẳ'=> 'A','Ẵ' => 'A') )
  end
def diadiem=(value)

 write_attribute(:diadiem, value)

   
   write_attribute(:diadiemurl, value.gsub(/[àáạảãâầấậẩẫăằắặẳẵđỳýỵỷỹùúụủũưừứựửữòóọỏõôồốộổỗơờớợởỡèéẹẻẽêềếệểễìíịỉĩÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐỲÝỴỶỸÙÚỤỦŨƯỪỨỰỬỮÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨ ]/,' '=>'-','ì'=>'i','í'=>'i','ị'=>'i','ỉ'=>'i','ĩ'=>'i','è'=>'e','é'=>'e','ẹ'=>'e','ẻ'=>'e','ẽ'=>'e','ề'=>'e','ế'=>'e','ệ'=>'e','ê'=>'e','ể'=>'e','ễ'=>'e','ò'=>'o','ó'=>'o','ọ'=>'o','ỏ'=>'o','õ'=>'o','ô'=>'o','ồ'=>'o','ố'=>'o','ộ'=>'o','ỗ'=>'o','ổ'=>'o','ơ'=>'o','ờ'=>'o','ớ'=>'o','ợ'=>'o','ở'=>'o','ỡ'=>'o','ù'=> 'u', 'ú'=> 'u', 'ụ'=> 'u', 'ủ'=> 'u', 'ũ'=> 'u', 'ư'=> 'u', 'ừ'=> 'u', 'ứ'=> 'u', 'ự'=> 'u', 'ử'=> 'u', 'ữ'=> 'u', 'à'=> 'a','ỳ'=> 'y','ý'=> 'y','ỵ'=> 'y','ỷ'=> 'y','ỹ'=> 'y','đ'=> 'd','á'=> 'a','ạ'=> 'a','ả'=> 'a','ã'=> 'a','â'=> 'a','ầ'=> 'a','ấ'=> 'a','ậ'=> 'a','ẩ'=> 'a','ẫ'=> 'a','ă'=> 'a','ằ'=> 'a','ắ'=> 'a','ặ'=> 'a','ẳ'=> 'a','ẵ' => 'a', 'Ì'=>'I','Í'=>'I','Ị'=>'I','Ỉ'=>'I','Ĩ'=>'I','È'=>'E','É'=>'E','Ẹ'=>'E','Ẻ'=>'E','Ẽ'=>'E','Ề'=>'E','Ế'=>'E','Ệ'=>'E','Ê'=>'E','Ể'=>'E','Ễ'=>'E','Ò'=>'O','Ó'=>'O','Ọ'=>'O','Ỏ'=>'O','Õ'=>'O','Ô'=>'O','Ồ'=>'O','Ố'=>'O','Ộ'=>'O','Ỗ'=>'O','Ổ'=>'O','Ơ'=>'O','Ờ'=>'O','Ớ'=>'O','Ợ'=>'O','Ở'=>'O','Ỡ'=>'O','Ù'=> 'U', 'Ú'=> 'U', 'Ụ'=> 'U', 'Ủ'=> 'U', 'Ũ'=> 'U', 'Ư'=> 'U', 'Ừ'=> 'U', 'Ứ'=> 'U', 'Ự'=> 'U', 'Ử'=> 'U', 'Ữ'=> 'U', 'À'=> 'A','Ỳ'=> 'Y','Ý'=> 'Y','Ỵ'=> 'Y','Ỷ'=> 'Y','Ỹ'=> 'Y','Đ'=> 'D','Á'=> 'A','Ạ'=> 'A','Ả'=> 'A','Ã'=> 'A','Â'=> 'A','Ầ'=> 'A','Ấ'=> 'A','Ậ'=> 'A','Ẩ'=> 'A','Ẫ'=> 'A','Ă'=> 'A','Ằ'=> 'A','Ắ'=> 'A','Ặ'=> 'A','Ẳ'=> 'A','Ẵ' => 'A') )
  end
 def congty=(value)

 write_attribute(:congty, value)

   
   write_attribute(:tencongtyurl, value.gsub(/[àáạảãâầấậẩẫăằắặẳẵđỳýỵỷỹùúụủũưừứựửữòóọỏõôồốộổỗơờớợởỡèéẹẻẽêềếệểễìíịỉĩÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐỲÝỴỶỸÙÚỤỦŨƯỪỨỰỬỮÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨ. ]/,'.'=>' ',' '=>'-','ì'=>'i','í'=>'i','ị'=>'i','ỉ'=>'i','ĩ'=>'i','è'=>'e','é'=>'e','ẹ'=>'e','ẻ'=>'e','ẽ'=>'e','ề'=>'e','ế'=>'e','ệ'=>'e','ê'=>'e','ể'=>'e','ễ'=>'e','ò'=>'o','ó'=>'o','ọ'=>'o','ỏ'=>'o','õ'=>'o','ô'=>'o','ồ'=>'o','ố'=>'o','ộ'=>'o','ỗ'=>'o','ổ'=>'o','ơ'=>'o','ờ'=>'o','ớ'=>'o','ợ'=>'o','ở'=>'o','ỡ'=>'o','ù'=> 'u', 'ú'=> 'u', 'ụ'=> 'u', 'ủ'=> 'u', 'ũ'=> 'u', 'ư'=> 'u', 'ừ'=> 'u', 'ứ'=> 'u', 'ự'=> 'u', 'ử'=> 'u', 'ữ'=> 'u', 'à'=> 'a','ỳ'=> 'y','ý'=> 'y','ỵ'=> 'y','ỷ'=> 'y','ỹ'=> 'y','đ'=> 'd','á'=> 'a','ạ'=> 'a','ả'=> 'a','ã'=> 'a','â'=> 'a','ầ'=> 'a','ấ'=> 'a','ậ'=> 'a','ẩ'=> 'a','ẫ'=> 'a','ă'=> 'a','ằ'=> 'a','ắ'=> 'a','ặ'=> 'a','ẳ'=> 'a','ẵ' => 'a', 'Ì'=>'I','Í'=>'I','Ị'=>'I','Ỉ'=>'I','Ĩ'=>'I','È'=>'E','É'=>'E','Ẹ'=>'E','Ẻ'=>'E','Ẽ'=>'E','Ề'=>'E','Ế'=>'E','Ệ'=>'E','Ê'=>'E','Ể'=>'E','Ễ'=>'E','Ò'=>'O','Ó'=>'O','Ọ'=>'O','Ỏ'=>'O','Õ'=>'O','Ô'=>'O','Ồ'=>'O','Ố'=>'O','Ộ'=>'O','Ỗ'=>'O','Ổ'=>'O','Ơ'=>'O','Ờ'=>'O','Ớ'=>'O','Ợ'=>'O','Ở'=>'O','Ỡ'=>'O','Ù'=> 'U', 'Ú'=> 'U', 'Ụ'=> 'U', 'Ủ'=> 'U', 'Ũ'=> 'U', 'Ư'=> 'U', 'Ừ'=> 'U', 'Ứ'=> 'U', 'Ự'=> 'U', 'Ử'=> 'U', 'Ữ'=> 'U', 'À'=> 'A','Ỳ'=> 'Y','Ý'=> 'Y','Ỵ'=> 'Y','Ỷ'=> 'Y','Ỹ'=> 'Y','Đ'=> 'D','Á'=> 'A','Ạ'=> 'A','Ả'=> 'A','Ã'=> 'A','Â'=> 'A','Ầ'=> 'A','Ấ'=> 'A','Ậ'=> 'A','Ẩ'=> 'A','Ẫ'=> 'A','Ă'=> 'A','Ằ'=> 'A','Ắ'=> 'A','Ặ'=> 'A','Ẳ'=> 'A','Ẵ' => 'A') )
  end
   def nghanhnghe=(value)

 write_attribute(:nghanhnghe, value)

   
   write_attribute(:nghanhngheurl, value.gsub(/[àáạảãâầấậẩẫăằắặẳẵđỳýỵỷỹùúụủũưừứựửữòóọỏõôồốộổỗơờớợởỡèéẹẻẽêềếệểễìíịỉĩÀÁẠẢÃÂẦẤẬẨẪĂẰẮẶẲẴĐỲÝỴỶỸÙÚỤỦŨƯỪỨỰỬỮÒÓỌỎÕÔỒỐỘỔỖƠỜỚỢỞỠÈÉẸẺẼÊỀẾỆỂỄÌÍỊỈĨ ]/,' '=>'-','ì'=>'i','í'=>'i','ị'=>'i','ỉ'=>'i','ĩ'=>'i','è'=>'e','é'=>'e','ẹ'=>'e','ẻ'=>'e','ẽ'=>'e','ề'=>'e','ế'=>'e','ệ'=>'e','ê'=>'e','ể'=>'e','ễ'=>'e','ò'=>'o','ó'=>'o','ọ'=>'o','ỏ'=>'o','õ'=>'o','ô'=>'o','ồ'=>'o','ố'=>'o','ộ'=>'o','ỗ'=>'o','ổ'=>'o','ơ'=>'o','ờ'=>'o','ớ'=>'o','ợ'=>'o','ở'=>'o','ỡ'=>'o','ù'=> 'u', 'ú'=> 'u', 'ụ'=> 'u', 'ủ'=> 'u', 'ũ'=> 'u', 'ư'=> 'u', 'ừ'=> 'u', 'ứ'=> 'u', 'ự'=> 'u', 'ử'=> 'u', 'ữ'=> 'u', 'à'=> 'a','ỳ'=> 'y','ý'=> 'y','ỵ'=> 'y','ỷ'=> 'y','ỹ'=> 'y','đ'=> 'd','á'=> 'a','ạ'=> 'a','ả'=> 'a','ã'=> 'a','â'=> 'a','ầ'=> 'a','ấ'=> 'a','ậ'=> 'a','ẩ'=> 'a','ẫ'=> 'a','ă'=> 'a','ằ'=> 'a','ắ'=> 'a','ặ'=> 'a','ẳ'=> 'a','ẵ' => 'a', 'Ì'=>'I','Í'=>'I','Ị'=>'I','Ỉ'=>'I','Ĩ'=>'I','È'=>'E','É'=>'E','Ẹ'=>'E','Ẻ'=>'E','Ẽ'=>'E','Ề'=>'E','Ế'=>'E','Ệ'=>'E','Ê'=>'E','Ể'=>'E','Ễ'=>'E','Ò'=>'O','Ó'=>'O','Ọ'=>'O','Ỏ'=>'O','Õ'=>'O','Ô'=>'O','Ồ'=>'O','Ố'=>'O','Ộ'=>'O','Ỗ'=>'O','Ổ'=>'O','Ơ'=>'O','Ờ'=>'O','Ớ'=>'O','Ợ'=>'O','Ở'=>'O','Ỡ'=>'O','Ù'=> 'U', 'Ú'=> 'U', 'Ụ'=> 'U', 'Ủ'=> 'U', 'Ũ'=> 'U', 'Ư'=> 'U', 'Ừ'=> 'U', 'Ứ'=> 'U', 'Ự'=> 'U', 'Ử'=> 'U', 'Ữ'=> 'U', 'À'=> 'A','Ỳ'=> 'Y','Ý'=> 'Y','Ỵ'=> 'Y','Ỷ'=> 'Y','Ỹ'=> 'Y','Đ'=> 'D','Á'=> 'A','Ạ'=> 'A','Ả'=> 'A','Ã'=> 'A','Â'=> 'A','Ầ'=> 'A','Ấ'=> 'A','Ậ'=> 'A','Ẩ'=> 'A','Ẫ'=> 'A','Ă'=> 'A','Ằ'=> 'A','Ắ'=> 'A','Ặ'=> 'A','Ẳ'=> 'A','Ẵ' => 'A') )
  end
extend FriendlyId
friendly_id :tencvurl, use: [:slugged, :finders]

 #private
#def should_generate_new_friendly_id?
 # slug.blank? || tencvurl_changed?
#end

end
