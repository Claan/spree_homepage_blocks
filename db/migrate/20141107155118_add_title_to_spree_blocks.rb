class AddTitleToSpreeBlocks < ActiveRecord::Migration
  def change
    add_column :spree_blocks, :title, :string
  end
end
