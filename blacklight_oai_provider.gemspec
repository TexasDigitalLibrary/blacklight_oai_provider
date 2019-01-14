require File.join(File.dirname(__FILE__), "lib/blacklight_oai_provider/version")

Gem::Specification.new do |s|
  s.name = "blacklight_oai_provider"
  s.version = BlacklightOaiProvider::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Chris Beer", "Carla Galarza"]
  s.email = ["chris@cbeer.info", "cmg2228@columbia.edu"]
  s.homepage    = "http://projectblacklight.org/"
  s.summary = "Blacklight Oai Provider plugin"

  s.rubyforge_project = "blacklight"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rails", '~> 5.1'
  s.add_dependency "blacklight", '~> 7.0'
  s.add_dependency "oai", "~> 0.4"
  s.add_development_dependency 'rspec-rails', "~> 3.8"
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'solr_wrapper'
  s.add_development_dependency 'engine_cart'
  s.add_development_dependency "chromedriver-helper"
  s.add_development_dependency "selenium-webdriver"
  s.add_development_dependency 'byebug'
  s.add_development_dependency 'rubocop', '~> 0.62'
  s.add_development_dependency "rubocop-rspec", '~> 1.31.0'
end
