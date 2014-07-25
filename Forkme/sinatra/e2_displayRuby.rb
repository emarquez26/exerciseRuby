class String
  @@rsp = ""
  def display
    (0..2).each do |n1|
      self.to_s.scan(/./).each do |n2|
        case n1
          when 0
            case n2
              when "1"
                @@rsp += "  "
              when "2"
                @@rsp += " __ "
              when "3"
                @@rsp += " &nbsp; &nbsp; &nbsp;__  "
              when "4"
                @@rsp += "     "
              when "5"
                @@rsp += " __  "
              when "6"
                @@rsp += " __  "
              when "7"
                @@rsp += "  __  "
              when "8"
                @@rsp += " __ "
              when "9"
                @@rsp += "  __  "
              when "0"
                @@rsp += " --  "
            end

          when 1
            case n2
              when "1"
                @@rsp+= "| "
              when "2"
                @@rsp += " __|"
              when "3"
                @@rsp += " __| "
              when "4"
                @@rsp += "|__| "
              when "5"
                @@rsp += "|__  "
              when "6"
                @@rsp += "|__  "
              when "7"
                @@rsp += "    | "
              when "8"
                @@rsp += "|__| &nbsp; "
              when "9"
                @@rsp += " |__| "
              when "0"
                @@rsp += "| | "
            end

        when 2

            case n2
              when "1"
                @@rsp += "| "
              when "2"
                @@rsp += "|__ "
              when "3"
                @@rsp += " &nbsp;__| "
              when "4"
                @@rsp += "   &nbsp;| "
              when "5"
                @@rsp += " __| "
              when "6"
                @@rsp += "|__| "
              when "7"
                @@rsp += "    | "
              when "8"
                @@rsp += "|__| &nbsp; "
              when "9"
                @@rsp+= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| "
              when "0"
                @@rsp += " --  "
            end
        end
          @@rsp += "&nbsp;&nbsp;&nbsp;&nbsp;"
      end
        @@rsp += "<br>"
    end
      @@rsp
  end
end