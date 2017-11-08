require 'spreadsheet'
class ExcelData
  def getCellValue(row,col,option)
    case option
      when "String"
      book = Spreadsheet.open("Myxl.xls")
      sheet = book.worksheet 0
      puts sheet.name
      rowNo = sheet.row(row)
      data = rowNo[col]
      return data.to_s
    when "Integer"
      book = Spreadsheet.open("Myxl.xls")
      sheet = book.worksheet 0
      puts sheet.name
      rowNo = sheet.row(row)
      data = rowNo[col]
      return data.to_i
    when "Float"
        book = Spreadsheet.open("Myxl.xls")
        sheet = book.worksheet 0
        puts sheet.name
        rowNo = sheet.row(row)
        data = rowNo[col]
        return data.to_f
    end
  end


  def setCellValue(row,col)
    book = Spreadsheet.open("Myxl.xls")
    sheet = book.worksheet 0
    rows = sheet.row(row)
    rows[col]="second"
    book.write("Myxl.xls")
  end
end


ob = ExcelData.new
ob.getCellValue(0,0,"String")
#ob.setCellValue(1,1)