require_relative 'spec_helper'

describe file('/usr/local/share/java/classes/selenese-runner.jar') do
  it { should be_file }
  it { should be_mode 444 }
end

describe file('/usr/local/bin/selenese-runner') do
  it { should be_file }
  it { should be_mode 555 }
end
