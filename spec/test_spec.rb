require 'spec_helper'
require 'testme'

## This works
#describe "TestMe" do
#  it "should work on linux" do
#      OS.stub(linux?: true, mac?: false, doze?: false, bits: 64)
#
#      test_this = TestMe.new()
#      test_this.get_os.should eq 'linux64'
#  end
#
#  it "should work on windows" do
#      OS.stub(linux?: false, mac?: false, doze?: true, bits: 64)
#
#      test_this = TestMe.new()
#      test_this.get_os.should eq 'win'
#  end
#
#  it "should work on mac" do
#      OS.stub(linux?: false, mac?: true, doze?: false, bits: 64)
#
#      test_this = TestMe.new()
#      test_this.get_os.should eq 'mac'
#  end
#end
#

# And this works too
describe "#get_os" do

  subject { TestMe.new.get_os }

  context "on a linux machine" do

    before do
      OS.stub(linux?: true, mac?: false, doze?: false, bits: 64)
    end

    it { should eq 'linux64' }
  end

  context "on a mac" do

    before do
      OS.stub(linux?: false, mac?: true, doze?: false, bits: 64)
    end

    it { should eq 'mac' }
  end

  # etc etc
end
