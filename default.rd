#
# Cookbook:: apache
# Recipe:: default
#

package 'apache2'

file '/var/www/html/index.html' do
  content "<h2>This is: #{node['name']}</h2><h1>HELLO WORLD FOR SA :D</h1>"
end

service 'apache2' do
  action [ :enable, :start ]
end
