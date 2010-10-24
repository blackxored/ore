require 'spec_helper'
require 'helpers/projects'
require 'projects/project_examples'

describe "DataMapper Plugin project" do
  include Helpers::Projects

  before(:all) do
    @project = project('dm-plugin')
  end

  it_should_behave_like 'an Ore Project'

  it "should correctly guess the namespace" do
    @project.namespace.should == 'DataMapper::Plugin'
  end

  it "should have a namespace directory" do
    @project.namespace_dir.should == 'dm-plugin'
  end

  it "should use Bundler" do
    @project.should be_bundler
  end
end