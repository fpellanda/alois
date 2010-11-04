# Copyright 2010 The Apache Software Foundation.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# /!\ Ossim is not supported currently
class OssimConfig < ActiveRecord::Base
  set_table_name "config"
  set_primary_key "conf"

  def OssimConfig::set_value(conf, value) 
    c = OssimConfig.find_by_conf(conf)
    if c == nil then
      p "SETTING #{conf} NOT FOUND!!!"
    else
      c.value = value
      c.save
    end
  end
  
end
