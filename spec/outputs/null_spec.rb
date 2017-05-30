# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/null"
require "logstash/event"

describe LogStash::Outputs::Null do
  context "#register" do
    it "should not raise an error" do
      expect {subject.register }.not_to raise_error
    end
  end

  context "#receive" do
    let(:event) { LogStash::Event.new({ "message" => "foobar" }) }

    it "should not raise an error" do
      expect {subject.receive(event)  }.not_to raise_error
    end
  end
end

