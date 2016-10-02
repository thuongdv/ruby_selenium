require 'active_support/core_ext/string/inflections'

class PageScreenshot
  SCREENSHOT_DIR = File.join(File.expand_path('../..', __FILE__), 'screenshot')

  class << self
    attr_accessor :number_of_images

    def configure
      @current_number_of_images = 0
      yield self
    end

    def take_screenshot(page, example)
      return unless @current_number_of_images < number_of_images && [RSpec::Expectations::ExpectationNotMetError, Capybara::ElementNotFound].include?(example.exception.class)

      screenshot_name = "#{example.description.parameterize[0..39]}_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S.%j')}.png"
      screenshot_path = File.join(SCREENSHOT_DIR, screenshot_name)
      page.save_screenshot(screenshot_path)
      example.metadata[:screenshot] = {}
      example.metadata[:screenshot][:image] = screenshot_path
      @current_number_of_images += 1
    end
  end
end

PageScreenshot.configure do |config|
  config.number_of_images = 1
end
