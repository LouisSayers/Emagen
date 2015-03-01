require 'spec_helper'

describe Emagen::WebAddress do
  let(:subject) { Emagen::WebAddress }
  let(:web_address) { "http://www.domain.com" }

  describe '#domain' do
    it "should get the domain from a web address" do
      address = subject.new(web_address)
      expect(address.domain).to eq 'domain.com'
    end
  end
end