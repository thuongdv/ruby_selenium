require 'capybara'
require 'capybara/dsl'
require 'site_prism'

class Menu < SitePrism::Section
  element :sign_in, '.login'
  element :account_name, '.account>span'
end

class CommonPage < SitePrism::Page
  section :menu, Menu, '#header .nav'

  def go_to_authentication_page
    menu.sign_in.click
    AuthenticationPage.new
  end

  # Handle issue: The connection was reset page displays
  def wait_for_page_load_successfully
    wait = Selenium::WebDriver::Wait.new(timeout: TimeOut::READ_TIMEOUT)
    wait.until { evaluate_script('document.readyState') == 'complete' }
  end
end
