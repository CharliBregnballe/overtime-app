class ManagerMailer < ApplicationMailer

  def email manager
    @manager = manager
    mail(to: @manager.email, subject: 'daily Overtime Request Email')
  end
end
