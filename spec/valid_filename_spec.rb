# -*- encoding: UTF-8 -*-
require File.expand_path(File.join('./', 'spec_helper'), File.dirname(__FILE__))

describe ValidFilename do
  it "#replace" do
    ValidFilename.replace("\:/*?<>|").should == "_______"
  end
end

describe String do
  it "#valid_filename" do
    "\:/*?<>|".valid_filename.should == "_______"
  end
end

