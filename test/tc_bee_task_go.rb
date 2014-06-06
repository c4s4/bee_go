#!/usr/bin/env ruby

require 'bee_build'
require 'test/unit'
$:.unshift(File.join(File.expand_path(File.dirname(__FILE__))))
require 'test_build'
require 'test_build_listener'
$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'bee_task_go'

# Test case for bee task.
class TestBeeTaskGo < Test::Unit::TestCase

  # Create a context object and load tasks in it.
  def setup
    super
    @context = Bee::Context.new(nil)
    @listener = TestBuildListener.new
    @build = TestBuild.new(@context, @listener)
    @package = Bee::Task::Go.new(@build)
  end

  def test_hello
    @package.hello('TEST')
    assert_equal("Hello TEST!\n", @listener.output)
  end

end
