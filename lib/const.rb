require 'securerandom'

class Account
  PERSONAL_INFO = {
    first_name: 'Test',
    last_name: 'Test',
    password: '123456',
    day: '1',
    month: '10',
    year: '1990'
  }.freeze

  ADDRESS_INFO = {
    address: '92 Dunbar Dr.',
    city: 'Ossining',
    state: 'New York',
    postcode: '10562',
    country: 'United States',
    mobile_phone: '0123456789'
  }.freeze

  EXISTING_ACCOUNT = {
    email_address: 'autob817c32a60d24674d086@sharklasers.com',
    password: '123456',
    name: 'Test Test'
  }.freeze

  class << self
    def email_address
      format('auto%s@sharklasers.com', SecureRandom.hex(10))
    end
  end
end

class TimeOut
  READ_TIMEOUT = 160
  WAIT_CONTROL = 8
end
