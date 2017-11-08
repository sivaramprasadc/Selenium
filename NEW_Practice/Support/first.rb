require 'spreadsheet'


class First
  def f
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet::Workbook.new("Test.xlsx")
    sheet = book.create_worksheet
    sheet.name = "Siva"
    sheet2 = book.create_worksheet :name=>"ram"
    book.write("Test.xlsx")
  end

  def m2
    book = Spreadsheet.open("latest.xls")
    sheet = book.worksheet 0
    row = sheet.row(0)
    puts row[0]
    sheet.row(3).insert 1, 'Unknown'
    sheet[0,2] = "Japan"
    book.write("Test.xls")
  end
end

ff = First.new
#ff.f
ff.m2