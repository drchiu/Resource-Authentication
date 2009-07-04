require File.dirname(__FILE__) + '/../test_helper.rb'

module CryptoProviderTest
  class AES256Test < ActiveSupport::TestCase
    def test_encrypt
      assert ResourceAuthentication::CryptoProviders::AES256.encrypt("mypass")
    end
    
    def test_matches
      hash = ResourceAuthentication::CryptoProviders::AES256.encrypt("mypass")
      assert ResourceAuthentication::CryptoProviders::AES256.matches?(hash, "mypass")
    end
  end
end