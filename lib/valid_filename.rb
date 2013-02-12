require "valid_filename/version"

module ValidFilename
  INVALID_CHARS = '\\\/:*?"<>|'
  REPLACE_STRING = "_"

  def self.replace(str, c = REPLACE_STRING)
    str.gsub Regexp.new("[" + INVALID_CHARS + "]"), c
  end
end

class String
  def valid_filename(rep = ValidFilename::REPLACE_STRING)
    ValidFilename.replace(self, rep)
  end
end

