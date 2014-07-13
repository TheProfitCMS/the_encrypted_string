# TheEncryptedString

```ruby
"hello world".to_the_encrypted # => "P4h27bEUQV8Iw60BrHxH7A=="

"P4h27bEUQV8Iw60BrHxH7A==".to_the_decrypted # => "hello world"
```

### Settings into your App

**config/initializers/the_encrypted_string.rb**

```ruby
Encryptor.default_options.merge!(
  algorithm: 'aes-128-cbc',
  key:  'this KEY  should be redefined into your App',
  salt: 'this SALT should be redefined into your App',
  iv:   'this INIT VECTOR should be redefined into your App'
)
```

### MIT

Ilya Zykin, 2014
