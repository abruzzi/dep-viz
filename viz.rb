require 'roo'
require 'graphviz'

graph = GraphViz.new(:G, :type => :digraph)

xlsx = Roo::Excelx.new('./U2000-1121.xlsx')
xlsx.each_row_streaming(offset: 1) do |row|
    graph.add_nodes(row[0].value)

    if(row[4]) 
        graph.add_edges(row[4].value, row[0].value)
    end
end

graph.output(:png => 'U2000-1121.png')
