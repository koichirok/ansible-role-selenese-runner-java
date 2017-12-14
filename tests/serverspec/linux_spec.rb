require_relative 'spec_helper'

describe file('/usr/share/java/selenese-runner.jar') do
  it { should be_file }
  it { should be_mode 444 }
end

describe file('/usr/bin/selenese-runner') do
  it { should be_file }
  it { should be_mode 555 }
end
