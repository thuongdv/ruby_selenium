Automated web application by Selenium, Ruby
============================================

This project is an example of automation testing by Selenium and Ruby.

### Tools: Capybara, Site Prism, RSpec

# Prerequisites

OS: Windows, recommended Windows 7

Browsers: Chrome latest or older, Firefox 46.0.1 or older

### After you complete setting up the following requires, you can run automation scripts by
* double click on **run.bat** file
* or open CMD in the project root path and then type `rspec spec`

# Set up environment
1. Install Ruby 2.3.0 32bits
2. Install DevKit 32bits
3. Install dependencies

## 1. Install ruby 2.3.0 32bits

Download and install [Ruby 2.3.0](http://rubyinstaller.org/downloads/archives) then add ruby bin path to **PATH** environment if it is not added automatically.

To make sure: open CMD then type **ruby -v**, you will see Ruby version, like this:

```
C:\Users\softeng>ruby -v
ruby 2.3.0p0 (2015-12-25 revision 53290) [i386-mingw32]

C:\Users\softeng>
```

## 2. Install DevKit 32bits

* Download [DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe](http://rubyinstaller.org/downloads/)
* Double click on the downloaded file and extract it to C:\DevKit. If you open C:\DevKit folder, it looks like:

```
  bin
  etc
  include
  lib
  mingw
  postinstall
  sbin
  share
  devkitvars.bat
  devkitvars.ps1
  dk.rb
  m.ico
  msys.bat
  msys.ico
```

* Open CMD
* Cd to C:\DevKit
* Type `ruby dk.rb init`
* Type `ruby dk.rb install`
* CMD content looks like:

```
C:\DevKit>ruby dk.rb init
[INFO] found RubyInstaller v2.3.0 at C:/Ruby23

Initialization complete! Please review and modify the auto-generated
'config.yml' file to ensure it contains the root directories to all
of the installed Rubies you want enhanced by the DevKit.

C:\DevKit>ruby dk.rb install
[INFO] Updating convenience notice gem override for 'C:/Ruby23'
[INFO] Installing 'C:/Ruby23/lib/ruby/site_ruby/devkit.rb'

C:\DevKit>
```

* Add C:\DevKit\bin to PATH environment variable

## 3. Install dependencies
* Open CMD
* CD to project path
* Type `gem install bundler`
* Then type `bundle install`

CMD content likes this:

```
E:\Projects\git\ruby_selenium>gem install bundler
Fetching: bundler-1.13.2.gem (100%)
Successfully installed bundler-1.13.2
Parsing documentation for bundler-1.13.2
Installing ri documentation for bundler-1.13.2
Done installing documentation for bundler after 8 seconds
1 gem installed

E:\Projects\git\ruby_selenium>bundle install
Fetching gem metadata from https://rubygems.org/.........
Fetching version metadata from https://rubygems.org/..
Installing concurrent-ruby 1.0.2
Installing i18n 0.7.0
Installing minitest 5.9.1
Installing thread_safe 0.3.5
Installing addressable 2.4.0
Installing ast 2.3.0
Installing mime-types-data 3.2016.0521
Installing mini_portile2 2.1.0
Installing pkg-config 1.1.7
Installing rack 2.0.1
Installing ffi 1.9.14
Installing diff-lcs 1.2.5
Installing powerpack 0.1.1
Installing rainbow 2.1.0
Installing rspec-support 3.5.0
Installing ruby-progressbar 1.8.1
Installing unicode-display_width 1.1.1
Installing rubyzip 1.2.0
Installing websocket 1.2.3
Using bundler 1.13.2
Installing tzinfo 1.2.2
Installing parser 2.3.1.4
Installing mime-types 3.1
Installing nokogiri 1.6.8
Installing rack-test 0.6.3
Installing childprocess 0.5.9
Installing rspec-core 3.5.4
Installing rspec-expectations 3.5.0
Installing rspec-mocks 3.5.0
Installing activesupport 5.0.0.1
Installing rubocop 0.43.0
Installing xpath 2.0.0
Installing selenium-webdriver 2.53.4
Installing rspec 3.5.0
Installing capybara 2.9.2
Installing site_prism 2.9
Bundle complete! 6 Gemfile dependencies, 36 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
Post-install message from nokogiri:
Nokogiri is built with the packaged libraries: libxml2-2.9.4, libxslt-1.1.29, zl
ib-1.2.8, libiconv-1.14.

E:\Projects\git\ruby_selenium>
```

ENJOY!