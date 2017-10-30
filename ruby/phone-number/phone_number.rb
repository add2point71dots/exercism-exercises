class PhoneNumber
  def self.clean(phone_number)
    stripped_phone = phone_number.tr("^0-9", "")
    stripped_phone = stripped_phone[1..-1] if stripped_phone[0] == "1"
    if stripped_phone.length != 10 || stripped_phone[3] =~ /0|1/ || stripped_phone[0] =~ /0|1/
      return nil
    end
    stripped_phone
  end
end
