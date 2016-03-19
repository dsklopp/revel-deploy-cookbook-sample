#
# Cookbook Name:: revel-deploy-cookbook
# Recipe:: default
#
# Copyright (C) 2016 Daniel Klopp
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt::default"

include_recipe "golang::default"


# get revel framework
execute "get revel" do
	command ". /etc/profile; go get github.com/revel/revel"
end

# get 'revel' command
execute "get revel command" do
	command ". /etc/profile; go get github.com/revel/cmd/revel"
end
# get samples and run chat app
execute "get revel samples" do
	command ". /etc/profile; go get github.com/revel/samples"
end

execute "get chat sample" do
	command ". /etc/profile; revel run github.com/revel/samples/chat"
end
