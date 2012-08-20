class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :type
      t.string :target
      t.text :description
      t.float :start
      t.float :stop

      t.timestamps
    end
  end
end
