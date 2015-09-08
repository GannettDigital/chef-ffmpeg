Chef::Log.warn('***************** Creating a fake Data Bag with real keys Account')

aws_key = node['AWS_KEY'] # set in .kitchen.yml
aws_key_var = '<@AWS_KEY@>'

aws_secret_key = node['AWS_SECRET_KEY'] # set in .kitchen.yml
aws_secret_key_var = '<@AWS_SECRET_KEY@>'

BAG_PATH = Chef::Config[:data_bag_path]
TARGET_BAG = 'artifactory/s3-credentials.json'
BAG_FILE = BAG_PATH + '/' + TARGET_BAG
BACKUP_FILE = BAG_FILE + '.old'

edit_file = Chef::Util::FileEdit.new(BAG_FILE)

edit_file.search_file_replace(aws_key_var, aws_key)
edit_file.search_file_replace(aws_secret_key_var, aws_secret_key)
edit_file.write_file

File.delete(BACKUP_FILE) if File.exist?(BACKUP_FILE) # FileEdit creates, but does not remove, a backup file.
