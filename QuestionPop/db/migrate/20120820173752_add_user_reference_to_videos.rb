class AddUserReferenceToVideos < ActiveRecord::Migration
  change_table :videos do |t|
    t.references :user
  end
end
