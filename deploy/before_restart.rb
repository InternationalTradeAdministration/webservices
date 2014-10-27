shared_files =
  begin
    node[:apps][:webservices][:shared_files] || []
  rescue
    []
  end

shared_files.each do |f|
  shared_file = "#{new_resource.deploy_to}/shared/#{f}"
  run "ln -fs #{shared_file} #{release_path}/#{f}" if ::File.exist?(shared_file)
end
