@testitem "059_largest_prime_factor_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "059_largest_prime_factor.jl"))
    @test largest_prime_factor(100) == 5
    @test largest_prime_factor(256) == 2
    @test largest_prime_factor(500) == 5
    @test largest_prime_factor(873) == 97
    @test largest_prime_factor(9999) == 101
    @test largest_prime_factor(121) == 11
    @test largest_prime_factor(1764) == 7
    @test largest_prime_factor(4096) == 2
    @test largest_prime_factor(243) == 3
    @test largest_prime_factor(1024) == 2
    @test largest_prime_factor(4097) == 241
    @test largest_prime_factor(1765) == 353
    @test largest_prime_factor(120) == 5
    @test largest_prime_factor(501) == 167
    @test largest_prime_factor(4095) == 13
    @test largest_prime_factor(10000) == 5
    @test largest_prime_factor(255) == 17
    @test largest_prime_factor(1025) == 41
    @test largest_prime_factor(4094) == 89
    @test largest_prime_factor(242) == 11
    @test largest_prime_factor(1763) == 43
    @test largest_prime_factor(254) == 127
    @test largest_prime_factor(9998) == 4999
    @test largest_prime_factor(872) == 109
    @test largest_prime_factor(9997) == 769
    @test largest_prime_factor(502) == 251
    @test largest_prime_factor(119) == 17
    @test largest_prime_factor(9996) == 17
    @test largest_prime_factor(874) == 23
    @test largest_prime_factor(253) == 23
    @test largest_prime_factor(252) == 7
    @test largest_prime_factor(1762) == 881
    @test largest_prime_factor(122) == 61
    @test largest_prime_factor(4098) == 683
    @test largest_prime_factor(871) == 67
    @test largest_prime_factor(1023) == 31
    @test largest_prime_factor(9995) == 1999
    @test largest_prime_factor(870) == 29
    @test largest_prime_factor(99) == 11
    @test largest_prime_factor(98) == 7
    @test largest_prime_factor(118) == 59
    @test largest_prime_factor(1761) == 587
    @test largest_prime_factor(117) == 13
    @test largest_prime_factor(123) == 41
    @test largest_prime_factor(10001) == 137
    @test largest_prime_factor(87) == 29
    @test largest_prime_factor(92) == 23
    @test largest_prime_factor(869) == 79
    @test largest_prime_factor(1766) == 883
    @test largest_prime_factor(93) == 31
    @test largest_prime_factor(875) == 7
    @test largest_prime_factor(244) == 61
    @test largest_prime_factor(9994) == 263
    @test largest_prime_factor(1767) == 31
    @test largest_prime_factor(1760) == 11
    @test largest_prime_factor(124) == 31
    @test largest_prime_factor(245) == 7
    @test largest_prime_factor(116) == 29
    @test largest_prime_factor(9) == 3
    @test largest_prime_factor(88) == 11
    @test largest_prime_factor(10) == 5
    @test largest_prime_factor(86) == 43
    @test largest_prime_factor(246) == 41
    @test largest_prime_factor(85) == 17
    @test largest_prime_factor(115) == 23
    @test largest_prime_factor(247) == 19
    @test largest_prime_factor(1022) == 73
    @test largest_prime_factor(91) == 13
    @test largest_prime_factor(248) == 31
    @test largest_prime_factor(125) == 5
    @test largest_prime_factor(94) == 47
    @test largest_prime_factor(10002) == 1667
    @test largest_prime_factor(249) == 83
    @test largest_prime_factor(1768) == 17
    @test largest_prime_factor(876) == 73
    @test largest_prime_factor(38) == 19
    @test largest_prime_factor(868) == 31
    @test largest_prime_factor(1020) == 17
    @test largest_prime_factor(8) == 2
    @test largest_prime_factor(1026) == 19
    @test largest_prime_factor(90) == 5
    @test largest_prime_factor(866) == 433
    @test largest_prime_factor(39) == 13
    @test largest_prime_factor(867) == 17
    @test largest_prime_factor(9993) == 3331
    @test largest_prime_factor(1027) == 79
    @test largest_prime_factor(9992) == 1249
    @test largest_prime_factor(1029) == 7
    @test largest_prime_factor(1028) == 257
    @test largest_prime_factor(40) == 5
    @test largest_prime_factor(18) == 3
    @test largest_prime_factor(60) == 5
    @test largest_prime_factor(49) == 7
    @test largest_prime_factor(95) == 19
    @test largest_prime_factor(48) == 3
    @test largest_prime_factor(114) == 19
    @test largest_prime_factor(96) == 3
    @test largest_prime_factor(72) == 3
    @test largest_prime_factor(1030) == 103
    @test largest_prime_factor(9991) == 103
    @test largest_prime_factor(13433) == 101
    @test largest_prime_factor(456745) == 547
    @test largest_prime_factor(568623) == 17231
    @test largest_prime_factor(32767) == 151
    @test largest_prime_factor(4) == 2
    @test largest_prime_factor(6) == 3
    @test largest_prime_factor(12) == 3
    @test largest_prime_factor(21) == 7
    @test largest_prime_factor(13432) == 73
    @test largest_prime_factor(13434) == 2239
    @test largest_prime_factor(22) == 11
    @test largest_prime_factor(32766) == 127
    @test largest_prime_factor(13435) == 2687
    @test largest_prime_factor(20) == 5
    @test largest_prime_factor(456744) == 19031
    @test largest_prime_factor(568622) == 284311
    @test largest_prime_factor(81) == 3
    @test largest_prime_factor(456743) == 919
    @test largest_prime_factor(456742) == 1597
    @test largest_prime_factor(13431) == 37
    @test largest_prime_factor(32765) == 6553
    @test largest_prime_factor(80) == 5
    @test largest_prime_factor(456741) == 2671
    @test largest_prime_factor(456746) == 113
    @test largest_prime_factor(32764) == 8191
    @test largest_prime_factor(32763) == 163
    @test largest_prime_factor(568621) == 6389
    @test largest_prime_factor(82) == 41
    @test largest_prime_factor(568624) == 5077
    @test largest_prime_factor(32768) == 2
    @test largest_prime_factor(13430) == 79
    @test largest_prime_factor(456740) == 557
    @test largest_prime_factor(13429) == 1033
    @test largest_prime_factor(456739) == 401
    @test largest_prime_factor(32762) == 16381
    @test largest_prime_factor(32769) == 331
    @test largest_prime_factor(456747) == 152249
    @test largest_prime_factor(14) == 7
    @test largest_prime_factor(32761) == 181
    @test largest_prime_factor(32770) == 113
    @test largest_prime_factor(568620) == 13
    @test largest_prime_factor(24) == 3
    @test largest_prime_factor(52) == 13
    @test largest_prime_factor(568625) == 4549
    @test largest_prime_factor(51) == 17
    @test largest_prime_factor(456738) == 76123
    @test largest_prime_factor(30) == 5
    @test largest_prime_factor(15) == 5
    @test largest_prime_factor(50) == 5
    @test largest_prime_factor(32760) == 13
    @test largest_prime_factor(13428) == 373
    @test largest_prime_factor(13427) == 463
    @test largest_prime_factor(1000000) == 5
    @test largest_prime_factor(16) == 2
    @test largest_prime_factor(25) == 5
    @test largest_prime_factor(13436) == 3359
    @test largest_prime_factor(456749) == 5503
    @test largest_prime_factor(13437) == 1493
    @test largest_prime_factor(26) == 13
    @test largest_prime_factor(456748) == 1283
    @test largest_prime_factor(568626) == 94771
    @test largest_prime_factor(13438) == 6719
    @test largest_prime_factor(27) == 3
    @test largest_prime_factor(13439) == 151
    @test largest_prime_factor(456750) == 29
    @test largest_prime_factor(456751) == 691
    @test largest_prime_factor(456752) == 28547
    @test largest_prime_factor(28) == 7
    @test largest_prime_factor(32759) == 47
    @test largest_prime_factor(84) == 7
    @test largest_prime_factor(456753) == 13841
    @test largest_prime_factor(65) == 13
    @test largest_prime_factor(63) == 7
    @test largest_prime_factor(64) == 2
end
