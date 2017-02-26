namespace :notification do
  desc "Sends SMS notification to employees asking them to log if they had overtime or not"
  task sms: :environment do
    # Schedule to run at Sunday at 5pm
    # Iterate over all employees
    # Skip AdminUsers
    # Send a message that has instruction and a link to log time

    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end

  end

end
