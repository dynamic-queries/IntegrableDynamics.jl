using IntegrableDynamics
using Documenter

DocMeta.setdocmeta!(Steal, :DocTestSetup, :(using Steal); recursive=true)

makedocs(;
    modules=[Steal],
    authors="Rahul Manavalan <rahul.learns.physics@ gmail.com> and contributors",
    repo="https://github.com/dynamic-queries/IntegrableDynamics.jl/blob/{commit}{path}#{line}",
    sitename="Steal.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://dynamic-queries.github.io/IntegrableDynamics.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/dynamic-queries/IntegrableDynamics.jl",
    devbranch="main",
)
