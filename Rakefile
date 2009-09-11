# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'covered-call'

task :default => 'spec:run'

PROJ.name = 'covered-call'
PROJ.authors = 'Wes Devauld'
PROJ.email = 'wes@devauld.ca'
PROJ.url = 'http://github.com/wdevauld/covered-call/tree/master'
PROJ.version = CoveredCall::VERSION
PROJ.rubyforge.name = 'covered-call'

PROJ.spec.opts << '--color'

# EOF
