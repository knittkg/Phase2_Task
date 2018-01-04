class CreatePossomes < ActiveRecord::Migration[5.1]
  def change
    create_table :possomes do |t|
      t.text :body

      t.timestamps
    end
  end
end
