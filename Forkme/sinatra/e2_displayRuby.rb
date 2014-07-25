class String
  @@rsp = ""
  def display
    (0..2).each do |n1|
      self.to_s.scan(/./).each do |n2|
        mstdispl(n1, n2)
      end
      @@rsp += "<br>"
    end
    @@rsp
  end

  def mstdispl(val1,val2)
    case val1
    when 0

      case val2
      when "1"
        @@rsp += "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@rsp += "¯¯¯|"
      when "3"
        @@rsp += "¯¯¯|"
      when "4"
        @@rsp += "|&nbsp;&nbsp;&nbsp;|"
      when "5"
        @@rsp += "|¯¯¯"
      when "6"
        @@rsp += "|¯¯¯"
      when "7"
        @@rsp += "¯¯¯|"
      when "8"
        @@rsp += "|¯¯|"
      when "9"
        @@rsp += "|¯¯|"
      when "0"
        @@rsp += "|¯¯|"
      end

    when 1

      case val2
      when "1" || "7"
        @@rsp+= "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@rsp += "|¯¯¯"
      when "3"
        @@rsp += "¯¯¯|"
      when "4"
        @@rsp += "¯¯¯|"
      when "5"
        @@rsp += "¯¯¯|"
      when "6"
        @@rsp += "|¯¯|"
      when "7"
        @@rsp += "&nbsp;&nbsp;&nbsp;|"
      when "8"
        @@rsp += "|¯¯|"
      when "9"
        @@rsp += "¯¯¯|"
      when "0"
        @@rsp += "|&nbsp;&nbsp;|"
      end

    when 2

      case val2
      when "1"
        @@rsp += "&nbsp;&nbsp;&nbsp;|"
      when "2"
        @@rsp += "¯¯¯¯"
      when "3"
        @@rsp += "¯¯¯¯"
      when "4"
        @@rsp += "&nbsp;&nbsp;&nbsp;|"
      when "5"
        @@rsp += "¯¯¯¯"
      when "6"
        @@rsp += "¯¯¯¯"
      when "7"
        @@rsp += "&nbsp;&nbsp;&nbsp;|"
      when "8"
        @@rsp += "¯¯¯¯"
      when "9"
        @@rsp+= "&nbsp;&nbsp;&nbsp;|"
      when "0"
        @@rsp += "¯¯¯¯"
      end

    end
    @@rsp += "&nbsp;&nbsp;&nbsp;&nbsp;"
  end
end