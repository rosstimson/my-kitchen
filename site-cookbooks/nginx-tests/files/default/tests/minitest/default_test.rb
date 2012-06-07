require 'minitest/spec'

describe_recipe 'nginx' do
  include MiniTest::Chef::Assertions
  include MiniTest::Chef::Context
  include MiniTest::Chef::Resources

  describe 'config files' do
    it 'creates the main nginx config file' do
      file('/etc/nginx/nginx.conf').must_exist
    end
  end
end
