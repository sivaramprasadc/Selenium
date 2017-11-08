require 'WriteExcel'
require 'spreadsheet'
class Writexl
  def m
    # Create a new Excel workbook
    workbook = WriteExcel.new('ruby.xls')

# Add a worksheet
    worksheet = workbook.add_worksheet "Sheet1"

# Write a formatted and unformatted string, row and column notation.
    col = row = 0
    worksheet.write(row, col, 'Hi Excel!')
    worksheet.write(1,   col, 'Hi Excel!')

# Write a number and a formula using A1 notation
    worksheet.write('A3', 1.2345)
    worksheet.write('A4', '=SIN(PI()/4)')

# Save to ruby.xls
    workbook.close
  end
end

ob=Writexl.new
ob.m
