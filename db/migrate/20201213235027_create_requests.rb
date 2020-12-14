class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.belongs_to :session, null: false, foreign_key: true
      t.jsonb :payload

      t.timestamps
    end
  end
end
