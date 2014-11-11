class Spree::Block < ActiveRecord::Base
  validates_presence_of :link
  validates_presence_of :image

  default_scope -> { order("position ASC") }

  has_attached_file :image, 
     styles: {mini: '48x48#', normal: '200x200>', large: '600x600>'},
     default_style: :large,
     url: "/assets/blocks/:id/:style/:basename.:extension",
     path: ":rails_root/public/assets/blocks/:id/:style/:basename.:extension"  

  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }

end
