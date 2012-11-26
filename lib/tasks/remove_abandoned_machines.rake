desc "Deletes machines form db whose associated apn_devices are removed by apn_on_rails feedback rake task"
task :remove_abandoned_machines => :environment do
  abandoned_machines = Machine.find_by_sql("SELECT * from machines WHERE NOT EXISTS (SELECT * FROM apn_devices WHERE apn_devices.id = machines.phone_id)")
  abandoned_machines.each(&:destroy) unless abandoned_machines.blank?
end
