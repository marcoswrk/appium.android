Before do
  $driver.start_driver
  Utils.new.close_old_android_alert
end

After do
    $driver.driver_quit
end