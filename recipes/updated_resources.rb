# force resource actions in compile phase so exception handler 
# fires for compile phase exceptions

chef_handler "SimpleReport::UpdatedResources" do
  Chef::Log.info "Loading handler from: #{node['chef_handler']['handler_path']}/updated_resources.rb"
  source "#{node['chef_handler']['handler_path']}/updated_resources.rb"
  action :nothing
end.run_action(:enable)
