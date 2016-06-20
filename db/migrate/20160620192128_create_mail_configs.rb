class CreateMailConfigs < ActiveRecord::Migration
  def change
    create_table :mail_configs do |t|
      t.string :criterium
      t.string :template_name

      t.timestamps null: false
    end
  end
end
