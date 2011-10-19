clast
:es WelcomeController < ApplicationController
  def index
    @articles = Article.all
  end
  def send_mail
    Emails.deliver_contactme(params[:email])
    flash[:notice] = "Email was sent successfully."
    redirect_to root_path
  end
end
