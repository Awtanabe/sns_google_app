class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :desc
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
