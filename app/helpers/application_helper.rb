module ApplicationHelper
    def bootstrap_alert(key)
      case key
      when "alert"
        "danger"
      when "notice"
        "primary"
      when "error"
        "danger"
      when "success"
        "success"
      end
    end
end
