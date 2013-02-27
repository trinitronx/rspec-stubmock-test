require 'os'

class TestMe
  def get_os()
    if OS.linux?
        return "linux#{OS.bits}"
    elsif OS.mac?
        return "mac"
    elsif OS.doze?
        return "win"
    end
  end
end
