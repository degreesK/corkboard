class CreateCorks < ActiveRecord::Migration
  def change
    create_table :corks do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
