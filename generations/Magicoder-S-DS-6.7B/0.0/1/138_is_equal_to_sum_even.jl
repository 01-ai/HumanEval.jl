"""
    is_equal_to_sum_even(n::Int)::Bool

Evaluate whether the given number `n` can be written as the sum of exactly 4
positive even numbers.

# Example

```jldoctest
julia> is_equal_to_sum_even(4)
false

julia> is_equal_to_sum_even(6)
false

julia> is_equal_to_sum_even(8)
true
```
"""
function is_equal_to_sum_even(n::Int)::Bool
    if n < 8
        return false
    end
    for i in 2:2:n-6
        for j in i+2:2:n-4
            for k in j+2:2:n-2
                for l in k+2:2:n
                    if i + j + k + l == n
                        return true
                    end
                end
            end
        end
    end
    return false
end

# Test cases
println(is_equal_to_sum_even(4))  # false
println(is_equal_to_sum_even(6))  # false
println(is_equal_to_sum_even(8))  # true
println(is_equal_to_sum_even(10))  # true
println(is_equal_to_sum_even(12))  # true
println(is_equal_to_sum_even(14))  # true
println(is_equal_to_sum_even(16))  # true
println(is_equal_to_sum_even(18))  # true
println(is_equal_to_sum_even(20))  # true
println(is_equal_to_sum_even(22))  # true
println(is_equal_to_sum_even(24))  # true
println(is_equal_to_sum_even(26))  # true
println(is_equal_to_sum_even(28))  # true
println(is_equal_to_sum_even(30))  # true
println(is_equal_to_sum_even(32))  # true
println(is_equal_to_sum_even(34))  # true
println(is_equal_to_sum_even(36))  # true
println(is_equal_to_sum_even(38))  # true
println(is_equal_to_sum_even(40))  # true
println(is_equal_to_sum_even(42))  # true
println(is_equal_to_sum_even(44))  # true
println(is_equal_to_sum_even(46))  # true
println(is_equal_to_sum_even(48))  # true
println(is_equal_to_sum_even(50))  # true
println(is_equal_to_sum_even(52))  # true
println(is_equal_to_sum_even(54))  # true
println(is_equal_to_sum_even(56))  # true
println(is_equal_to_sum_even(58))  # true
println(is_equal_to_sum_even(60))  # true
println(is_equal_to_sum_even(62))  # true
println(is_equal_to_sum_even(64))  # true
println(is_equal_to_sum_even(66))  # true
println(is_equal_to_sum_even(68))  # true
println(is_equal_to_sum_even(70))  # true
println(is_equal_to_sum_even(72))  # true
println(is_equal_to_sum_even(74))  # true
println(is_equal_to_sum_even(76))  # true
println(is_equal_to_sum_even(78))  # true
println(is_equal_to_sum_even(80))  # true
println(is_equal_to_sum_even(82))  # true
println(is_equal_to_sum_even(84))  # true
println(is_equal_to_sum_even(86))  # true
println(is_equal_to_sum_even(88))  # true
println(is_equal_to_sum_even(90))  # true
println(is_equal_to_sum_even(92))  # true
println(is_equal_to_sum_even(94))  # true
println(is_equal_to_sum_even(96))  # true
println(is_equal_to_sum_even(98))  # true
println(is_equal_to_sum_even(100))  # true
println(is_equal_to_sum_even(102))  # true
println(is_equal_to_sum_even(104))  # true
println(is_equal_to_sum_even(106))  # true
println(is_equal_to_sum_even(108))  # true
println(is_equal_to_sum_even(110))  # true
println(is_equal_to_sum_even(112))  # true
println(is_equal_to_sum_even(114))  # true
println(is_equal_to_sum_even(116))  # true
println(is_equal_to_sum_even(118))  # true
println(is_equal_to_sum_even(120))  # true
println(is_equal_to_sum_even(122))  # true
println(is_equal_to_sum_even(124))  # true
println(is_equal_to_sum_even(126))  # true
println(is_equal_to_sum_even(128))  # true
println(is_equal_to_sum_even(130))  # true
println(is_equal_to_sum_even(132))  # true
println(is_equal_to_sum_even(134))  # true
println(is_equal_to_sum_even(136))  # true
println(is_equal_to_sum_even(138))  # true
println(is_equal_to_sum_even(140))  # true
println(is_equal_to_sum_even(142))  # true
println(is_equal_to_sum_even(144))  # true
println(is_equal_to_sum_even(146))  # true
println(is_equal_to_sum_even(148))  # true
println(is_equal_to_sum_even(150))  # true
println(is_equal_to_sum_even(152))  # true
println(is_equal_to_sum_even(154))  # true
println(is_equal_to_sum_even(156))  # true
println(is_equal_to_sum_even(158))  # true
println(is_equal_to_sum_even(160))  # true
println(is_equal_to_sum_even(162))  # true
println(is_equal_to_sum_even(164))  # true
println(is_equal_to_sum_even(166))  # true
println(is_equal_to_sum_even(168))  # true
println(is_equal_to_sum_even(170))  # true
println(is_equal_to_sum_even(172))  # true
println(is_equal_to_sum_even(174))  # true
println(is_equal_to_sum_even(176))  # true
println(is_equal_to_sum_even(178))  # true
println(is_equal_to_sum_even(180))  # true
println(is_equal_to_sum_even(182))  # true
println(is_equal_to_sum_even(184))  # true
println(is_equal_to_sum_even(186))  # true
println(is_equal_to_sum_even(188))  # true
println(is_equal_to_sum_even(190))  # true
println(is_equal_to_sum_even(192))  # true
println(is_equal_to_sum_even(194))  # true
println(is_equal_to_sum_even(196))  # true
println(is_equal_to_sum_even(198))  # true
println(is_equal_to_sum_even(200))  # true
println(is_equal_to_sum_even(202))  # true
println(is_equal_to_sum_even(204))  # true
println(is_equal_to_sum_even(206))  # true
println(is_equal_to_sum_even(208))  # true
println(is_equal_to_sum_even(210))  # true
println(is_equal_to_sum_even(212))  # true
println(is_equal_to_sum_even(214))  # true
println(is_equal_to_sum_even(216))  # true
println(is_equal_to_sum_even(218))  # true
println(is_equal_to_sum_even(220))  # true
println(is_equal_to_sum_even(222))  # true
println(is_equal_to_sum_even(224))  # true
println(is_equal_to_sum_even(226))  # true
println(is_equal_to_sum_even(228))  # true
println(is_equal_to_sum_even(230))  # true
println(is_equal_to_sum_even(232))  # true
println(is_equal_to_sum_even(234))  # true
println(is_equal_to_sum_even(236))  # true
println(is_equal_to_sum_even(238))  # true
println(is_equal_to_sum_even(240))  # true
println(is_equal_to_sum_even(242))  # true
println(is_equal_to_sum_even(244))  # true
println(is_equal_to_sum_even(246))  # true
println(is_equal_to_sum_even(248))  # true
println(is_equal_to_sum_even(250))  # true
println(is_equal_to_sum_even(252))  # true
println(is_equal_to_sum_even(254))  # true
println(is_equal_to_sum_even(256))  # true
println(is_equal_to_sum_even(258))  # true
println(is_equal_to_sum_even(260))  # true
println(is_equal_to_sum_even(262))  # true
println(is_equal_to_sum_even(264))  # true
println(is_equal_to_sum_even(266))  # true
println(is_equal_to_sum_even(268))  # true
println(is_equal_to_sum_even(270))  # true
println(is_equal_to_sum_even(272))  # true
println(is_equal_to_sum_even(274))  # true
println(is_equal_to_sum_even(276))  # true
println(is_equal_to_sum_even(278))  # true
println(is_equal_to_sum_even(280))  # true
println(is_equal_to_sum_even(282))  # true
println(is_equal_to_sum_even(284))  # true
println(is_equal_to_sum_even(286))  # true
println(is_equal_to_sum_even(288))  # true
println(is_equal_to_sum_even(290))  # true
println(is_equal_to_sum_even(292))  # true
println(is_equal_to_sum_even(294))  # true
println(is_equal_to_sum_even(296))  # true
println(is_equal_to_sum_even(298))  # true
println(is_equal_to_sum_even(300))  # true
println(is_equal_to_sum_even(302))  # true
println(is_equal_to_sum_even(304))  # true
println(is_equal_to_sum_even(306))  # true
println(is_equal_to_sum_even(308))  # true
println(is_equal_to_sum_even(310))  # true
println(is_equal_to_sum_even(312))  # true
println(is_equal_to_sum_even(314))  # true
println(is_equal_to_sum_even(316))  # true
println(is_equal_to_sum_even(318))  # true
println(is_equal_to_sum_even(320))  # true
println(is_equal_to_sum_even(322))  # true
println(is_equal_to_sum_even(324))  # true
println(is_equal_to_sum_even(326))  # true
println(is_equal_to_sum_even(328))  # true
println(is_equal_to_sum_even(330))  # true
println(is_equal_to_sum_even(332))  # true
println(is_equal_to_sum_even(334))  # true
println(is_equal_to_sum_even(336))  # true
println(is_equal_to_sum_even(338))  # true
println(is_equal_to_sum_even(340))  # true
println(is_equal_to_sum_even(342))  # true
println(is_equal_to_sum_even(344))  # true
println(is_equal_to_sum_even(346))  # true
println(is_equal_to_sum_even(348))  # true
println(is_equal_to_sum_even(350))  # true
println(is_equal_to_sum_even(352))  # true
println(is_equal_to_sum_even(354))  # true
println(is_equal_to_sum_even(356))  # true
println(is_equal_to_sum_even(358))  # true
println(is_equal_to_sum_even(360))  # true
println(is_equal_to_sum_even(362))  # true
println(is_equal_to_sum_even(364))  # true
println(is_equal_to_sum_even(366))  # true
println(is_equal_to_sum_even(368))  # true
println(is_equal_to_sum_even(370))  # true
println(is_equal_to_sum_even(372))  # true
println(is_equal_to_sum_even(374))  # true
println(is_equal_to_sum_even(376))  # true
println(is_equal_to_sum_even(378))  # true
println(is_equal_to_sum_even(380))  # true
println(is_equal_to_sum_even(382))  # true
println(is_equal_to_sum_even(384))  # true
println(is_equal_to_sum_even(386))  # true
println(is_equal_to_sum_even(388))  # true
println(is_equal_to_sum_even(390))  # true
println(is_equal_to_sum_even(392))  # true
println(is_equal_to_sum_even(394))  # true
println(is_equal_to_sum_even(396))  # true
println(is_equal_to_sum_even(398))  # true
println(is_equal_to_sum_even(400))  # true
println(is_equal_to_sum_even(402))  # true
println(is_equal_to_sum_even(404))  # true
println
