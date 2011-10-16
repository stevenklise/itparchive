class CreateTheses < ActiveRecord::Migration
  def change
    create_table :theses do |t|
      t.string :title
      t.integer :year
      t.text :notes

      t.timestamps
    end
  end
end
