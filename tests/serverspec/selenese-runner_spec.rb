require_relative 'spec_helper'

describe command('selenese-runner --help') do
  its(:stdout) { should match /^Selenese Runner \d+\.\d+\.\d+/ }
end
