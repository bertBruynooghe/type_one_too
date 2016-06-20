desc "email delivery"
task email_delivery: :environment do |t|
  User.all.find_each do |user|
    UserMailer.welcome_email(user).deliver_now
  end
end
