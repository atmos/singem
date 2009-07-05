# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{singem}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Corey Donohoe"]
  s.autorequire = %q{singem}
  s.date = %q{2009-07-05}
  s.default_executable = %q{singem}
  s.description = %q{A gem that provides generators for sinatra apps, ready to go with rack-test/webrat/randexp and others}
  s.email = %q{atmos@atmos.org}
  s.executables = ["singem"]
  s.extra_rdoc_files = ["LICENSE", "TODO"]
  s.files = ["LICENSE", "README.md", "Rakefile", "TODO", "lib/generators", "lib/generators/cucumber", "lib/generators/cucumber/cucumber_generator.rb", "lib/generators/cucumber/templates", "lib/generators/cucumber/templates/config.ru.erb", "lib/generators/cucumber/templates/features", "lib/generators/cucumber/templates/features/basics.feature.erb", "lib/generators/cucumber/templates/features/step_definitions", "lib/generators/cucumber/templates/features/step_definitions/basics.rb.erb", "lib/generators/cucumber/templates/features/support", "lib/generators/cucumber/templates/features/support/env.rb.erb", "lib/generators/cucumber/templates/lib", "lib/generators/cucumber/templates/lib/templates", "lib/generators/cucumber/templates/lib/templates/app.rb.erb", "lib/generators/cucumber/templates/lib/templates.rb.erb", "lib/generators/cucumber/templates/LICENSE", "lib/generators/cucumber/templates/Rakefile", "lib/generators/cucumber/templates/README.md", "lib/generators/cucumber/templates/spec", "lib/generators/cucumber/templates/spec/fixtures.rb.erb", "lib/generators/cucumber/templates/spec/spec_helper.rb.erb", "lib/generators/cucumber/templates/spec/templates_spec.rb.erb", "lib/generators/cucumber/templates/TODO", "lib/generators/cucumber/USAGE", "lib/generators/singem", "lib/generators/singem/singem_generator.rb", "lib/generators/singem/templates", "lib/generators/singem/templates/config.ru.erb", "lib/generators/singem/templates/lib", "lib/generators/singem/templates/lib/templates", "lib/generators/singem/templates/lib/templates/app.rb.erb", "lib/generators/singem/templates/lib/templates.rb.erb", "lib/generators/singem/templates/LICENSE", "lib/generators/singem/templates/Rakefile", "lib/generators/singem/templates/README.md", "lib/generators/singem/templates/spec", "lib/generators/singem/templates/spec/fixtures.rb.erb", "lib/generators/singem/templates/spec/spec_helper.rb.erb", "lib/generators/singem/templates/spec/templates_spec.rb.erb", "lib/generators/singem/templates/TODO", "lib/generators/singem/USAGE", "lib/generators/twitter", "lib/generators/twitter/templates", "lib/generators/twitter/templates/config.ru.erb", "lib/generators/twitter/templates/features", "lib/generators/twitter/templates/features/adding_items_from_the_bookmarklet.feature", "lib/generators/twitter/templates/features/adding_items_to_my_wishlist.feature", "lib/generators/twitter/templates/features/basics.feature.erb", "lib/generators/twitter/templates/features/step_definitions", "lib/generators/twitter/templates/features/step_definitions/basics.rb.erb", "lib/generators/twitter/templates/features/support", "lib/generators/twitter/templates/features/support/env.rb.erb", "lib/generators/twitter/templates/features/viewing_my_wish_list.feature", "lib/generators/twitter/templates/features/viewing_the_site_for_the_first_time.feature", "lib/generators/twitter/templates/lib", "lib/generators/twitter/templates/lib/templates", "lib/generators/twitter/templates/lib/templates/models", "lib/generators/twitter/templates/lib/templates/models/user.rb.erb", "lib/generators/twitter/templates/lib/templates/sinatra", "lib/generators/twitter/templates/lib/templates/sinatra/app.rb.erb", "lib/generators/twitter/templates/lib/templates/views", "lib/generators/twitter/templates/lib/templates/views/about.haml", "lib/generators/twitter/templates/lib/templates/views/failed.haml", "lib/generators/twitter/templates/lib/templates/views/home.haml", "lib/generators/twitter/templates/lib/templates.rb.erb", "lib/generators/twitter/templates/LICENSE", "lib/generators/twitter/templates/Rakefile", "lib/generators/twitter/templates/README.md", "lib/generators/twitter/templates/spec", "lib/generators/twitter/templates/spec/fixtures.rb.erb", "lib/generators/twitter/templates/spec/helpers.rb.erb", "lib/generators/twitter/templates/spec/spec_helper.rb.erb", "lib/generators/twitter/templates/spec/templates_spec.rb.erb", "lib/generators/twitter/templates/TODO", "lib/generators/twitter/twitter_generator.rb", "lib/generators/twitter/USAGE", "lib/singen.rb", "spec/singem_spec.rb", "spec/spec_helper.rb", "bin/singem"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/atmos/singem}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A gem that provides generators for sinatra apps, ready to go with rack-test/webrat/randexp and others}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_runtime_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_runtime_dependency(%q<rack-test>, ["~> 0.3.0"])
      s.add_runtime_dependency(%q<webrat>, ["~> 0.4.4"])
      s.add_runtime_dependency(%q<fakeweb>, ["~> 1.2.4"])
      s.add_runtime_dependency(%q<haml>, ["~> 2.0.9"])
    else
      s.add_dependency(%q<sinatra>, [">= 0.9.2"])
      s.add_dependency(%q<rubigen>, [">= 1.5.2"])
      s.add_dependency(%q<rack-test>, ["~> 0.3.0"])
      s.add_dependency(%q<webrat>, ["~> 0.4.4"])
      s.add_dependency(%q<fakeweb>, ["~> 1.2.4"])
      s.add_dependency(%q<haml>, ["~> 2.0.9"])
    end
  else
    s.add_dependency(%q<sinatra>, [">= 0.9.2"])
    s.add_dependency(%q<rubigen>, [">= 1.5.2"])
    s.add_dependency(%q<rack-test>, ["~> 0.3.0"])
    s.add_dependency(%q<webrat>, ["~> 0.4.4"])
    s.add_dependency(%q<fakeweb>, ["~> 1.2.4"])
    s.add_dependency(%q<haml>, ["~> 2.0.9"])
  end
end
