using DifferentialEquations
using Plots

function parameterized_lorenz!(du,u,p,t)

    x, y, z = u #variables are part of vector array u

    σ, ρ, Β = p #coefficients are part of vector array p 

    du[1] = dx = σ*(y-x)
    du[2] = dy = x*(ρ-z) - y
    du[3] = dz = x*y -Β*z

end

function compute_attractor!(parameterized_lorenz!, u0, tspan, p)

    prob = ODEProblem(parameterized_lorenz!, u0, tspan, p)
    return solve(prob)

end

function plot_attractor!(parameterized_lorenz!, u0, tspan, p)
    sol = compute_attractor!(parameterized_lorenz!, u0, tspan, p)
    plot1 = plot(sol, vars = (1,2,3), xlabel="x",  ylabel="y", zlabel="z", label="x against y against z")
    plot2 = plot(sol, label = ["x" "y" "z"])
    plot(plot1, plot2, layout = (1, 2))

end
