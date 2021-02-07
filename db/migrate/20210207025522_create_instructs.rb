class CreateInstructs < ActiveRecord::Migration[6.1]
  def change
    create_table :instructs do |t|
      t.string :category

      t.timestamps
    end
  end
end
