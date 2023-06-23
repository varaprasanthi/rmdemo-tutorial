# class TableDataInformation
#
# def visitTableDataPage
#   $browser.goto 'https://omayo.blogspot.com/search?q='
# end
#
# def get_table_data
#   table = $browser.table(id: 'table1')
#   data = []
#
#   table.rows.each do |row|
#     row_data = row.cells.map(&:text)
#     data << row_data
#   end
#
#   data
# end
#
# end