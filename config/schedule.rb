# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

env :MAILTO, 'anurag@vinsol.com'

env :PATH, ENV['PATH']

every :monday, :at => '1am' do
  rake "apn:feedback:process"
end

every :monday, :at => '1:10 am' do
  rake "remove_abandoned_machines"
end

every :tuesday, :at => '3pm' do
  rake "custom_reminder"
end