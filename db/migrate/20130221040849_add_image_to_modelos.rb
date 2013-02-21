class AddImageToModelos < ActiveRecord::Migration
  def self.up
    add_column :modelos, :image, :string
  end

  def self.down
    remove_column :modelos, :image
  end
end
