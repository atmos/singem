class CucumberGenerator < RubiGen::Base
  DEFAULT_SHEBANG = File.join(Config::CONFIG['bindir'],
                              Config::CONFIG['ruby_install_name'])

  default_options :author => nil
  attr_reader :name

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @destination_root = File.expand_path(args.shift)
    @name = base_name
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory ''
      BASEDIRS.each { |path| m.directory path }
      m.directory "lib/#{name}"
      m.directory "features/support"
      m.directory "features/step_definitions"

      # Create stubs
      m.template "config.ru.erb", "config.ru.example"
      m.template "lib/templates.rb.erb", "lib/#{name}.rb"
      m.template "lib/templates/app.rb.erb", "lib/#{name}/app.rb"

      # cucumber stubs
      m.template "features/support/env.rb.erb", "features/support/env.rb"
      m.template "features/basics.feature.erb", "features/#{name}.feature"
      m.template "features/step_definitions/basics.rb.erb", "features/step_definitions/#{name}.rb"

      # rspec stubs
      m.template "spec/spec_helper.rb.erb", "spec/spec_helper.rb"
      m.template "spec/templates_spec.rb.erb", "spec/#{name}_spec.rb"
      m.template "spec/fixtures.rb.erb", "spec/fixtures.rb"

      %w(LICENSE Rakefile README.md).each do |file| 
        m.template file, file
      end
      %w(TODO).each do |file| 
        m.file file, file
      end
    end
  end

  protected
    def banner
      <<-EOS
Creates a simple RubyGems scaffold.

USAGE: #{spec.name} name --simple"
EOS
    end

    def add_options!(opts)
      opts.separator ''
      opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      # opts.on("-a", "--author=\"Your Name\"", String,
      #         "Some comment about this option",
      #         "Default: none") { |x| options[:author] = x }
      opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
    end

    def extract_options
      # for each option, extract it into a local variable (and create an "attr_reader :author" at the top)
      # Templates can access these value via the attr_reader-generated methods, but not the
      # raw instance variable value.
      # @author = options[:author]
    end

    # Installation skeleton.  Intermediate directories are automatically
    # created so don't sweat their absence here.
    BASEDIRS = %w(
      lib
      spec
    )
end
