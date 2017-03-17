#
# Cookbook Name:: cookbook-demo-apache-1
# Recipe:: default
#
# Copyright 2017, mychef.com
#
# All rights reserved - Do Not Redistribute
#


package "httpd" do
action :install
end

cookbook_file '/var/www/html/index.html' do
source 'index.html'
end

template 'httpd.conf' do
       path '/etc/httpd/conf/httpd.conf'
        source 'httpd.conf.erb'
		mode "0755"
end

service "httpd" do

action :start

end 





