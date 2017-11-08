equire 'axlsx'
class ExportsController < ApplicationController
 def index
 format.xlsx do
 Axlsx::Package.new do |my_axlsx_package|
 my_axlsx_package.workbook do |wb|
 wb.add_worksheet(name:"foo") do |sheet|
 # filling cells, see below
 # finding cells, see below
 end
 end
 send_data my_axlsx_package.to_stream.read, :filename => "export.xlsx"
 end
 end
 end
end