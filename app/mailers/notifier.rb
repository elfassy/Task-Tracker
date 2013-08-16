class Notifier < ActionMailer::Base
  default from: "Jason Milam <jmilam@dalcom.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.task_created.subject
  #
  def task_created(user)
    @event = Event.last
    @name = user
    if user == "Matt Broach"
      matt = User.find(2)
      email = matt.email
      mail to: email, subject: "New task has been added to your que"
    elsif user == "Alan McFarland"
      alan = User.find(3)
      email = alan.email
      mail to: email, subject: "New task has been added to your que"
    elsif user == "Brian Davis"
      brian = User.find(4)
      email = brian.email
      mail to: email, subject: "New task has been added to your que"
    elsif user == "Brad Garrison"
      brad = User.find(5)
      email = brad.email
      mail to: email, subject: "New task has been added to your que"
    elsif user == "Russell Anderson"
      russ = User.find(6)
      email = russ.email
      mail to: email, subject: "New task has been added to your que"
    elsif user == "Jason Milam"
      jason = User.find(1)
      email = jason.email
      mail to: email, subject: "New task has been added to your que"
    end

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.task_verified.subject
  #
  def task_verified
    @greeting = "Hi"

    mail to: "to@example.org"
  end

end
