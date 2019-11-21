require 'exercise_3'

describe SayHello do
  let(:message_double) { double( :message, send: "Imagine an email") }
  let(:message_class) { double( :Message, new: message_double) }
  let(:email_client) { double( :email_client, message: message_double) }
  let(:emailclient_class) { double( :EmailClient, new: email_client) }

  subject(:say_hello) { SayHello.new(emailclient_class) }

  describe "#run" do
    it "should send an email to say hello" do
      expect(say_hello.run).to eq "Imagine an email"
    end
  end

end
