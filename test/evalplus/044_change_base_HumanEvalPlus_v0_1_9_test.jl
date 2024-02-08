@testitem "044_change_base_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "044_change_base.jl"))
    @test change_base(10,5) == "20"
    @test change_base(15,4) == "33"
    @test change_base(25,6) == "41"
    @test change_base(33,7) == "45"
    @test change_base(45,8) == "55"
    @test change_base(50,9) == "55"
    @test change_base(13,5) == "23"
    @test change_base(17,3) == "122"
    @test change_base(42,8) == "52"
    @test change_base(15,2) == "1111"
    @test change_base(8,4) == "20"
    @test change_base(2,3) == "2"
    @test change_base(17,8) == "21"
    @test change_base(7,8) == "7"
    @test change_base(9,5) == "14"
    @test change_base(7,6) == "11"
    @test change_base(5,8) == "5"
    @test change_base(45,7) == "63"
    @test change_base(4,9) == "4"
    @test change_base(3,3) == "10"
    @test change_base(8,8) == "10"
    @test change_base(2,8) == "2"
    @test change_base(15,7) == "21"
    @test change_base(50,5) == "200"
    @test change_base(8,7) == "11"
    @test change_base(25,5) == "100"
    @test change_base(17,9) == "18"
    @test change_base(5,9) == "5"
    @test change_base(2,6) == "2"
    @test change_base(9,9) == "10"
    @test change_base(4,4) == "10"
    @test change_base(7,7) == "10"
    @test change_base(5,4) == "11"
    @test change_base(3,7) == "3"
    @test change_base(13,7) == "16"
    @test change_base(15,3) == "120"
    @test change_base(2,2) == "10"
    @test change_base(17,7) == "23"
    @test change_base(7,5) == "12"
    @test change_base(10,8) == "12"
    @test change_base(3,6) == "3"
    @test change_base(16,8) == "20"
    @test change_base(18,2) == "10010"
    @test change_base(15,5) == "30"
    @test change_base(6,6) == "10"
    @test change_base(46,8) == "56"
    @test change_base(7,9) == "7"
    @test change_base(5,6) == "5"
    @test change_base(16,2) == "10000"
    @test change_base(50,2) == "110010"
    @test change_base(41,8) == "51"
    @test change_base(16,4) == "100"
    @test change_base(46,5) == "141"
    @test change_base(17,2) == "10001"
    @test change_base(3,2) == "11"
    @test change_base(3,9) == "3"
    @test change_base(13,8) == "15"
    @test change_base(9,6) == "13"
    @test change_base(42,7) == "60"
    @test change_base(10,4) == "22"
    @test change_base(45,6) == "113"
    @test change_base(15,8) == "17"
    @test change_base(43,7) == "61"
    @test change_base(5,5) == "10"
    @test change_base(3,5) == "3"
    @test change_base(4,3) == "11"
    @test change_base(13,9) == "14"
    @test change_base(9,8) == "11"
    @test change_base(33,9) == "36"
    @test change_base(6,3) == "20"
    @test change_base(10,7) == "13"
    @test change_base(8,9) == "8"
    @test change_base(18,7) == "24"
    @test change_base(19,7) == "25"
    @test change_base(43,5) == "133"
    @test change_base(46,7) == "64"
    @test change_base(8,5) == "13"
    @test change_base(16,7) == "22"
    @test change_base(34,3) == "1021"
    @test change_base(16,6) == "24"
    @test change_base(6,4) == "12"
    @test change_base(4,6) == "4"
    @test change_base(5,7) == "5"
    @test change_base(4,5) == "4"
    @test change_base(15,6) == "23"
    @test change_base(3,4) == "3"
    @test change_base(14,5) == "24"
    @test change_base(14,6) == "22"
    @test change_base(10,9) == "11"
    @test change_base(46,6) == "114"
    @test change_base(5,2) == "101"
    @test change_base(18,9) == "20"
    @test change_base(18,8) == "22"
    @test change_base(7,4) == "13"
    @test change_base(35,9) == "38"
    @test change_base(4,8) == "4"
    @test change_base(6,5) == "11"
    @test change_base(50,7) == "101"
    @test change_base(50,8) == "62"
    @test change_base(13,4) == "31"
    @test change_base(256,5) == "2011"
    @test change_base(2019,3) == "2202210"
    @test change_base(34567,9) == "52367"
    @test change_base(27,3) == "1000"
    @test change_base(987654321,8) == "7267464261"
    @test change_base(9999999,9) == "20731370"
    @test change_base(123456789,3) == "22121022020212200"
    @test change_base(2669,7) == "10532"
    @test change_base(48298461,8) == "270174735"
    @test change_base(245678,7) == "2042156"
    @test change_base(9999999,8) == "46113177"
    @test change_base(2019,4) == "133203"
    @test change_base(987654321,9) == "2484401020"
    @test change_base(245678,8) == "737656"
    @test change_base(123456789,8) == "726746425"
    @test change_base(2019,9) == "2683"
    @test change_base(6,9) == "6"
    @test change_base(2018,9) == "2682"
    @test change_base(123456789,4) == "13112330310111"
    @test change_base(2,4) == "2"
    @test change_base(34567,4) == "20130013"
    @test change_base(9,4) == "21"
    @test change_base(256,9) == "314"
    @test change_base(48298461,4) == "2320033213131"
    @test change_base(245678,3) == "110111000012"
    @test change_base(48298462,9) == "110784027"
    @test change_base(2669,4) == "221231"
    @test change_base(1,3) == "1"
    @test change_base(2,9) == "2"
    @test change_base(48298462,4) == "2320033213132"
    @test change_base(2020,3) == "2202211"
    @test change_base(27,2) == "11011"
    @test change_base(2669,8) == "5155"
    @test change_base(4,2) == "100"
    @test change_base(2,5) == "2"
    @test change_base(245678,9) == "414005"
    @test change_base(9,7) == "12"
    @test change_base(48298461,2) == "10111000001111100111011101"
    @test change_base(9999999,6) == "554200143"
    @test change_base(9999999,5) == "10024444444"
    @test change_base(245678,4) == "323332232"
    @test change_base(26,2) == "11010"
    @test change_base(7,2) == "111"
    @test change_base(2020,4) == "133210"
    @test change_base(987654321,3) == "2112211110001000200"
    @test change_base(2018,8) == "3742"
    @test change_base(34568,9) == "52368"
    @test change_base(10,2) == "1010"
    @test change_base(10,3) == "101"
    @test change_base(27,8) == "33"
    @test change_base(256,4) == "10000"
    @test change_base(257,4) == "10001"
    @test change_base(34568,2) == "1000011100001000"
    @test change_base(9,2) == "1001"
    @test change_base(34569,2) == "1000011100001001"
    @test change_base(1,2) == "1"
    @test change_base(245678,5) == "30330203"
    @test change_base(2670,7) == "10533"
    @test change_base(2,7) == "2"
    @test change_base(27,9) == "30"
    @test change_base(5,3) == "12"
    @test change_base(34567,2) == "1000011100000111"
    @test change_base(34568,4) == "20130020"
    @test change_base(2669,2) == "101001101101"
    @test change_base(26,4) == "122"
    @test change_base(123456789,2) == "111010110111100110100010101"
    @test change_base(2019,8) == "3743"
    @test change_base(34569,9) == "52370"
    @test change_base(6,7) == "6"
    @test change_base(34567,3) == "1202102021"
    @test change_base(0,3) == "0"
    @test change_base(257,8) == "401"
    @test change_base(2669,3) == "10122212"
    @test change_base(26,7) == "35"
    @test change_base(2019,5) == "31034"
    @test change_base(28,3) == "1001"
    @test change_base(123456790,8) == "726746426"
    @test change_base(34567,8) == "103407"
    @test change_base(257,7) == "515"
    @test change_base(48298461,6) == "4443111553"
    @test change_base(256,8) == "400"
    @test change_base(2669,6) == "20205"
    @test change_base(26,6) == "42"
    @test change_base(34568,3) == "1202102022"
    @test change_base(27,5) == "102"
    @test change_base(26,5) == "101"
    @test change_base(9999999,4) == "212021121333"
    @test change_base(48298460,2) == "10111000001111100111011100"
    @test change_base(2019,6) == "13203"
    @test change_base(48298460,9) == "110784025"
    @test change_base(48298463,6) == "4443111555"
    @test change_base(48298460,7) == "1124346560"
    @test change_base(123456790,9) == "277266781"
    @test change_base(48298463,9) == "110784028"
    @test change_base(27,6) == "43"
    @test change_base(34569,4) == "20130021"
    @test change_base(27,4) == "123"
    @test change_base(34570,9) == "52371"
    @test change_base(256,3) == "100111"
    @test change_base(245679,4) == "323332233"
    @test change_base(245679,8) == "737657"
    @test change_base(257,9) == "315"
    @test change_base(26,3) == "222"
    @test change_base(9999999,2) == "100110001001011001111111"
    @test change_base(1,6) == "1"
    @test change_base(8,3) == "22"
    @test change_base(48298463,8) == "270174737"
    @test change_base(2669,5) == "41134"
    @test change_base(123456791,9) == "277266782"
    @test change_base(257,6) == "1105"
    @test change_base(0,8) == "0"
    @test change_base(123456790,7) == "3026236222"
    @test change_base(257,3) == "100112"
    @test change_base(245679,9) == "414006"
    @test change_base(34570,7) == "202534"
    @test change_base(1,5) == "1"
    @test change_base(123456790,4) == "13112330310112"
    @test change_base(48298462,2) == "10111000001111100111011110"
    @test change_base(9999999,7) == "150666342"
    @test change_base(34569,3) == "1202102100"
    @test change_base(123456791,4) == "13112330310113"
    @test change_base(255,5) == "2010"
    @test change_base(123456788,4) == "13112330310110"
    @test change_base(123456792,4) == "13112330310120"
    @test change_base(255,6) == "1103"
    @test change_base(10000000,8) == "46113200"
    @test change_base(255,9) == "313"
    @test change_base(8,6) == "12"
    @test change_base(123456791,3) == "22121022020212202"
    @test change_base(255,2) == "11111111"
    @test change_base(1,8) == "1"
    @test change_base(34568,8) == "103410"
    @test change_base(10000000,5) == "10030000000"
    @test change_base(255,3) == "100110"
    @test change_base(48298461,3) == "10100212211000220"
    @test change_base(48298461,9) == "110784026"
    @test change_base(123456790,3) == "22121022020212201"
    @test change_base(34569,7) == "202533"
    @test change_base(34570,3) == "1202102101"
    @test change_base(123456789,6) == "20130035113"
    @test change_base(123456788,3) == "22121022020212122"
    @test change_base(257,5) == "2012"
    @test change_base(987654321,5) == "4010314414241"
    @test change_base(2020,9) == "2684"
    @test change_base(2018,6) == "13202"
    @test change_base(1,7) == "1"
    @test change_base(48298461,5) == "44331022321"
    @test change_base(6,8) == "6"
    @test change_base(48298462,8) == "270174736"
    @test change_base(34571,7) == "202535"
    @test change_base(0,7) == "0"
    @test change_base(34571,2) == "1000011100001011"
    @test change_base(28,7) == "40"
    @test change_base(34571,4) == "20130023"
    @test change_base(257,2) == "100000001"
    @test change_base(34569,5) == "2101234"
    @test change_base(11,9) == "12"
    @test change_base(48298461,7) == "1124346561"
    @test change_base(48298462,6) == "4443111554"
    @test change_base(245680,4) == "323332300"
    @test change_base(11,6) == "15"
    @test change_base(34568,5) == "2101233"
    @test change_base(10000000,6) == "554200144"
    @test change_base(48298462,3) == "10100212211000221"
    @test change_base(2018,3) == "2202202"
    @test change_base(34569,8) == "103411"
    @test change_base(245679,5) == "30330204"
    @test change_base(245680,3) == "110111000021"
    @test change_base(10000000,4) == "212021122000"
    @test change_base(10000000,7) == "150666343"
    @test change_base(9999999,3) == "200211001102100"
    @test change_base(34571,6) == "424015"
    @test change_base(28,9) == "31"
    @test change_base(1,4) == "1"
    @test change_base(11,7) == "14"
    @test change_base(2670,4) == "221232"
    @test change_base(0,5) == "0"
    @test change_base(123456791,8) == "726746427"
    @test change_base(123456788,2) == "111010110111100110100010100"
    @test change_base(9999998,5) == "10024444443"
    @test change_base(34571,8) == "103413"
    @test change_base(245679,3) == "110111000020"
    @test change_base(123456792,7) == "3026236224"
    @test change_base(34568,7) == "202532"
    @test change_base(123456792,5) == "223101104132"
    @test change_base(34568,6) == "424012"
    @test change_base(123456788,5) == "223101104123"
    @test change_base(2020,2) == "11111100100"
    @test change_base(2670,6) == "20210"
    @test change_base(48298460,8) == "270174734"
    @test change_base(245678,6) == "5133222"
    @test change_base(9999998,3) == "200211001102022"
    @test change_base(34570,5) == "2101240"
    @test change_base(48298460,5) == "44331022320"
    @test change_base(10000000,2) == "100110001001011010000000"
    @test change_base(123456792,3) == "22121022020212210"
    @test change_base(2020,8) == "3744"
    @test change_base(34571,3) == "1202102102"
    @test change_base(245680,8) == "737660"
    @test change_base(123456791,7) == "3026236223"
    @test change_base(6,2) == "110"
    @test change_base(123456788,8) == "726746424"
    @test change_base(255,8) == "377"
    @test change_base(9,3) == "100"
    @test change_base(123456792,2) == "111010110111100110100011000"
    @test change_base(258,5) == "2013"
    @test change_base(258,9) == "316"
    @test change_base(48298463,3) == "10100212211000222"
    @test change_base(2671,2) == "101001101111"
    @test change_base(245677,4) == "323332231"
    @test change_base(10000001,2) == "100110001001011010000001"
    @test change_base(10000001,8) == "46113201"
    @test change_base(48298463,4) == "2320033213133"
    @test change_base(34570,8) == "103412"
    @test change_base(34571,9) == "52372"
    @test change_base(48298462,7) == "1124346562"
    @test change_base(48298460,4) == "2320033213130"
    @test change_base(0,9) == "0"
    @test change_base(9999998,2) == "100110001001011001111110"
    @test change_base(11,3) == "102"
    @test change_base(9999998,6) == "554200142"
    @test change_base(2671,4) == "221233"
    @test change_base(2018,2) == "11111100010"
    @test change_base(245676,5) == "30330201"
    @test change_base(123456791,2) == "111010110111100110100010111"
    @test change_base(9999998,7) == "150666341"
    @test change_base(28,2) == "11100"
    @test change_base(28,5) == "103"
    @test change_base(10000001,6) == "554200145"
    @test change_base(34570,2) == "1000011100001010"
    @test change_base(245676,2) == "111011111110101100"
    @test change_base(11,5) == "21"
    @test change_base(2672,5) == "41142"
    @test change_base(8,2) == "1000"
    @test change_base(48298460,6) == "4443111552"
    @test change_base(34570,4) == "20130022"
    @test change_base(256,6) == "1104"
    @test change_base(123456790,5) == "223101104130"
    @test change_base(48298464,4) == "2320033213200"
    @test change_base(2669,9) == "3585"
    @test change_base(123456790,2) == "111010110111100110100010110"
    @test change_base(0,2) == "0"
    @test change_base(123456790,6) == "20130035114"
    @test change_base(245677,5) == "30330202"
    @test change_base(2020,7) == "5614"
    @test change_base(255,4) == "3333"
    @test change_base(2019,2) == "11111100011"
    @test change_base(28,4) == "130"
    @test change_base(10000001,7) == "150666344"
    @test change_base(48298464,6) == "4443112000"
    @test change_base(30,2) == "11110"
    @test change_base(25,2) == "11001"
    @test change_base(123456788,6) == "20130035112"
    @test change_base(258,2) == "100000010"
    @test change_base(26,8) == "32"
    @test change_base(245679,6) == "5133223"
    @test change_base(2018,4) == "133202"
    @test change_base(0,4) == "0"
    @test change_base(34567,7) == "202531"
    @test change_base(2018,5) == "31033"
    @test change_base(27,7) == "36"
    @test change_base(10000000,9) == "20731371"
    @test change_base(987654320,8) == "7267464260"
    @test change_base(245679,7) == "2042160"
    @test change_base(3,8) == "3"
    @test change_base(245677,9) == "414004"
    @test change_base(34567,6) == "424011"
    @test change_base(987654320,6) == "242000505412"
    @test change_base(245677,7) == "2042155"
    @test change_base(245677,6) == "5133221"
    @test change_base(987654321,6) == "242000505413"
    @test change_base(28,8) == "34"
    @test change_base(987654320,9) == "2484401018"
    @test change_base(245677,8) == "737655"
    @test change_base(987654320,7) == "33321631442"
    @test change_base(987654320,5) == "4010314414240"
    @test change_base(4,7) == "4"
    @test change_base(245677,3) == "110111000011"
    @test change_base(256,2) == "100000000"
    @test change_base(245678,2) == "111011111110101110"
    @test change_base(26,9) == "28"
    @test change_base(245679,2) == "111011111110101111"
    @test change_base(2670,5) == "41140"
    @test change_base(2670,8) == "5156"
    @test change_base(987654322,6) == "242000505414"
    @test change_base(987654322,2) == "111010110111100110100010110010"
    @test change_base(2017,3) == "2202201"
    @test change_base(2020,5) == "31040"
    @test change_base(10000001,4) == "212021122001"
    @test change_base(0,6) == "0"
    @test change_base(987654321,2) == "111010110111100110100010110001"
    @test change_base(123456789,9) == "277266780"
    @test change_base(10000002,6) == "554200150"
    @test change_base(987654323,2) == "111010110111100110100010110011"
    @test change_base(10000002,7) == "150666345"
    @test change_base(123456788,9) == "277266778"
    @test change_base(28,6) == "44"
    @test change_base(2017,7) == "5611"
    @test change_base(25,7) == "34"
    @test change_base(2670,9) == "3586"
    @test change_base(987654322,8) == "7267464262"
    @test change_base(10000001,9) == "20731372"
    @test change_base(987654323,4) == "322313212202303"
    @test change_base(25,3) == "221"
    @test change_base(29,2) == "11101"
    @test change_base(10,6) == "14"
    @test change_base(987654323,7) == "33321631445"
    @test change_base(987654321,4) == "322313212202301"
    @test change_base(29,3) == "1002"
    @test change_base(2020,6) == "13204"
    @test change_base(987654320,2) == "111010110111100110100010110000"
    @test change_base(245676,3) == "110111000010"
    @test change_base(9999998,9) == "20731368"
    @test change_base(245676,4) == "323332230"
    @test change_base(245676,9) == "414003"
    @test change_base(2016,7) == "5610"
    @test change_base(987654319,6) == "242000505411"
    @test change_base(987654319,8) == "7267464257"
    @test change_base(10000002,5) == "10030000002"
    @test change_base(2671,6) == "20211"
    @test change_base(7,3) == "21"
    @test change_base(987654319,4) == "322313212202233"
    @test change_base(2017,2) == "11111100001"
    @test change_base(987654319,5) == "4010314414234"
    @test change_base(2670,3) == "10122220"
    @test change_base(2018,7) == "5612"
    @test change_base(25,4) == "121"
    @test change_base(987654319,7) == "33321631441"
    @test change_base(10000001,3) == "200211001102102"
    @test change_base(256,7) == "514"
    @test change_base(2016,5) == "31031"
    @test change_base(245677,2) == "111011111110101101"
    @test change_base(34567,5) == "2101232"
    @test change_base(2017,6) == "13201"
    @test change_base(29,4) == "131"
    @test change_base(10000001,5) == "10030000001"
    @test change_base(29,9) == "32"
    @test change_base(48298462,5) == "44331022322"
    @test change_base(987654320,3) == "2112211110001000122"
    @test change_base(9999998,8) == "46113176"
    @test change_base(48298463,7) == "1124346563"
    @test change_base(987654323,3) == "2112211110001000202"
    @test change_base(2671,8) == "5157"
    @test change_base(48298459,2) == "10111000001111100111011011"
    @test change_base(10000002,2) == "100110001001011010000010"
    @test change_base(987654322,4) == "322313212202302"
    @test change_base(987654323,6) == "242000505415"
    @test change_base(25,9) == "27"
    @test change_base(2016,4) == "133200"
    @test change_base(245680,7) == "2042161"
    @test change_base(123456789,7) == "3026236221"
    @test change_base(2668,8) == "5154"
    @test change_base(123456789,5) == "223101104124"
    @test change_base(987654322,3) == "2112211110001000201"
    @test change_base(245675,4) == "323332223"
    @test change_base(2017,8) == "3741"
    @test change_base(987654321,7) == "33321631443"
    @test change_base(48298463,5) == "44331022323"
    @test change_base(48298459,4) == "2320033213123"
    @test change_base(987654322,7) == "33321631444"
    @test change_base(48298459,3) == "10100212211000211"
    @test change_base(12,9) == "13"
    @test change_base(2021,2) == "11111100101"
    @test change_base(987654323,8) == "7267464263"
    @test change_base(12,8) == "14"
    @test change_base(987654319,9) == "2484401017"
end
