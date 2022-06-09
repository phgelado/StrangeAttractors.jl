include("../attractors/lorentz.jl")

function plot_attractor!(parameterized_lorenz!, u0, tspan, p)
    sol = compute_attractor!(parameterized_lorenz!, u0, tspan, p)
    plot1 = plot(sol, vars = (1,2,3), xlabel="x",  ylabel="y", zlabel="z", label="x against y against z")
    plot2 = plot(sol, label = ["x" "y" "z"])
    plot(plot1, plot2, layout = (1, 2))

end