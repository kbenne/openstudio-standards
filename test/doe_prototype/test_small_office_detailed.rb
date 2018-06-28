require_relative '../helpers/minitest_helper'
require_relative '../helpers/create_doe_prototype_helper'



class TestSmallOfficeDetailed < CreateDOEPrototypeBuildingTest
  
  building_types = ['SmallOfficeDetailed']
  templates = ['90.1-2004','90.1-2007','90.1-2010','90.1-2013']
  climate_zones = ['ASHRAE 169-2006-2A','ASHRAE 169-2006-3B','ASHRAE 169-2006-4A','ASHRAE 169-2006-5A','ASHRAE 169-2006-6A']
  
  # not used for ASHRAE/DOE archetypes, but required for call
  epw_files = ['USA_FL_Miami.Intl.AP.722020_TMY3.epw']
  
  create_models = true
  run_models = true
  compare_results = true
  
  debug = false
  
  TestSmallOfficeDetailed.create_run_model_tests(building_types, templates, climate_zones, epw_files, create_models, run_models, compare_results, debug)
  
end
