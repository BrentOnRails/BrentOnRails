class Notifier < ActionMailer::Base
  default :from => 'NewMessage@BrentOnRails.com'

    # send a signup email to the user, pass in the user object that
    # contains the user's email address
    def new_message(message)
      mail(
        :to => 'brentalansmith@gmail.com',
        :subject => 'New Message From ' + message.email
      )
    end
end
