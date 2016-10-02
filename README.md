Automated web application by Selenium, Ruby
============================================

This is a demo of automation testing for functional testing type.

### Tools: Capybara, Site Prism, RSpec

# Prerequisites

OS: Windows 7

Browsers: Chrome latest or older, Firefox 46.0.1 or older

### We will do the following actions step by step
1. Install Ruby 2.3.0 32-bit
2. Install DevKit 32-bit
3. Install dependencies

#1. Install ruby 2.3.0 32-bit

Download and install [Ruby 2.3.0](http://rubyinstaller.org/downloads/archives) then add ruby bin path to **PATH** environment if it is not added automatically.

To make sure: open CMD then type **ruby -v**, you will see Ruby version

#2. Install DevKit 32-bit

* Download [DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe](http://rubyinstaller.org/downloads/)
* Double click on the downloaded file and type C:\DevKit into textbox. If you open C:\DevKit  folder, it looks like:

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
* Type ruby dk.rb init`
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

* Add C:\DevKit, C:\DevKit\bin to PATH environment

#3. Install dependencies
* Open CMD
* CD to project path
* Type `gem install bundler`
* Then type `bundle install`

CMD content likes this:

```
D:\ruby_selenium>bundle install
DL is deprecated, please use Fiddle
Fetching gem metadata from https://rubygems.org/........
Fetching version metadata from https://rubygems.org/..
Resolving dependencies....
Installing i18n 0.7.0
Installing json 1.8.3 with native extensions
Installing minitest 5.8.4
Installing thread_safe 0.3.5
Installing addressable 2.3.8
Installing ast 2.2.0
Installing mime-types 2.99
Installing mini_portile 0.6.0
Installing rack 1.6.4
Installing ffi 1.9.10
Installing highline 1.7.8
Installing diff-lcs 1.2.5
Installing unf_ext 0.0.7.2
Installing multi_json 1.11.2
Installing netrc 0.11.0
Installing powerpack 0.1.1
Installing puma 2.15.3 with native extensions
Installing rainbow 2.1.0
Installing rspec-support 3.2.2
Installing ruby-progressbar 1.7.5
Installing rubyzip 1.2.0
Installing websocket 1.2.2
Installing tilt 2.0.2
Using bundler 1.11.2
Installing tzinfo 1.2.2
Installing parser 2.3.0.6
Installing nokogiri 1.6.3.1
Installing rack-test 0.6.3
Installing rack-protection 1.5.3
Installing childprocess 0.5.9
Installing commander 4.3.4
Installing unf 0.1.4
Installing rspec-core 3.2.3
Installing rspec-expectations 3.2.1
Installing rspec-mocks 3.2.1
Installing activesupport 4.2.0
Installing astrolabe 1.3.1
Installing xpath 2.0.0
Installing sinatra 1.4.6
Installing selenium-webdriver 2.47.1
Installing domain_name 0.5.20160128
Installing rspec-legacy_formatters 1.0.0
Installing rspec 3.2.0
Installing rubocop 0.31.0
Installing capybara 2.5.0
Installing http-cookie 1.0.2
Installing site_prism 2.6
Installing rest-client 1.8.0
Bundle complete! 12 Gemfile dependencies, 48 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
Post-install message from nokogiri:
Nokogiri is built with the packaged libraries: libxml2-2.8.0, libxslt-1.1.28, zl
ib-1.2.8, libiconv-1.14.
Post-install message from site_prism:
Make sure to add your project/company to https://github.com/natritmeyer/site_pri
sm/wiki/Who-is-using-SitePrism

D:\stash\sqaauto_outpost\outpost>
```