class CreateContracts < ActiveRecord::Migration[6.0]
  def change
    create_table :contracts do |t|
      t.string :place
      t.date :date
      t.string :name
      t.string :dpi
      t.integer :age
      t.string :civil_status
      t.string :email
      t.integer :phone
      t.string :service
      t.string :career
      t.string :academic_grade
      t.integer :mount
      t.integer :fee
      t.string :way_to_pay
      t.string :contract_service
      t.string :social

      t.timestamps
    end
  end
end
