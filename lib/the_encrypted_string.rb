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
    encrypted_str = Encryptor.encrypt(self)
    Base64.urlsafe_encode64 encrypted_str
  end

  def to_the_decrypted
    encrypted_str = Base64.urlsafe_decode64(self)
    Encryptor.decrypt encrypted_str
  end
end
