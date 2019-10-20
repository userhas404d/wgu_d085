# InSpec test for recipe test::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  describe file('/tmp/git/bash_scripts/scripts') do
    it { should be_directory }
  end
end
