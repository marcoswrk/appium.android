class Utils
def wait_for_element(element, timeout)
  wait = Selenium::WebDriver::Wait.new(
    timeout: timeout,
    ignore: [
      Selenium::WebDriver::Error::NoSuchElementError,
      Selenium::WebDriver::Error::StaleElementReferenceError
    ]
  )

  wait.until do
    field = $driver.find_element(:id, element)
    field if field.displayed?
  end
end

def click_in_element(element, timeout)
  field = wait_for_element(element, timeout)
  field.click
end

def close_old_android_alert
  wait = Selenium::WebDriver::Wait.new(timeout: 5)

  alert_button = wait.until do
    button = $driver.find_element(:id, 'android:id/button1')
    button if button.displayed?
  end

  alert_button.click
rescue Selenium::WebDriver::Error::TimeoutError,
       Selenium::WebDriver::Error::NoSuchElementError
  # Nenhum alerta foi exibido
end

def type_text(element, value, timeout)
  field = wait_for_element(element, timeout)
  field.click
  field.clear
  field.send_keys(value)
end

def get_text(element, timeout)
    wait_for_element(element, timeout)
    $driver.find_element(:id, element).text
end

def accept_allert 
  @driver.switch_to.alert.accept()
end

    def element_is_present?(element)
        if (find_elements(:id, element).size > 0)
          return true
        else 
          return false
        end
    end
end