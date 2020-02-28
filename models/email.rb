class Email

  require 'sendgrid-ruby'
  include SendGrid

  def self.send(recipient = ENV['EMAIL'])
    from = Email.new(email: 'test@example.com')
    to = Email.new(email: recipient)
    subject = 'MakersBnB'
    content = Content.new(type: 'text/plain', value: 'localhost:9292/my_spaces')
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
  end

end
