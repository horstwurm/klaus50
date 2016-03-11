require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signin_confirmation" do
    mail = UserMailer.signin_confirmation
    assert_equal "Signin confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
