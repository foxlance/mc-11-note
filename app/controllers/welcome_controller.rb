class WelcomeController < ApplicationController

    def index
    end

    def sendmail
      @user = {name: 'Lance Vincent Bumanglag', email: 'lancevincent@gmail.com'}

      Notifications.signup(@user).deliver

      redirect_to root_path, alert: 'Mail was sent'
    end
end
