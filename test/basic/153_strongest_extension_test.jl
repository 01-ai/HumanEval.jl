@testitem "153_strongest_extension.jl" tags=[:HumanEval] begin

    include(joinpath(ENV["GENERATION_DIR"], "153_strongest_extension.jl"))

    # Check some simple cases
    @test strongest_extension("Watashi", ["tEN", "niNE", "eIGHt8OKe"]) == "Watashi.eIGHt8OKe"
    @test strongest_extension("Boku123", ["nani", "NazeDa", "YEs.WeCaNe", "32145tggg"]) == "Boku123.YEs.WeCaNe"
    @test strongest_extension("__YESIMHERE", ["t", "eMptY", "nothing", "zeR00", "NuLl__", "123NoooneB321"]) == "__YESIMHERE.NuLl__"
    @test strongest_extension("K", ["Ta", "TAR", "t234An", "cosSo"]) == "K.TAR"
    @test strongest_extension("__HAHA", ["Tab", "123", "781345", "-_-"]) == "__HAHA.123"
    @test strongest_extension("YameRore", ["HhAas", "okIWILL123", "WorkOut", "Fails", "-_-"]) == "YameRore.okIWILL123"
    @test strongest_extension("finNNalLLly", ["Die", "NowW", "Wow", "WoW"]) == "finNNalLLly.WoW"

    # Check some edge cases that are easy to work out by hand.
    @test strongest_extension("_", ["Bb", "91245"]) == "_.Bb"
    @test strongest_extension("Sp", ["671235", "Bb"]) == "Sp.671235"
end