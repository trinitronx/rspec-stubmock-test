require 'spec_helper'
require 'testme'

describe "TestMe" do
  it "should work on linux" do
      OS.class_eval do
        def linux?
          return true
        end
        def bits
          return 32
        end
      end
      
      test_this = TestMe.new()
      test_this.get_os.should eq 'linux32'
  end

  it "should work on windows" do
      OS.class_eval do
          def linux?
              return false
          end
          def mac?
              return false
          end
          def doze?
              return true
          end
      end

      test_this = TestMe.new()
      test_this.get_os.should eq 'win'
  end

  it "should work on mac" do
      OS.class_eval do
          def linux?
              return false
          end
          def mac?
              return true
          end
      end

      test_this = TestMe.new()
      test_this.get_os.should eq 'mac'
  end
end
