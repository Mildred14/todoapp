class WeeklyEmail < ApplicationJob
  #sidekiq_options retry: false
   queue_as :default
   def perform(*)
    @users = User.all
    users.each do |user|
      mail = ApplicationMailer.sample_email(user)
      mail.deliver_now
    end
  end
end