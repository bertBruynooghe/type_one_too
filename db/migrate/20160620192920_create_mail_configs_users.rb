class CreateMailConfigsUsers < ActiveRecord::Migration
  def change
    create_table :mail_configs_users do |t|
      t.integer :mail_config_id
      t.integer :user_id
    end
  end
end
