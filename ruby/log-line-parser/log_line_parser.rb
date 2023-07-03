class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":").last.strip
  end

  def log_level
    @line.split("]").first.split("[").last.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

# puts LogLineParser.new('[ERROR]: Invalid operation').message
# puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# puts LogLineParser.new('[INFO]: Invalid operation').message
# puts LogLineParser.new('[ERROR]: Invalid operation').log_level
# puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").log_level
# puts LogLineParser.new('[INFO]: Invalid operation').log_level
# puts LogLineParser.new('[ERROR]: Invalid operation').reformat
# puts LogLineParser.new("[WARNING]:  Disk almost full\r\n").reformat
# puts LogLineParser.new('[INFO]: Invalid operation').reformat