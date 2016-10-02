require 'pages/home_page'

# TEST CASE: user can create an account with valid data
# STEPS:
# 1. Navigate to http://automationpractice.com\
# 2. Create an account with valid email address
# 3. Register personal information
# Verify successful message displays: Welcome to your account. Here you can manage all of your personal information and orders.

home_page = HomePage.new
authentication_page = my_account_page = nil

describe 'TEST CASE 01: user can create an account with valid data', type: 'smoke_test' do
  it "1. Navigate to #{home_page.url}" do
    home_page.load
    authentication_page = home_page.go_to_authentication_page
  end

  it "2. Create an account with valid email address: #{Account.email_address}" do
    authentication_page.create_an_account Account.email_address
  end

  it "3. Register personal information: #{Account::PERSONAL_INFO}. Address information: #{Account::ADDRESS_INFO}" do
    my_account_page = authentication_page.register_information Account::PERSONAL_INFO, Account::ADDRESS_INFO
  end

  it "Verify successful message displays: #{MyAccountPage::ACCOUNT_INFO_TEXT}" do
    expect(my_account_page.account_info.text).to eq(MyAccountPage::ACCOUNT_INFO_TEXT)
  end
end
