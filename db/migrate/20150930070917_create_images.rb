class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	      t.attachment :avatar
    end
  end
end
