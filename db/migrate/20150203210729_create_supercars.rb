class CreateSupercars < ActiveRecord::Migration
  def change
    create_table :supercars do |t|
      t.string :img_url

      t.timestamps null: false
    end
  end
end
