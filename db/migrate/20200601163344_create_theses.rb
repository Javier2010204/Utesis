class CreateTheses < ActiveRecord::Migration[6.0]
  def change
    create_table :theses do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :career
      t.string :grade
      t.string :university
      t.string :delivery_time
      t.string :type_document
      t.text :body

      t.timestamps
    end
  end
end
