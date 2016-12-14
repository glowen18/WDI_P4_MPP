class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.integer :time_to_do
      t.datetime :due_date
      t.datetime :completed_at
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
