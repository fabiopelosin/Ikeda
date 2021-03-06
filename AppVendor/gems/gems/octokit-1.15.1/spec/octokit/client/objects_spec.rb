# -*- encoding: utf-8 -*-
require 'helper'

describe Octokit::Client::Objects do

  before do
    @client = Octokit::Client.new(:login => 'sferik')
  end

  describe ".tree" do

    it "should return a tree" do
      stub_get("https://api.github.com/repos/sferik/rails_admin/git/trees/3cdfabd973bc3caac209cba903cfdb3bf6636bcd").
        to_return(:body => fixture("v3/tree.json"))
      result = @client.tree("sferik/rails_admin", "3cdfabd973bc3caac209cba903cfdb3bf6636bcd")
      result.sha.should == "3cdfabd973bc3caac209cba903cfdb3bf6636bcd"
      result.tree.first.path.should == ".gitignore"
    end

  end

  describe ".create_tree" do

    it "should create a tree" do
      stub_post("/repos/octocat/Hello-World/git/trees").
        with(:body => { :tree => [ { :path => "file.rb", "mode" => "100644", "type" => "blob", "sha" => "44b4fc6d56897b048c772eb4087f854f46256132" } ] },
             :headers => { "Content-Type" => "application/json" }).
        to_return(:body => fixture("v3/tree_create.json"))
      response = @client.create_tree("octocat/Hello-World", [ { "path" => "file.rb", "mode" => "100644", "type" => "blob", "sha" => "44b4fc6d56897b048c772eb4087f854f46256132" } ])
      response.sha.should == "cd8274d15fa3ae2ab983129fb037999f264ba9a7"
      response.tree.size.should == 1
      response.tree.first.sha.should == "7c258a9869f33c1e1e1f74fbb32f07c86cb5a75b"
    end

  end

  describe ".blob" do

    it "should return a blob" do
      stub_get("https://api.github.com/repos/sferik/rails_admin/git/blobs/94616fa57520ac8147522c7cf9f03d555595c5ea").
        to_return(:body => fixture("v3/blob.json"))
      blob = @client.blob("sferik/rails_admin", "94616fa57520ac8147522c7cf9f03d555595c5ea")
      blob.sha.should == "94616fa57520ac8147522c7cf9f03d555595c5ea"
    end

  end

  describe ".create_blob" do

    it "should create a blob" do
      stub_post("/repos/octocat/Hello-World/git/blobs").
        with(:body => { :content => "content", :encoding => "utf-8" },
             :headers => { "Content-Type" => "application/json" }).
        to_return(:body => fixture("v3/blob_create.json"))
      blob = @client.create_blob("octocat/Hello-World", "content")
      blob.should == "3a0f86fb8db8eea7ccbb9a95f325ddbedfb25e15"
    end

  end

end
