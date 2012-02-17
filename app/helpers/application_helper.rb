module ApplicationHelper

  def alert_message_to_flash(alert_message)
    case  alert_message
    when :notice
      'info'
    when :alert
      'error'
    else
      alert_message
    end
  end
end
