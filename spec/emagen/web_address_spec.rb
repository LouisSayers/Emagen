require 'spec_helper'

describe Emagen::WebAddress do
  let(:subject) { Emagen::WebAddress }
  let(:domain) { 'domain.com' }
  let(:web_addresses) do
    %w{
      http://www.domain.com http://domain.com
      https://www.domain.com https://domain.com
      www.domain.com domain.com
    }
  end

  describe '#domain' do
    it "should get the domain from a web address" do
      web_addresses.each do |web_address|
        address = subject.new(web_address)
        expect(address.domain).to eq domain
      end
    end
  end
end