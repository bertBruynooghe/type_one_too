class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :mail_configs

  scope :for_mail_config,  -> (mail_config_id) do
    return where(nil) unless mail_config_id
    mail_config = MailConfig.find(mail_config_id)
    where(eval('"' + mail_config.criterium + '"'))
  end
end
