require 'pages/home_page'

# TEST CASE: user can sign in with existing account
# STEPS:
# 1. Navigate to http://automationpractice.com
# 2. Sign in with valid email address and password
# Verify points:
# "Welcome to your account. Here you can manage all of your personal information and orders." displays
# Account name displays on the menu

home_page = HomePage.new
authentication_page = my_account_page = nil

describe 'TEST CASE 02: user can sign in with existing account', type: 'smoke_test' do
  it "1. Navigate to #{home_page.url}" do
    home_page.load
    authentication_page = home_page.go_to_authentication_page
  end

  it "2. Sign in with valid email address and password: #{Account::EXISTING_ACCOUNT[:email_address]}/#{Account::EXISTING_ACCOUNT[:password]}" do
    my_account_page = authentication_page.sign_in Account::EXISTING_ACCOUNT[:email_address], Account::EXISTING_ACCOUNT[:password]
  end

  it "\"#{MyAccountPage::ACCOUNT_INFO_TEXT}\" displays" do
    expect(my_account_page.account_info.text).to eq(MyAccountPage::ACCOUNT_INFO_TEXT)
  end

  it 'Account name "Test Test" displays on the menu' do
    expect(my_account_page.menu.account_name.text).to eq(Account::EXISTING_ACCOUNT[:name])
  end
end
