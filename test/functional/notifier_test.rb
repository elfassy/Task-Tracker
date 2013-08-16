require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "task_created" do
    mail = Notifier.task_created
    assert_equal "Task created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "task_verified" do
    mail = Notifier.task_verified
    assert_equal "Task verified", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
