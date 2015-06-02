module runtests

tests = ["utils_test.jl",
         "d3lib_test.jl",
         "d3vizemb_test.jl",
         "d3viz_test.jl",
         ## "jfinm_charts_test.jl",
         ## "JFinM_Charts_usage.jl",
         "localhost_test.jl",
         "mlineChart_test.jl",
         "vineTreeChart_test.jl"
         ]

println("Running JFinM_Charts tests:")

for t in tests
    println("")
    println("----------------------")
    println(" * $(t)")
    println("----------------------")
    println("")
    include(string(Pkg.dir("JFinM_Charts"), "/test/", t))
end

end
