#
# Cookbook:: apache
# Recipe:: default
#
application "hello-world" do
  path "/var/www/nodejs/hello-world"
  owner "www-data"
  group "www-data"
  packages ["git"]
  repository "https://github.com/BrandonPedroza/SA_Practica6.git"
  nodejs do
    entry_point "index.js"
  end
end
