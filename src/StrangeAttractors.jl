module StrangeAttractors

greet() = print("Hello World!")

include("attractors/lorentz.jl")
include("utils/plotting.jl")
include("utils/wallpaper.jl")

export parameterized_lorenz!, 
    plot_attractor!, compute_attractor!,
    createwallpaper

end # module
