require_relative 'spec_helper'

describe file('/usr/local/share/java/classes/selenese-runner.jar') do
  it { should be_file }
  it { should be_mode 444 }
end

describe file('/usr/local/bin/selenese-runner') do
  it { should be_file }
  it { should be_mode 555 }
  its(:content) {
    ver = Gem::Version.new(@selenese_runner_version)
    if ver >= Gem::Version.new('3.0.0')
      min_java_ver = '1.8'
    elsif ver >= Gem::Version.new('2.0.0')
      min_java_ver = '1.7'
    else
      min_java_ver = '1.6'
    end
    should match /^JAVA_VERSION="#{min_java_ver}\+"/
  }
end
