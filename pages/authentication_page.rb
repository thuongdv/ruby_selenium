require 'pages/common_page'
require 'pages/my_account_page'

class MyAccount < SitePrism::Section
  element :email_address, '#email_create'
  element :create_an_account, '#SubmitCreate'
end

class AlreadyRegister < SitePrism::Section
  element :email_address, '#email'
  element :password, '#passwd'
  element :sign_in, '#SubmitLogin'
end

class AccountCreation < SitePrism::Section
  element :mr_title, '#id_gender1'
  element :customer_first_name, '#customer_firstname'
  element :customer_last_name, '#customer_lastname'
  element :password, '#passwd'
  element :day, '#days', visible: false
  element :month, '#months', visible: false
  element :year, '#years', visible: false

  element :address, '#address1'
  element :city, '#city'
  element :state, '#id_state', visible: false
  element :zip_code, '#postcode'
  element :country, '#id_country', visible: false
  element :mobile_phone, '#phone_mobile'
  element :register, '#submitAccount'
end

class AuthenticationPage < CommonPage
  section :my_account, MyAccount, '#create-account_form'
  section :account_creation, AccountCreation, '#account-creation_form'
  section :already_register, AlreadyRegister, '#login_form'

  def create_an_account(email_address)
    my_account.email_address.set email_address
    my_account.create_an_account.click
  end

  def register_information(personal_info, address_info)
    account_creation.mr_title.click
    account_creation.customer_first_name.set personal_info[:first_name]
    account_creation.customer_last_name.set personal_info[:last_name]
    account_creation.password.set personal_info[:password]
    account_creation.day.find("option[value='#{personal_info[:day]}']").select_option
    account_creation.month.find("option[value='#{personal_info[:month]}']").select_option
    account_creation.year.find("option[value='#{personal_info[:year]}']").select_option

    account_creation.address.set address_info[:address]
    account_creation.city.set address_info[:city]
    account_creation.state.select address_info[:state]
    account_creation.zip_code.set address_info[:postcode]
    account_creation.country.select address_info[:country]
    account_creation.mobile_phone.set address_info[:mobile_phone]
    account_creation.register.click

    wait_for_page_load_successfully
    MyAccountPage.new
  end

  def sign_in(email_address, password)
    already_register.email_address.set email_address
    already_register.password.set password
    already_register.sign_in.click

    MyAccountPage.new
  end
end
