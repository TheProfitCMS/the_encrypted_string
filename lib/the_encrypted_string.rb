require 'the_encrypted_string/version'
require 'encryptor'

module TheEncryptedString; end

# https://github.com/attr-encrypted/encryptor#algorithms
Encryptor.default_options.merge!(
  algorithm: 'aes-128-cbc',
  key:  'this KEY  should be redefined into your App',
  salt: 'this SALT should be redefined into your App',
  iv:   'this INIT VECTOR should be redefined into your App'
)

class String
  def to_the_encrypted
    Base64.urlsafe_encode64(self.encrypt)
  end

  def to_the_decrypted
    Base64.urlsafe_decode64(self).decrypt
  end
end
