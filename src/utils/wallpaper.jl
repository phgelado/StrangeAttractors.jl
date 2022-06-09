include("../attractors/lorentz.jl")

function createwallpaper(attractor, u0, tspan, p)
    
    sol = compute_attractor!(attractor, u0, tspan, p)
    plot1 = plot(sol, vars = (1,2,3),axis=([], false),
        legend = false, dpi=900)
    plot(plot1)

    savefig("wallpaper.png")
end
