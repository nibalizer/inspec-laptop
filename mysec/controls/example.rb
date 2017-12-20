
# define these attributes on the top-level of your file and re-use them across all tests!
val_user = attribute('user', default: 'alice', description: 'An identification for the user')
val_password = attribute('password', description: 'A value for the password')

control 'system-users' do
  impact 0.8
  desc '
    This test assures that the user "Bob" has a user installed on the system, along with a
    specified password.
  '

  describe val_user do
    it { should eq 'bob' }
  end

  describe val_password do
    it { should eq 'secret' }
  end
end

describe file('/tmp') do
  it { should be_directory }
end

describe file('/tmp2') do
  it { should be_directory }
end
