class CreateCareers < ActiveRecord::Migration[6.1]
  def change
    create_table :careers do |t|
      t.string :category

      t.timestamps
    end
  end
end
