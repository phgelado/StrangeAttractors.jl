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
