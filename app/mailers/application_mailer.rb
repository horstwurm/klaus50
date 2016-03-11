class ApplicationMailer < ActionMailer::Base
  default from: "horst.wurm@bluewin.ch"
  default bcc: "horst.wurm@bluewin.ch"
  layout 'mailer'
end
