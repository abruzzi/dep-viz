require 'roo'

# xlsx = Roo::Spreadsheet.open('./U2000-1121.xlsx', extension: :xlsx)
# p xlsx.info
# p xlsx.sheets

xlsx = Roo::Excelx.new('./U2000-1121.xlsx')
xlsx.each_row_streaming(offset: 1) do |row|
    p row
end
