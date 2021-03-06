module JFinM_Charts

## list packages whos namespace is used
VERSION < v"0.4-" && using Docile

importall Base
## importall Stats

abstract AbstractD3Chart
abstract AbstractD3Viz

export #
AbstractD3Chart,
D3Lib,
LocalHost,
## chart types
MLineChart,
VineTreeChart,
## VineGraph,
## additional functions
chart,
d3SymLink,
embed,
render,
viz,
vizLh,
writeData

include("ChartTypes/vineTreeChart.jl")
include("ChartTypes/mlineChart.jl")
include("localhost.jl")
include("D3Lib.jl")
include("D3VizEmb.jl")
include("D3VizExt.jl")
include("utils.jl")
include("d3viz.jl")

## generic chart constructor
##--------------------------

function chart(chrtType::Type; args...)
    chrtObj = chrtType()
    for (key, val) in args
        eval(:($chrtObj.$key = $val))
    end
    return chrtObj
end


end
