# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{singem}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Donohoe"]
  s.autorequire = %q{singem}
  s.date = %q{2009-04-20}
  s.default_executable = %q{singem}
  s.description = %q{A gem that provides generators for sinatra apps, ready to go with rack-test/webrat/randexp and others}
  s.email = %q{atmos@atmos.org}
  s.executables = ["singem"]
  s.extra_rdoc_files = ["LICENSE", "TODO"]
  s.files = ["LICENSE", "README.md", "Rakefile", "TODO", "lib/generators", "lib/generators/singem", "lib/generators/singem/singem_generator.rb", "lib/generators/singem/templates", "lib/generators/singem/templates/config.ru.erb", "lib/generators/singem/templates/lib", "lib/generators/singem/templates/lib/templates", "lib/generators/singem/templates/lib/templates/app.rb.erb", "lib/generators/singem/templates/lib/templates.rb.erb", "lib/generators/singem/templates/LICENSE", "lib/generators/singem/templates/Rakefile", "lib/generators/singem/templates/README.md", "lib/generators/singem/templates/spec", "lib/generators/singem/templates/spec/fixtures.rb.erb", "lib/generators/singem/templates/spec/spec_helper.rb.erb", "lib/generators/singem/templates/spec/templates_spec.rb.erb", "lib/generators/singem/templates/TODO", "lib/generators/singem/USAGE", "lib/singen.rb", "spec/singem_spec.rb", "spec/spec_helper.rb", "bin/singem"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/atmos/singem}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem that provides generators for sinatra apps, ready to go with rack-test/webrat/randexp and others}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.1.1"])
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.1.0"])
      s.add_runtime_dependency(%q<webrat>, ["~> 0.4.3"])
      s.add_runtime_dependency(%q<fakeweb>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<haml>, ["~> 2.0.9"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.1.1"])
      s.add_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_dependency(%q<rack-test>, ["~> 0.1.0"])
      s.add_dependency(%q<webrat>, ["~> 0.4.3"])
      s.add_dependency(%q<fakeweb>, ["~> 1.2.0"])
      s.add_dependency(%q<haml>, ["~> 2.0.9"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.1.1"])
    s.add_dependency(%q<rubigen>, [">= 1.5.2"])
    s.add_dependency(%q<rack-test>, ["~> 0.1.0"])
    s.add_dependency(%q<webrat>, ["~> 0.4.3"])
    s.add_dependency(%q<fakeweb>, ["~> 1.2.0"])
    s.add_dependency(%q<haml>, ["~> 2.0.9"])
  end
end
