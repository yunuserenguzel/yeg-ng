Gem::Specification.new do |s|
  s.name               = "yeg-ng"
  s.version            = "0.0.4"
  s.default_executable = "yeg-ng"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Yunus Eren Güzel"]
  s.licenses    = ['MIT']
  s.date = %q{2010-12-17}
  s.description = %q{Angular-js template}
  s.email = %q{yunuserenguzel@gmail.com}
  s.files = [ "lib/yeg-ng.rb", "bin/yeg-ng"] +
    Dir.glob("templates/**/*")
  s.executables << 'yeg-ng'
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{yeg-ng!}
  s.homepage    = 'https://github.com/yunuserenguzel/yeg-ng'

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
