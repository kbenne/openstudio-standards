# This class holds methods that apply ASHRAE 90.1-2004
# to a given model.
# @ref [References::ASHRAE9012004]
class ASHRAE9012004 < ASHRAE901
  register_standard '90.1-2004'
  attr_reader :template

  def initialize
    @template = '90.1-2004'
    load_standards_database
  end

  def load_standards_database(data_directories = [])
    super([__dir__] + data_directories)
  end
end
