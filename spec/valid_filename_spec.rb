# -*- encoding: UTF-8 -*-
require File.expand_path(File.join('./', 'spec_helper'), File.dirname(__FILE__))

str =  ValidFilename::INVALID_CHARS

describe ValidFilename do
  it "#replace" do
    ValidFilename.replace(str).should == Array.new(str.size).map{ "_" }.join
  end
end

describe String do
  it "#valid_filename" do
    str.valid_filename.should == Array.new(str.size).map{ "_" }.join
  end
end

