module StrangeAttractors

greet() = print("Hello World!")

include("Lorentz.jl")

export parameterized_lorenz!, plot_attractor!, compute_attractor!

end # module
