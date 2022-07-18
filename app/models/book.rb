class Book < ApplicationRecord
  
belongs_to:user

def get_profile_image
  unless image.attached?
    file_path=Rails.root.join('app/asserts/images/no_image.jpeg')
    image.attach(io:File.open(file_path),filename:'default_image.jpg',content_type:'image/jpeg')
  end
    profile_image
end

end