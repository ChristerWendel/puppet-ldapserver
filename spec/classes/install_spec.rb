require 'spec_helper'

describe 'ldapserver', :type => :class do
  let(:title) { 'ldapserver::install' }

  context 'with default parameters' do
    it { should contain_package('slapd')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('slapd')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('slapd')
        .with_ensure('latest')
    }
  end
end
