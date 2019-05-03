class CreateVisitorInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :visitor_infos do |t|
      t.string :guid
      t.string :path
      t.datetime :accessed_at

      t.timestamps
    end
  end
end
