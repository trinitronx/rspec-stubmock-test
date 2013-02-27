require 'spec_helper'
require 'testme'

describe "TestMe" do
  it "should work on linux" do
      OS.stub(linux?: true, mac?: false, doze?: false, bits: 64)

      test_this = TestMe.new()
      test_this.get_os.should eq 'linux64'
  end

  it "should work on windows" do
      OS.stub(linux?: false, mac?: false, doze?: true, bits: 64)

      test_this = TestMe.new()
      test_this.get_os.should eq 'win'
  end

  it "should work on mac" do
      OS.stub(linux?: false, mac?: true, doze?: false, bits: 64)

      test_this = TestMe.new()
      test_this.get_os.should eq 'mac'
  end
end
