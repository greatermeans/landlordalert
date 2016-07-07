class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :type
      t.text :description
      t.string :reference
      t.string :status
      t.datetime :closed_at

      t.timestamps
    end
  end
end
