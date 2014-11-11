class CreateProperImage < ActiveRecord::Migration
  def change
    remove_column :spree_blocks, :image, :string
    add_attachment :spree_blocks, :image
  end
end
