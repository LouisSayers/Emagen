module Emagen
  class WebAddress
    attr_reader :domain

    def initialize(web_address)
      @domain = domain_from(web_address)
    end

    private
    def domain_from(web_address)
      web_address.split('.').slice(-2..-1).join('.')
    end
  end
end