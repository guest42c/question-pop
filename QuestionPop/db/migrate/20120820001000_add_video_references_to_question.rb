class AddVideoReferencesToQuestion < ActiveRecord::Migration
  change_table :questions do |t|
    t.references :video
  end
end
