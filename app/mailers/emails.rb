class Emails < ActionMailer::Base
  def contactme(emails_params)
    subject "Electronic Mail: " << emails_params[:subject]
    recipients "brianebauer@gmail.com"
    from emails_params[:address]
    sent_on Time.now
    body :message => emails_params[:body], :sender_name => emails_params[:name]
  end
end
