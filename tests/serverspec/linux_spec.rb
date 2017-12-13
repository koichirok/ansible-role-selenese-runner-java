require File.expand_path('spec_helper', File.dirname(__FILE__))

describe file('/usr/share/java/selenese-runner.jar') do
  it { should be_file }
  it { should be_mode 444 }
end

describe file('/usr/bin/selenese-runner') do
  it { should be_file }
  it { should be_mode 555 }
end

describe command('selenese-runner --help') do
  its(:stdout) { should match /^Selenese Runner \d+\.\d+\.\d+/ }
end
