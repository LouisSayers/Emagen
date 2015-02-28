require 'spec_helper'

describe Emagen do
  let(:domain) { "domain.com" }

  describe '#for' do
    context "valid arguments" do
      it "should generate email addresses" do
        expected_usernames = %w{
          Jack Black JackBlack Jack.Black JBlack J.Black JackB Jack.B JB J.B
          BlackJack Black.Jack BlackJ Black.J BJack B.Jack BJ B.J
          Jack-Black J-Black Jack-B J-B Black-Jack Black-J B-J
          Jack_Black J_Black Jack_B J_B Black_Jack Black_J B_J
        }

        emails = Emagen.for("Jack Black", domain)
        expected_usernames.each do |username|
          expect(emails).to include("#{username}@#{domain}")
        end
      end
    end
  end

end