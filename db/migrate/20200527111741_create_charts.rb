class CreateCharts < ActiveRecord::Migration[5.0]
  def change
    create_table :charts do |t|
      t.string :name
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end
