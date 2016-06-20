json.array!(@mail_configs) do |mail_config|
  json.extract! mail_config, :id, :criterium, :template_name
  json.url mail_config_url(mail_config, format: :json)
end
