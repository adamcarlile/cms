class Promo < ActiveRecord::Base
  include NamedScopeHelpers
  belongs_to :page
  
  has_attached_file :image, 
    :url =>                   "/upload/images/:id/:style_:basename.:extension",
    :path => ":rails_root/public/upload/images/:id/:style_:basename.:extension",
    :styles => {
        :medium => "300x160#",
        :thumbnail => "75x75#"
    }
      
  validates_attachment_presence :image, :message => 'not uploaded'
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/gif', 'image/png']
  
end
