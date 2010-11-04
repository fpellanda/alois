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

class CreateChartsTable < ActiveRecord::Migration
  def self.up

    create_table "charts" do |t|
      t.column "name", :string
      t.column "description", :string

      t.column "column1", :string
      t.column "column2", :string
      t.column "aggregation_column", :string
      t.column "aggregation_function", :string
      t.column "chart_type", :string
      t.column "order_by", :string
    end

  end

  def self.down
    drop_table "charts"
  end

end
