# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locomotivecms/freight/version'

Gem::Specification.new do |spec|
  spec.name          = "locomotivecms-freight"
  spec.version       = Locomotivecms::Freight::VERSION
  spec.authors       = ["Joel Helbling"]
  spec.email         = ["joel@joelhelbling.com"]

  spec.summary       = %q{Imports WordPress content into LocomotiveCMS.}
  spec.description   = %q{Imports posts, comments and images from a WordPress site.  Rewrites URLs for images and internal links.}
  spec.homepage      = "https://github.com/joelhelbling/locomotivecms-freight"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.7"
  spec.add_dependency "locomotivecms_coal", "~> 1.0"
  spec.add_dependency "activesupport", "~> 4.2"
  spec.add_dependency "squares", "~> 0.3"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "pry"
end
