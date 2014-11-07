class CreateSpreeBlocks < ActiveRecord::Migration
  def change
    create_table :spree_blocks do |t|
      t.string :link
      t.string :image
      t.integer :position

      t.timestamps
    end
  end
end
