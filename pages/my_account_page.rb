require 'pages/common_page'

class MyAccountPage < CommonPage
  element :account_info, '.info-account'
  ACCOUNT_INFO_TEXT = 'Welcome to your account. Here you can manage all of your personal information and orders.'.freeze
end
