# Secure things
#
#
#
# firewall - no ports open
describe port.where { protocol =~ /tcp/ && port > 0 && port < 1024} do
	  it { should_not be_listening }
end


# No ftp server
describe port.where { protocol =~ /tcp/ && port == 20 } do
	  it { should_not be_listening }
end
describe port.where { protocol =~ /tcp/ && port == 21 } do
	  it { should_not be_listening }
end
describe processes('ftp') do
	  it { should_not exist }
end



