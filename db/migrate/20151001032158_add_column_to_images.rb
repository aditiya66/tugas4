class AddColumnToImages < ActiveRecord::Migration
  def change
  add_column :images, :title , :string
  add_column :images, :descrip, :string


  end
end
