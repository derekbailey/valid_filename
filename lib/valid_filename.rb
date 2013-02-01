require "valid_filename/version"

module ValidFilename
  INVALID_CHARS = '\\\/:*?"<>|'
  REPACE_STRING = "_"

  def self.replace(str, c = REPACE_STRING)
    str.gsub Regexp.new("[" + INVALID_CHARS + "]"), c
  end
end

class String
  def valid_filename(rep = ValidFilename::REPACE_STRING)
    ValidFilename.replace(self, rep)
  end
end

