require 'yaml'
require 'ostruct'
require 'erb'
require 'multi_json'
require 'flex/logger'
require 'flex/errors'
require 'flex/utils'
require 'flex/structure/indifferent_access'
require 'flex/structure/mergeable'
require 'flex/result'
require 'flex/result/collection'
require 'flex/result/document'
require 'flex/result/source_document'
require 'flex/result/search'
require 'flex/result/source_search'
require 'flex/result/bulk'
require 'flex/variables'
require 'flex/template/base'
require 'flex/template/partial'
require 'flex/template'
require 'flex/template/search'
require 'flex/template/slim_search'
require 'flex/template/tags'
require 'flex/template/info'
require 'flex/class_proxy'
require 'flex/loader'
require 'flex/model/manager'
require 'flex/related_model'
require 'flex/related_model/class_sync'
require 'flex/related_model/class_proxy'
require 'flex/related_model/instance_proxy'
require 'flex/model'
require 'flex/model/class_proxy'
require 'flex/model/instance_proxy'
require 'flex/http_clients/patron'
require 'flex/http_clients/rest_client'
require 'flex/configuration'
require 'flex/utility_methods'

module Flex

  VERSION = File.read(File.expand_path('../../VERSION', __FILE__)).strip

  # The following lines are autogenerated by Flex.info

  #  ########## Flex.indices_exists ##########
  #
  #  Flex::Template:
  #  ---
  #  indices_exists:
  #  - HEAD
  #  - /<<index>>
  #
  #  Usage:
  #  Flex.indices_exists :index => "flex_test_index"
  #
  def Flex.indices_exists(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.exist? ##########
  #
  #  Flex::Template:
  #  ---
  #  exist?:
  #  - HEAD
  #  - /<<index>>
  #
  #  Usage:
  #  Flex.exist? :index => "flex_test_index"
  #
  def Flex.exist?(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.create_index ##########
  #
  #  Flex::Template:
  #  ---
  #  create_index:
  #  - PUT
  #  - /<<index>>
  #  - settings:
  #      number_of_shards: <<number_of_shards= 5 >>
  #      number_of_replicas: <<number_of_replicas= 1 >>
  #
  #  Usage:
  #  Flex.create_index :index              => "flex_test_index",
  #                    :number_of_shards   => 5,
  #                    :number_of_replicas => 1
  #
  def Flex.create_index(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.put_index ##########
  #
  #  Flex::Template:
  #  ---
  #  put_index:
  #  - PUT
  #  - /<<index>>
  #  - settings:
  #      number_of_shards: <<number_of_shards= 5 >>
  #      number_of_replicas: <<number_of_replicas= 1 >>
  #
  #  Usage:
  #  Flex.put_index :index              => "flex_test_index",
  #                 :number_of_shards   => 5,
  #                 :number_of_replicas => 1
  #
  def Flex.put_index(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.post_index ##########
  #
  #  Flex::Template:
  #  ---
  #  post_index:
  #  - POST
  #  - /<<index>>
  #  - settings:
  #      number_of_shards: <<number_of_shards= 5 >>
  #      number_of_replicas: <<number_of_replicas= 1 >>
  #
  #  Usage:
  #  Flex.post_index :index              => "flex_test_index",
  #                  :number_of_shards   => 5,
  #                  :number_of_replicas => 1
  #
  def Flex.post_index(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.get_settings ##########
  #
  #  Flex::Template:
  #  ---
  #  get_settings:
  #  - GET
  #  - /<<index>>/_settings
  #
  #  Usage:
  #  Flex.get_settings :index => "flex_test_index"
  #
  def Flex.get_settings(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.put_mapping ##########
  #
  #  Flex::Template:
  #  ---
  #  put_mapping:
  #  - PUT
  #  - /<<index>>/<<type>>/_mapping
  #  - <<type>>:
  #      properties: <<properties>>
  #
  #  Usage:
  #  Flex.put_mapping :properties => properties,        # required
  #                   :type       => nil,
  #                   :index      => "flex_test_index"
  #
  def Flex.put_mapping(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.get_mapping ##########
  #
  #  Flex::Template:
  #  ---
  #  get_mapping:
  #  - GET
  #  - /<<index>>/<<type>>/_mapping
  #
  #  Usage:
  #  Flex.get_mapping :index => "flex_test_index",
  #                   :type  => nil
  #
  def Flex.get_mapping(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.delete_mapping ##########
  #
  #  Flex::Template:
  #  ---
  #  delete_mapping:
  #  - DELETE
  #  - /<<index>>/<<type>>
  #
  #  Usage:
  #  Flex.delete_mapping :index => "flex_test_index",
  #                      :type  => nil
  #
  def Flex.delete_mapping(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.delete_index ##########
  #
  #  Flex::Template:
  #  ---
  #  delete_index:
  #  - DELETE
  #  - /<<index>>
  #
  #  Usage:
  #  Flex.delete_index :index => "flex_test_index"
  #
  def Flex.delete_index(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.delete_by_query ##########
  #
  #  Flex::Template:
  #  ---
  #  delete_by_query:
  #  - DELETE
  #  - /<<index>>/<<type>>/_query
  #
  #  Usage:
  #  Flex.delete_by_query :index => "flex_test_index",
  #                       :type  => nil
  #
  def Flex.delete_by_query(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.bulk ##########
  #
  #  Flex::Template:
  #  ---
  #  bulk:
  #  - POST
  #  - /_bulk
  #  - << lines >>
  #
  #  Usage:
  #  Flex.bulk :lines => lines  # required
  #
  def Flex.bulk(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.count ##########
  #
  #  Flex::Template:
  #  ---
  #  count:
  #  - GET
  #  - /<<index>>/<<type>>/_count
  #
  #  Usage:
  #  Flex.count :index => "flex_test_index",
  #             :type  => nil
  #
  def Flex.count(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.stats ##########
  #
  #  Flex::Template:
  #  ---
  #  stats:
  #  - GET
  #  - /<<index>>/_stats/<<end_point= ~ >>
  #
  #  Usage:
  #  Flex.stats :index     => "flex_test_index",
  #             :end_point => nil
  #
  def Flex.stats(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.store ##########
  #
  #  Flex::Template:
  #  ---
  #  store:
  #  - PUT
  #  - /<<index>>/<<type>>/<<id>>
  #
  #  Usage:
  #  Flex.store :id    => id,                # required
  #             :type  => nil,
  #             :index => "flex_test_index"
  #
  def Flex.store(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.put_store ##########
  #
  #  Flex::Template:
  #  ---
  #  put_store:
  #  - PUT
  #  - /<<index>>/<<type>>/<<id>>
  #
  #  Usage:
  #  Flex.put_store :id    => id,                # required
  #                 :type  => nil,
  #                 :index => "flex_test_index"
  #
  def Flex.put_store(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.post_store ##########
  #
  #  Flex::Template:
  #  ---
  #  post_store:
  #  - POST
  #  - /<<index>>/<<type>>
  #
  #  Usage:
  #  Flex.post_store :index => "flex_test_index",
  #                  :type  => nil
  #
  def Flex.post_store(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.remove ##########
  #
  #  Flex::Template:
  #  ---
  #  remove:
  #  - DELETE
  #  - /<<index>>/<<type>>/<<id>>
  #
  #  Usage:
  #  Flex.remove :id    => id,                # required
  #              :type  => nil,
  #              :index => "flex_test_index"
  #
  def Flex.remove(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.get ##########
  #
  #  Flex::Template:
  #  ---
  #  get:
  #  - GET
  #  - /<<index>>/<<type>>/<<id>>
  #
  #  Usage:
  #  Flex.get :id    => id,                # required
  #           :type  => nil,
  #           :index => "flex_test_index"
  #
  def Flex.get(vars={})
    # this is a stub, used for reference
  end


  #  ########## Flex.multi_get ##########
  #
  #  Flex::Template:
  #  ---
  #  multi_get:
  #  - GET
  #  - /<<index>>/<<type>>/_mget
  #  - ids: << ids >>
  #
  #  Usage:
  #  Flex.multi_get :ids   => ids,               # required
  #                 :type  => nil,
  #                 :index => "flex_test_index"
  #
  def Flex.multi_get(vars={})
    # this is a stub, used for reference
  end

  include Loader
  flex.load_source File.expand_path('../flex/api_methods.yml', __FILE__)

  extend self
  extend UtilityMethods

  def reload!
    flex.variables = Configuration.variables.deep_dup
    Loader.host_classes.each {|c| c.flex.reload!}
    true
  end

  def info(*args)
    flex.info *args
  end

end