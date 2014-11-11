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

  before_save :update_positions

  def update_positions
    unless new_record?
      return unless prev_position = Spree::Block.find(self.id).position
      if prev_position > self.position
        Spree::Block.where("? <= position AND position < ?", self.position, prev_position).update_all("position = position + 1")
      elsif prev_position < self.position
        Spree::Block.where("? < position AND position <= ?", prev_position,  self.position).update_all("position = position - 1")
      end
    end

    true
  end
end
