require_relative 'spec_helper'

describe command('selenese-runner --help') do
  its(:stdout) { should match /^Selenese Runner #{Regexp.escape(@selenese_runner_version)}/ }
end
