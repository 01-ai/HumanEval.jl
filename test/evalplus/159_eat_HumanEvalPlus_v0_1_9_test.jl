@testitem "159_eat_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "159_eat.jl"))
    @test eat(0,0,0) == [0, 0]
    @test eat(10,0,10) == [10, 10]
    @test eat(0,10,5) == [5, 0]
    @test eat(5,0,5) == [5, 5]
    @test eat(2,2,2) == [4, 0]
    @test eat(999,1,0) == [999, 0]
    @test eat(0,999,1) == [1, 0]
    @test eat(500,500,1000) == [1000, 500]
    @test eat(1,10,5) == [6, 0]
    @test eat(0,0,5) == [0, 5]
    @test eat(0,0,1) == [0, 1]
    @test eat(999,5,5) == [1004, 0]
    @test eat(999,5,500) == [1004, 495]
    @test eat(999,10,5) == [1004, 0]
    @test eat(5,6,6) == [11, 0]
    @test eat(999,2,1) == [1000, 0]
    @test eat(5,5,5) == [10, 0]
    @test eat(0,10,500) == [10, 490]
    @test eat(5,10,5) == [10, 0]
    @test eat(1,0,1) == [1, 1]
    @test eat(6,0,6) == [6, 6]
    @test eat(0,4,0) == [0, 0]
    @test eat(10,999,4) == [14, 0]
    @test eat(9,0,10) == [9, 10]
    @test eat(999,2,500) == [1001, 498]
    @test eat(999,0,0) == [999, 0]
    @test eat(7,7,6) == [13, 0]
    @test eat(9,1000,10) == [19, 0]
    @test eat(4,10,4) == [8, 0]
    @test eat(999,1,999) == [1000, 998]
    @test eat(0,5,1) == [1, 0]
    @test eat(3,9,4) == [7, 0]
    @test eat(7,6,6) == [13, 0]
    @test eat(10,5,10) == [15, 5]
    @test eat(5,10,10) == [15, 0]
    @test eat(999,2,10) == [1001, 8]
    @test eat(999,0,999) == [999, 999]
    @test eat(999,1,1) == [1000, 0]
    @test eat(1000,1,999) == [1001, 998]
    @test eat(6,10,5) == [11, 0]
    @test eat(999,6,7) == [1005, 1]
    @test eat(6,0,10) == [6, 10]
    @test eat(10,5,5) == [15, 0]
    @test eat(4,5,5) == [9, 0]
    @test eat(998,7,4) == [1002, 0]
    @test eat(7,4,6) == [11, 2]
    @test eat(0,500,0) == [0, 0]
    @test eat(0,1,1) == [1, 0]
    @test eat(997,2,10) == [999, 8]
    @test eat(1000,999,998) == [1998, 0]
    @test eat(997,999,0) == [997, 0]
    @test eat(998,7,10) == [1005, 3]
    @test eat(500,500,500) == [1000, 0]
    @test eat(997,0,3) == [997, 3]
    @test eat(0,0,999) == [0, 999]
    @test eat(4,999,4) == [8, 0]
    @test eat(9,0,7) == [9, 7]
    @test eat(5,7,5) == [10, 0]
    @test eat(1000,6,998) == [1006, 992]
    @test eat(2,10,10) == [12, 0]
    @test eat(6,2,499) == [8, 497]
    @test eat(999,2,7) == [1001, 5]
    @test eat(999,999,999) == [1998, 0]
    @test eat(5,10,500) == [15, 490]
    @test eat(10,10,10) == [20, 0]
    @test eat(3,10,4) == [7, 0]
    @test eat(3,1000,2) == [5, 0]
    @test eat(0,499,0) == [0, 0]
    @test eat(999,6,5) == [1004, 0]
    @test eat(9,999,7) == [16, 0]
    @test eat(9,999,4) == [13, 0]
    @test eat(500,10,500) == [510, 490]
    @test eat(999,5,2) == [1001, 0]
    @test eat(6,6,6) == [12, 0]
    @test eat(998,10,10) == [1008, 0]
    @test eat(5,10,1000) == [15, 990]
    @test eat(499,1,5) == [500, 4]
    @test eat(1,9,0) == [1, 0]
    @test eat(0,6,7) == [6, 1]
    @test eat(11,6,11) == [17, 5]
    @test eat(11,5,5) == [16, 0]
    @test eat(7,0,10) == [7, 10]
    @test eat(0,7,7) == [7, 0]
    @test eat(0,5,5) == [5, 0]
    @test eat(10,499,500) == [509, 1]
    @test eat(1,499,6) == [7, 0]
    @test eat(6,1,7) == [7, 6]
    @test eat(7,0,499) == [7, 499]
    @test eat(999,7,10) == [1006, 3]
    @test eat(0,999,4) == [4, 0]
    @test eat(1000,4,998) == [1004, 994]
    @test eat(2,3,1) == [3, 0]
    @test eat(999,2,998) == [1001, 996]
    @test eat(1,10,1) == [2, 0]
    @test eat(999,999,11) == [1010, 0]
    @test eat(1000,0,0) == [1000, 0]
    @test eat(6,5,1000) == [11, 995]
    @test eat(11,11,6) == [17, 0]
    @test eat(3,499,500) == [502, 1]
    @test eat(0,500,6) == [6, 0]
    @test eat(0,1000,1000) == [1000, 0]
    @test eat(1000,0,1000) == [1000, 1000]
    @test eat(500,500,800) == [1000, 300]
    @test eat(500,500,499) == [999, 0]
    @test eat(1000,1000,500) == [1500, 0]
    @test eat(1000,0,500) == [1000, 500]
    @test eat(250,750,300) == [550, 0]
    @test eat(800,300,600) == [1100, 300]
    @test eat(300,700,200) == [500, 0]
    @test eat(200,0,1) == [200, 1]
    @test eat(300,1000,600) == [900, 0]
    @test eat(500,801,801) == [1301, 0]
    @test eat(800,0,600) == [800, 600]
    @test eat(800,0,599) == [800, 599]
    @test eat(800,601,600) == [1400, 0]
    @test eat(800,700,600) == [1400, 0]
    @test eat(801,500,499) == [1300, 0]
    @test eat(800,1,600) == [801, 599]
    @test eat(800,601,599) == [1399, 0]
    @test eat(1000,801,0) == [1000, 0]
    @test eat(500,501,500) == [1000, 0]
    @test eat(501,501,501) == [1002, 0]
    @test eat(599,501,501) == [1100, 0]
    @test eat(801,499,801) == [1300, 302]
    @test eat(501,500,700) == [1001, 200]
    @test eat(800,700,201) == [1001, 0]
    @test eat(499,800,499) == [998, 0]
    @test eat(1000,500,500) == [1500, 0]
    @test eat(1000,500,1000) == [1500, 500]
    @test eat(500,500,498) == [998, 0]
    @test eat(601,600,499) == [1100, 0]
    @test eat(1000,1000,1000) == [2000, 0]
    @test eat(250,250,600) == [500, 350]
    @test eat(1,601,600) == [601, 0]
    @test eat(1000,801,801) == [1801, 0]
    @test eat(498,1000,1000) == [1498, 0]
    @test eat(250,201,600) == [451, 399]
    @test eat(801,801,801) == [1602, 0]
    @test eat(200,1,1) == [201, 0]
    @test eat(599,501,600) == [1100, 99]
    @test eat(800,202,201) == [1001, 0]
    @test eat(800,600,700) == [1400, 100]
    @test eat(700,800,600) == [1300, 0]
    @test eat(499,800,500) == [999, 0]
    @test eat(1000,0,1) == [1000, 1]
    @test eat(800,801,500) == [1300, 0]
    @test eat(800,600,800) == [1400, 200]
    @test eat(501,749,750) == [1250, 1]
    @test eat(600,749,750) == [1349, 1]
    @test eat(500,800,749) == [1249, 0]
    @test eat(501,501,500) == [1001, 0]
    @test eat(501,502,499) == [1000, 0]
    @test eat(799,601,600) == [1399, 0]
    @test eat(501,749,0) == [501, 0]
    @test eat(600,499,601) == [1099, 102]
    @test eat(600,749,0) == [600, 0]
    @test eat(0,600,499) == [499, 0]
    @test eat(300,1000,300) == [600, 0]
    @test eat(1,801,599) == [600, 0]
    @test eat(1,599,599) == [600, 0]
    @test eat(1000,800,801) == [1800, 1]
    @test eat(601,601,499) == [1100, 0]
    @test eat(600,1000,600) == [1200, 0]
    @test eat(1000,1000,998) == [1998, 0]
    @test eat(700,800,500) == [1200, 0]
    @test eat(750,750,300) == [1050, 0]
    @test eat(800,202,250) == [1002, 48]
    @test eat(800,300,800) == [1100, 500]
    @test eat(201,750,1000) == [951, 250]
    @test eat(249,700,250) == [499, 0]
    @test eat(700,749,600) == [1300, 0]
    @test eat(499,500,500) == [999, 0]
    @test eat(600,601,749) == [1201, 148]
    @test eat(601,600,601) == [1201, 1]
    @test eat(601,601,601) == [1202, 0]
    @test eat(501,748,0) == [501, 0]
    @test eat(300,200,300) == [500, 100]
    @test eat(799,1,600) == [800, 599]
    @test eat(1000,997,998) == [1997, 1]
    @test eat(499,700,499) == [998, 0]
    @test eat(1,600,599) == [600, 0]
    @test eat(599,600,601) == [1199, 1]
    @test eat(500,748,501) == [1001, 0]
    @test eat(601,997,501) == [1102, 0]
    @test eat(600,800,503) == [1103, 0]
    @test eat(799,600,499) == [1298, 0]
    @test eat(500,500,998) == [1000, 498]
    @test eat(800,801,700) == [1500, 0]
    @test eat(501,799,502) == [1003, 0]
    @test eat(700,249,699) == [949, 450]
    @test eat(499,499,800) == [998, 301]
    @test eat(599,200,601) == [799, 401]
    @test eat(801,600,599) == [1400, 0]
    @test eat(0,700,600) == [600, 0]
    @test eat(503,1,1) == [504, 0]
    @test eat(700,501,748) == [1201, 247]
    @test eat(202,0,1000) == [202, 1000]
    @test eat(500,500,750) == [1000, 250]
    @test eat(1,801,500) == [501, 0]
    @test eat(251,250,200) == [451, 0]
    @test eat(800,500,498) == [1298, 0]
    @test eat(801,800,500) == [1301, 0]
    @test eat(800,201,201) == [1001, 0]
    @test eat(750,1000,600) == [1350, 0]
    @test eat(498,599,600) == [1097, 1]
    @test eat(1,600,1) == [2, 0]
    @test eat(1000,800,0) == [1000, 0]
    @test eat(500,1,504) == [501, 503]
    @test eat(498,599,498) == [996, 0]
    @test eat(749,700,600) == [1349, 0]
    @test eat(1000,1,600) == [1001, 599]
    @test eat(601,599,499) == [1100, 0]
    @test eat(201,801,801) == [1002, 0]
    @test eat(748,0,501) == [748, 501]
    @test eat(251,499,498) == [749, 0]
    @test eat(1000,999,1000) == [1999, 1]
    @test eat(498,499,800) == [997, 301]
    @test eat(801,1,1000) == [802, 999]
    @test eat(0,999,999) == [999, 0]
    @test eat(500,498,500) == [998, 2]
    @test eat(800,500,799) == [1300, 299]
    @test eat(998,801,998) == [1799, 197]
    @test eat(497,1000,1000) == [1497, 0]
    @test eat(300,800,800) == [1100, 0]
    @test eat(749,1,503) == [750, 502]
    @test eat(801,1,1) == [802, 0]
    @test eat(0,801,599) == [599, 0]
    @test eat(200,0,503) == [200, 503]
    @test eat(600,700,700) == [1300, 0]
    @test eat(998,499,500) == [1497, 1]
    @test eat(748,0,0) == [748, 0]
    @test eat(1000,500,504) == [1500, 4]
    @test eat(504,249,599) == [753, 350]
    @test eat(700,800,1) == [701, 0]
    @test eat(502,501,500) == [1002, 0]
    @test eat(0,1,501) == [1, 500]
    @test eat(801,1,498) == [802, 497]
    @test eat(1,999,599) == [600, 0]
    @test eat(700,499,500) == [1199, 1]
    @test eat(750,1000,201) == [951, 0]
    @test eat(999,502,999) == [1501, 497]
    @test eat(600,999,700) == [1300, 0]
    @test eat(600,601,599) == [1199, 0]
    @test eat(1,802,599) == [600, 0]
    @test eat(0,600,800) == [600, 200]
    @test eat(501,800,749) == [1250, 0]
    @test eat(601,997,601) == [1202, 0]
    @test eat(800,600,499) == [1299, 0]
    @test eat(800,500,500) == [1300, 0]
    @test eat(801,498,801) == [1299, 303]
    @test eat(998,601,601) == [1599, 0]
    @test eat(250,249,250) == [499, 1]
    @test eat(997,601,601) == [1598, 0]
    @test eat(800,800,800) == [1600, 0]
    @test eat(800,201,800) == [1001, 599]
    @test eat(801,201,201) == [1002, 0]
    @test eat(501,500,501) == [1001, 1]
    @test eat(749,2,2) == [751, 0]
    @test eat(599,749,1000) == [1348, 251]
    @test eat(250,250,250) == [500, 0]
    @test eat(600,500,500) == [1100, 0]
    @test eat(600,1000,1000) == [1600, 0]
    @test eat(498,499,599) == [997, 100]
    @test eat(999,1000,1000) == [1999, 0]
    @test eat(1000,1,1000) == [1001, 999]
    @test eat(299,249,600) == [548, 351]
    @test eat(498,800,799) == [1297, 0]
    @test eat(749,699,749) == [1448, 50]
    @test eat(799,800,800) == [1599, 0]
    @test eat(750,600,750) == [1350, 150]
    @test eat(602,600,602) == [1202, 2]
    @test eat(500,500,251) == [751, 0]
    @test eat(499,501,700) == [1000, 199]
    @test eat(750,1000,750) == [1500, 0]
    @test eat(750,801,602) == [1352, 0]
    @test eat(0,800,0) == [0, 0]
    @test eat(499,498,499) == [997, 1]
    @test eat(500,504,504) == [1004, 0]
    @test eat(500,501,501) == [1001, 0]
    @test eat(501,500,499) == [1000, 0]
    @test eat(599,503,502) == [1101, 0]
    @test eat(498,499,499) == [997, 0]
    @test eat(1000,500,501) == [1500, 1]
    @test eat(1,1,600) == [2, 599]
    @test eat(202,251,501) == [453, 250]
    @test eat(601,601,600) == [1201, 0]
    @test eat(799,2,800) == [801, 798]
    @test eat(999,1000,0) == [999, 0]
    @test eat(2,997,997) == [999, 0]
    @test eat(249,997,498) == [747, 0]
    @test eat(999,799,799) == [1798, 0]
    @test eat(801,800,499) == [1300, 0]
    @test eat(250,599,801) == [849, 202]
    @test eat(201,201,201) == [402, 0]
    @test eat(498,504,800) == [1002, 296]
    @test eat(747,699,601) == [1348, 0]
    @test eat(1000,1000,997) == [1997, 0]
    @test eat(998,499,601) == [1497, 102]
    @test eat(500,501,498) == [998, 0]
    @test eat(0,499,599) == [499, 100]
    @test eat(1000,999,799) == [1799, 0]
    @test eat(602,601,749) == [1203, 148]
    @test eat(498,300,499) == [798, 199]
    @test eat(2,200,503) == [202, 303]
    @test eat(251,800,202) == [453, 0]
    @test eat(499,601,499) == [998, 0]
    @test eat(0,1000,999) == [999, 0]
    @test eat(800,801,1) == [801, 0]
    @test eat(0,500,1000) == [500, 500]
    @test eat(500,497,500) == [997, 3]
    @test eat(601,802,601) == [1202, 0]
    @test eat(0,801,801) == [801, 0]
    @test eat(1,499,498) == [499, 0]
    @test eat(501,502,501) == [1002, 0]
    @test eat(996,500,601) == [1496, 101]
    @test eat(800,602,600) == [1400, 0]
    @test eat(250,801,599) == [849, 0]
    @test eat(800,300,802) == [1100, 502]
    @test eat(502,503,500) == [1002, 0]
    @test eat(1,600,600) == [601, 0]
    @test eat(198,0,996) == [198, 996]
    @test eat(602,602,699) == [1204, 97]
    @test eat(500,250,499) == [750, 249]
    @test eat(602,500,502) == [1102, 2]
    @test eat(0,600,0) == [0, 0]
    @test eat(2,503,503) == [505, 0]
    @test eat(202,750,1000) == [952, 250]
    @test eat(504,1000,1000) == [1504, 0]
    @test eat(499,1000,700) == [1199, 0]
    @test eat(802,801,998) == [1603, 197]
    @test eat(499,499,500) == [998, 1]
    @test eat(1000,1,250) == [1001, 249]
    @test eat(601,202,499) == [803, 297]
    @test eat(799,250,250) == [1049, 0]
    @test eat(501,800,750) == [1251, 0]
    @test eat(499,499,299) == [798, 0]
    @test eat(599,1000,600) == [1199, 0]
    @test eat(2,202,497) == [204, 295]
    @test eat(499,503,499) == [998, 0]
    @test eat(201,1000,201) == [402, 0]
    @test eat(299,800,800) == [1099, 0]
    @test eat(750,802,749) == [1499, 0]
    @test eat(251,251,200) == [451, 0]
    @test eat(748,801,801) == [1549, 0]
    @test eat(300,200,200) == [500, 0]
    @test eat(500,748,499) == [999, 0]
    @test eat(251,800,600) == [851, 0]
    @test eat(601,300,802) == [901, 502]
    @test eat(802,499,800) == [1301, 301]
    @test eat(700,1000,1000) == [1700, 0]
    @test eat(202,201,202) == [403, 1]
    @test eat(1,1000,599) == [600, 0]
    @test eat(601,250,499) == [851, 249]
    @test eat(501,799,748) == [1249, 0]
    @test eat(200,1000,500) == [700, 0]
    @test eat(1,300,600) == [301, 300]
    @test eat(802,802,602) == [1404, 0]
    @test eat(500,503,504) == [1003, 1]
    @test eat(750,501,750) == [1251, 249]
    @test eat(251,202,1000) == [453, 798]
    @test eat(299,501,799) == [800, 298]
    @test eat(800,800,497) == [1297, 0]
    @test eat(700,201,201) == [901, 0]
    @test eat(502,249,250) == [751, 1]
    @test eat(999,504,0) == [999, 0]
    @test eat(299,503,502) == [801, 0]
    @test eat(747,499,499) == [1246, 0]
    @test eat(1,800,500) == [501, 0]
    @test eat(200,0,200) == [200, 200]
    @test eat(0,999,0) == [0, 0]
    @test eat(202,499,800) == [701, 301]
    @test eat(800,501,498) == [1298, 0]
    @test eat(600,500,499) == [1099, 0]
    @test eat(200,750,1000) == [950, 250]
    @test eat(500,999,799) == [1299, 0]
    @test eat(749,600,600) == [1349, 0]
    @test eat(501,749,501) == [1002, 0]
    @test eat(800,800,200) == [1000, 0]
    @test eat(700,699,700) == [1399, 1]
    @test eat(250,249,1000) == [499, 751]
    @test eat(999,502,700) == [1501, 198]
    @test eat(498,498,599) == [996, 101]
    @test eat(500,500,503) == [1000, 3]
    @test eat(801,201,200) == [1001, 0]
    @test eat(800,801,800) == [1600, 0]
    @test eat(598,499,599) == [1097, 100]
    @test eat(750,999,750) == [1500, 0]
    @test eat(497,750,999) == [1247, 249]
    @test eat(999,499,500) == [1498, 1]
    @test eat(599,600,599) == [1198, 0]
    @test eat(500,500,253) == [753, 0]
    @test eat(700,701,1000) == [1401, 299]
    @test eat(201,800,602) == [803, 0]
    @test eat(201,499,251) == [452, 0]
    @test eat(501,999,501) == [1002, 0]
    @test eat(997,997,2) == [999, 0]
    @test eat(1000,502,501) == [1501, 0]
    @test eat(501,502,800) == [1003, 298]
    @test eat(750,750,750) == [1500, 0]
    @test eat(748,0,999) == [748, 999]
    @test eat(298,501,799) == [799, 298]
    @test eat(599,0,999) == [599, 999]
    @test eat(501,600,501) == [1002, 0]
    @test eat(299,498,501) == [797, 3]
    @test eat(1,802,802) == [803, 0]
    @test eat(1000,1000,700) == [1700, 0]
    @test eat(599,501,599) == [1100, 98]
    @test eat(501,500,500) == [1001, 0]
    @test eat(1,501,500) == [501, 0]
    @test eat(801,800,602) == [1403, 0]
    @test eat(600,602,602) == [1202, 0]
    @test eat(748,801,748) == [1496, 0]
    @test eat(500,699,699) == [1199, 0]
    @test eat(202,501,501) == [703, 0]
    @test eat(600,603,2) == [602, 0]
    @test eat(997,998,998) == [1995, 0]
    @test eat(801,602,602) == [1403, 0]
    @test eat(249,998,250) == [499, 0]
    @test eat(499,250,250) == [749, 0]
    @test eat(499,198,749) == [697, 551]
    @test eat(602,799,602) == [1204, 0]
    @test eat(601,600,298) == [899, 0]
    @test eat(499,598,599) == [1097, 1]
    @test eat(498,498,499) == [996, 1]
    @test eat(0,497,504) == [497, 7]
    @test eat(200,748,1) == [201, 0]
    @test eat(497,504,497) == [994, 0]
    @test eat(501,0,1) == [501, 1]
    @test eat(499,250,251) == [749, 1]
    @test eat(1000,999,999) == [1999, 0]
    @test eat(1000,999,500) == [1500, 0]
    @test eat(801,601,599) == [1400, 0]
    @test eat(601,600,599) == [1200, 0]
    @test eat(1,500,1) == [2, 0]
    @test eat(998,502,700) == [1500, 198]
    @test eat(200,1,504) == [201, 503]
    @test eat(749,202,202) == [951, 0]
    @test eat(997,500,500) == [1497, 0]
    @test eat(503,501,500) == [1003, 0]
    @test eat(1,1000,200) == [201, 0]
    @test eat(750,599,751) == [1349, 152]
    @test eat(1,500,503) == [501, 3]
    @test eat(498,750,498) == [996, 0]
    @test eat(800,2,1) == [801, 0]
    @test eat(599,600,600) == [1199, 0]
    @test eat(699,502,300) == [999, 0]
    @test eat(998,999,999) == [1997, 0]
    @test eat(500,801,499) == [999, 0]
    @test eat(198,600,498) == [696, 0]
    @test eat(200,748,200) == [400, 0]
    @test eat(499,801,299) == [798, 0]
    @test eat(0,501,501) == [501, 0]
    @test eat(200,201,201) == [401, 0]
    @test eat(2,801,1) == [3, 0]
    @test eat(700,803,0) == [700, 0]
    @test eat(501,253,501) == [754, 248]
    @test eat(500,501,799) == [1001, 298]
    @test eat(1,699,1) == [2, 0]
    @test eat(503,250,1) == [504, 0]
    @test eat(701,501,748) == [1202, 247]
    @test eat(499,600,600) == [1099, 0]
    @test eat(602,602,602) == [1204, 0]
    @test eat(0,600,801) == [600, 201]
    @test eat(600,599,803) == [1199, 204]
    @test eat(601,601,750) == [1202, 149]
    @test eat(700,701,600) == [1300, 0]
    @test eat(201,501,749) == [702, 248]
    @test eat(503,801,998) == [1304, 197]
    @test eat(499,299,299) == [798, 0]
    @test eat(300,800,803) == [1100, 3]
    @test eat(801,802,801) == [1602, 0]
    @test eat(499,499,499) == [998, 0]
    @test eat(499,700,498) == [997, 0]
    @test eat(598,599,502) == [1100, 0]
    @test eat(601,1,751) == [602, 750]
    @test eat(802,801,300) == [1102, 0]
    @test eat(799,800,600) == [1399, 0]
    @test eat(500,503,503) == [1003, 0]
    @test eat(1,1000,1) == [2, 0]
    @test eat(600,801,299) == [899, 0]
    @test eat(997,601,802) == [1598, 201]
    @test eat(800,801,498) == [1298, 0]
    @test eat(201,799,201) == [402, 0]
    @test eat(0,200,801) == [200, 601]
    @test eat(1000,997,997) == [1997, 0]
    @test eat(750,751,750) == [1500, 0]
    @test eat(500,0,500) == [500, 500]
    @test eat(250,500,500) == [750, 0]
    @test eat(799,747,799) == [1546, 52]
    @test eat(501,599,501) == [1002, 0]
    @test eat(602,996,602) == [1204, 0]
    @test eat(601,599,0) == [601, 0]
    @test eat(502,700,700) == [1202, 0]
    @test eat(800,1,800) == [801, 799]
    @test eat(199,200,748) == [399, 548]
    @test eat(1000,498,498) == [1498, 0]
    @test eat(298,1000,600) == [898, 0]
    @test eat(499,500,700) == [999, 200]
    @test eat(200,202,499) == [402, 297]
    @test eat(998,251,998) == [1249, 747]
    @test eat(700,249,700) == [949, 451]
    @test eat(599,599,599) == [1198, 0]
    @test eat(497,1000,999) == [1496, 0]
    @test eat(503,998,801) == [1304, 0]
    @test eat(799,601,599) == [1398, 0]
    @test eat(500,250,750) == [750, 500]
    @test eat(599,251,500) == [850, 249]
    @test eat(201,802,599) == [800, 0]
    @test eat(504,800,502) == [1006, 0]
    @test eat(200,200,199) == [399, 0]
    @test eat(802,600,801) == [1402, 201]
    @test eat(200,800,497) == [697, 0]
    @test eat(1,1000,0) == [1, 0]
    @test eat(799,998,999) == [1797, 1]
    @test eat(801,201,603) == [1002, 402]
    @test eat(500,251,501) == [751, 250]
    @test eat(253,498,504) == [751, 6]
    @test eat(500,997,251) == [751, 0]
    @test eat(799,800,603) == [1402, 0]
    @test eat(198,1,3) == [199, 2]
    @test eat(250,250,248) == [498, 0]
    @test eat(997,751,999) == [1748, 248]
    @test eat(600,503,502) == [1102, 0]
    @test eat(299,202,600) == [501, 398]
    @test eat(503,250,502) == [753, 252]
    @test eat(801,801,253) == [1054, 0]
    @test eat(500,1000,500) == [1000, 0]
    @test eat(248,249,701) == [497, 452]
    @test eat(599,803,600) == [1199, 0]
    @test eat(1000,201,201) == [1201, 0]
    @test eat(802,500,503) == [1302, 3]
    @test eat(499,299,601) == [798, 302]
    @test eat(2,1000,502) == [504, 0]
    @test eat(498,499,498) == [996, 0]
    @test eat(199,498,600) == [697, 102]
    @test eat(499,599,599) == [1098, 0]
    @test eat(0,803,800) == [800, 0]
    @test eat(199,750,1000) == [949, 250]
    @test eat(801,500,498) == [1299, 0]
    @test eat(498,498,498) == [996, 0]
    @test eat(201,202,1) == [202, 0]
    @test eat(202,1000,497) == [699, 0]
    @test eat(2,200,750) == [202, 550]
    @test eat(1000,249,999) == [1249, 750]
    @test eat(749,749,749) == [1498, 0]
    @test eat(800,600,250) == [1050, 0]
    @test eat(499,299,603) == [798, 304]
    @test eat(501,748,748) == [1249, 0]
    @test eat(501,502,748) == [1003, 246]
    @test eat(300,601,300) == [600, 0]
    @test eat(600,600,600) == [1200, 0]
    @test eat(599,701,802) == [1300, 101]
    @test eat(0,200,800) == [200, 600]
    @test eat(700,700,700) == [1400, 0]
    @test eat(999,601,599) == [1598, 0]
    @test eat(497,200,999) == [697, 799]
    @test eat(1000,699,502) == [1502, 0]
    @test eat(501,599,800) == [1100, 201]
    @test eat(800,600,600) == [1400, 0]
    @test eat(499,498,700) == [997, 202]
    @test eat(501,996,502) == [1003, 0]
    @test eat(601,802,198) == [799, 0]
    @test eat(749,500,500) == [1249, 0]
    @test eat(1000,200,1) == [1001, 0]
    @test eat(502,1000,1000) == [1502, 0]
    @test eat(801,997,599) == [1400, 0]
    @test eat(502,500,503) == [1002, 3]
    @test eat(249,802,249) == [498, 0]
    @test eat(498,0,800) == [498, 800]
    @test eat(996,801,800) == [1796, 0]
    @test eat(502,701,701) == [1203, 0]
    @test eat(499,298,251) == [750, 0]
    @test eat(999,801,998) == [1800, 197]
    @test eat(748,253,799) == [1001, 546]
    @test eat(250,251,250) == [500, 0]
    @test eat(500,499,0) == [500, 0]
    @test eat(996,499,499) == [1495, 0]
    @test eat(749,748,249) == [998, 0]
    @test eat(601,1000,699) == [1300, 0]
    @test eat(499,598,499) == [998, 0]
    @test eat(202,502,501) == [703, 0]
    @test eat(600,299,751) == [899, 452]
    @test eat(251,500,202) == [453, 0]
    @test eat(700,750,300) == [1000, 0]
    @test eat(253,600,700) == [853, 100]
    @test eat(600,601,2) == [602, 0]
    @test eat(799,250,799) == [1049, 549]
    @test eat(600,601,249) == [849, 0]
    @test eat(600,299,299) == [899, 0]
    @test eat(251,1000,251) == [502, 0]
    @test eat(504,751,751) == [1255, 0]
    @test eat(498,198,749) == [696, 551]
    @test eat(799,250,1) == [800, 0]
    @test eat(201,250,503) == [451, 253]
    @test eat(501,502,600) == [1003, 98]
    @test eat(997,998,999) == [1995, 1]
    @test eat(600,202,2) == [602, 0]
    @test eat(499,801,501) == [1000, 0]
    @test eat(699,802,801) == [1500, 0]
    @test eat(1,599,1) == [2, 0]
    @test eat(499,599,3) == [502, 0]
    @test eat(799,799,799) == [1598, 0]
    @test eat(600,201,201) == [801, 0]
    @test eat(1000,600,600) == [1600, 0]
    @test eat(0,1000,0) == [0, 0]
    @test eat(1000,1000,0) == [1000, 0]
    @test eat(0,0,1000) == [0, 1000]
    @test eat(300,600,600) == [900, 0]
    @test eat(500,1000,0) == [500, 0]
    @test eat(600,700,600) == [1200, 0]
    @test eat(250,750,250) == [500, 0]
    @test eat(299,701,200) == [499, 0]
    @test eat(1000,500,800) == [1500, 300]
    @test eat(700,702,600) == [1300, 0]
    @test eat(200,500,498) == [698, 0]
    @test eat(299,499,800) == [798, 301]
    @test eat(800,300,299) == [1099, 0]
    @test eat(200,498,498) == [698, 0]
    @test eat(500,299,800) == [799, 501]
    @test eat(999,1000,702) == [1701, 0]
    @test eat(301,600,600) == [901, 0]
    @test eat(1000,800,800) == [1800, 0]
    @test eat(1000,600,0) == [1000, 0]
    @test eat(800,200,800) == [1000, 600]
    @test eat(800,300,200) == [1000, 0]
    @test eat(800,300,250) == [1050, 0]
    @test eat(700,499,600) == [1199, 101]
    @test eat(800,701,200) == [1000, 0]
    @test eat(500,800,499) == [999, 0]
    @test eat(498,500,700) == [998, 200]
    @test eat(199,800,500) == [699, 0]
    @test eat(250,750,499) == [749, 0]
    @test eat(299,499,300) == [599, 0]
    @test eat(499,499,801) == [998, 302]
    @test eat(498,497,200) == [698, 0]
    @test eat(500,300,300) == [800, 0]
    @test eat(299,499,299) == [598, 0]
    @test eat(200,500,497) == [697, 0]
    @test eat(700,701,750) == [1401, 49]
    @test eat(750,250,251) == [1000, 1]
    @test eat(1000,200,1000) == [1200, 800]
    @test eat(1000,599,500) == [1500, 0]
    @test eat(799,499,499) == [1298, 0]
    @test eat(251,300,199) == [450, 0]
    @test eat(800,500,800) == [1300, 300]
    @test eat(299,300,300) == [599, 0]
    @test eat(300,200,800) == [500, 600]
    @test eat(497,200,497) == [697, 297]
    @test eat(200,800,800) == [1000, 0]
    @test eat(501,299,800) == [800, 501]
    @test eat(199,999,999) == [1198, 0]
    @test eat(300,600,601) == [900, 1]
    @test eat(499,499,799) == [998, 300]
    @test eat(600,800,600) == [1200, 0]
    @test eat(200,500,1000) == [700, 500]
    @test eat(500,599,500) == [1000, 0]
    @test eat(999,0,1000) == [999, 1000]
    @test eat(199,299,299) == [498, 0]
    @test eat(700,702,801) == [1402, 99]
    @test eat(800,497,702) == [1297, 205]
    @test eat(750,298,299) == [1048, 1]
    @test eat(250,499,499) == [749, 0]
    @test eat(701,1000,700) == [1401, 0]
    @test eat(500,800,700) == [1200, 0]
    @test eat(600,599,600) == [1199, 1]
    @test eat(500,250,498) == [750, 248]
    @test eat(799,499,799) == [1298, 300]
    @test eat(200,199,1000) == [399, 801]
    @test eat(499,800,800) == [1299, 0]
    @test eat(200,497,200) == [400, 0]
    @test eat(199,298,299) == [497, 1]
    @test eat(199,1000,0) == [199, 0]
    @test eat(199,500,700) == [699, 200]
    @test eat(1000,600,498) == [1498, 0]
    @test eat(599,499,800) == [1098, 301]
    @test eat(499,501,499) == [998, 0]
    @test eat(299,1000,0) == [299, 0]
    @test eat(300,300,300) == [600, 0]
    @test eat(299,701,599) == [898, 0]
    @test eat(199,198,199) == [397, 1]
    @test eat(501,496,200) == [701, 0]
    @test eat(801,750,498) == [1299, 0]
    @test eat(251,0,0) == [251, 0]
    @test eat(500,999,999) == [1499, 0]
    @test eat(999,999,702) == [1701, 0]
    @test eat(200,199,200) == [399, 1]
    @test eat(999,701,700) == [1699, 0]
    @test eat(799,300,800) == [1099, 500]
    @test eat(700,701,700) == [1400, 0]
    @test eat(500,499,499) == [999, 0]
    @test eat(601,1000,800) == [1401, 0]
    @test eat(801,200,801) == [1001, 601]
    @test eat(999,599,500) == [1499, 0]
    @test eat(600,198,799) == [798, 601]
    @test eat(1000,1000,495) == [1495, 0]
    @test eat(799,199,500) == [998, 301]
    @test eat(800,301,600) == [1101, 299]
    @test eat(500,301,500) == [801, 199]
    @test eat(298,800,298) == [596, 0]
    @test eat(800,200,700) == [1000, 500]
    @test eat(501,799,799) == [1300, 0]
    @test eat(298,800,599) == [897, 0]
    @test eat(251,300,0) == [251, 0]
    @test eat(1000,199,251) == [1199, 52]
    @test eat(498,1000,799) == [1297, 0]
    @test eat(999,702,700) == [1699, 0]
    @test eat(300,1000,1000) == [1300, 0]
    @test eat(252,300,0) == [252, 0]
    @test eat(500,1000,799) == [1299, 0]
    @test eat(300,301,300) == [600, 0]
    @test eat(500,1000,199) == [699, 0]
    @test eat(702,800,800) == [1502, 0]
    @test eat(500,299,300) == [799, 1]
    @test eat(701,700,801) == [1401, 101]
    @test eat(999,600,600) == [1599, 0]
    @test eat(0,601,498) == [498, 0]
    @test eat(299,1000,1) == [300, 0]
    @test eat(502,701,599) == [1101, 0]
    @test eat(500,801,800) == [1300, 0]
    @test eat(800,500,801) == [1300, 301]
    @test eat(1000,799,500) == [1500, 0]
    @test eat(199,200,199) == [398, 0]
    @test eat(199,0,199) == [199, 199]
    @test eat(801,702,801) == [1503, 99]
    @test eat(999,600,999) == [1599, 399]
    @test eat(199,749,499) == [698, 0]
    @test eat(301,300,301) == [601, 1]
    @test eat(700,298,702) == [998, 404]
    @test eat(300,300,502) == [600, 202]
    @test eat(801,703,800) == [1504, 97]
    @test eat(200,199,497) == [399, 298]
    @test eat(749,299,800) == [1048, 501]
    @test eat(250,500,499) == [749, 0]
    @test eat(501,703,500) == [1001, 0]
    @test eat(702,1000,1000) == [1702, 0]
    @test eat(800,199,800) == [999, 601]
    @test eat(700,600,600) == [1300, 0]
    @test eat(600,599,599) == [1199, 0]
    @test eat(999,999,1000) == [1998, 1]
    @test eat(1000,200,799) == [1200, 599]
    @test eat(999,800,750) == [1749, 0]
    @test eat(299,298,701) == [597, 403]
    @test eat(200,301,801) == [501, 500]
    @test eat(502,500,502) == [1002, 2]
    @test eat(250,500,498) == [748, 0]
    @test eat(199,198,198) == [397, 0]
    @test eat(800,199,250) == [999, 51]
    @test eat(252,300,299) == [551, 0]
    @test eat(701,250,700) == [951, 450]
    @test eat(500,499,800) == [999, 301]
    @test eat(0,0,500) == [0, 500]
    @test eat(250,499,198) == [448, 0]
    @test eat(300,599,300) == [600, 0]
    @test eat(499,703,499) == [998, 0]
    @test eat(499,801,999) == [1300, 198]
    @test eat(499,500,499) == [998, 0]
    @test eat(800,300,497) == [1100, 197]
    @test eat(500,299,801) == [799, 502]
    @test eat(999,200,999) == [1199, 799]
    @test eat(1000,499,499) == [1499, 0]
    @test eat(201,200,799) == [401, 599]
    @test eat(199,601,500) == [699, 0]
    @test eat(600,1000,0) == [600, 0]
    @test eat(201,200,499) == [401, 299]
    @test eat(1000,199,298) == [1199, 99]
    @test eat(0,200,0) == [0, 0]
    @test eat(252,300,253) == [505, 0]
    @test eat(300,0,200) == [300, 200]
    @test eat(200,499,201) == [401, 0]
    @test eat(1000,199,499) == [1199, 300]
    @test eat(301,0,500) == [301, 500]
    @test eat(300,800,300) == [600, 0]
    @test eat(1000,749,1000) == [1749, 251]
    @test eat(599,500,500) == [1099, 0]
    @test eat(251,800,800) == [1051, 0]
    @test eat(800,496,702) == [1296, 206]
    @test eat(199,601,199) == [398, 0]
    @test eat(298,496,298) == [596, 0]
    @test eat(299,300,0) == [299, 0]
    @test eat(201,499,799) == [700, 300]
    @test eat(700,500,599) == [1200, 99]
    @test eat(501,802,801) == [1302, 0]
    @test eat(750,249,251) == [999, 2]
    @test eat(497,298,750) == [795, 452]
    @test eat(503,701,599) == [1102, 0]
    @test eat(500,799,500) == [1000, 0]
    @test eat(500,599,599) == [1099, 0]
    @test eat(504,250,504) == [754, 254]
    @test eat(601,299,1) == [602, 0]
    @test eat(602,500,601) == [1102, 101]
    @test eat(502,502,502) == [1004, 0]
    @test eat(300,701,700) == [1000, 0]
    @test eat(299,799,500) == [799, 0]
    @test eat(198,198,198) == [396, 0]
    @test eat(504,200,500) == [704, 300]
    @test eat(502,0,0) == [502, 0]
    @test eat(600,699,600) == [1200, 0]
    @test eat(600,700,602) == [1202, 0]
    @test eat(301,499,301) == [602, 0]
    @test eat(200,1000,200) == [400, 0]
    @test eat(200,500,299) == [499, 0]
    @test eat(500,499,500) == [999, 1]
    @test eat(499,301,499) == [800, 198]
    @test eat(500,298,800) == [798, 502]
    @test eat(500,800,800) == [1300, 0]
    @test eat(701,600,700) == [1301, 100]
    @test eat(999,500,799) == [1499, 299]
    @test eat(300,199,198) == [498, 0]
    @test eat(200,201,199) == [399, 0]
    @test eat(199,250,499) == [449, 249]
    @test eat(702,749,701) == [1403, 0]
    @test eat(600,999,999) == [1599, 0]
    @test eat(801,500,801) == [1301, 301]
    @test eat(299,599,299) == [598, 0]
    @test eat(200,800,799) == [999, 0]
    @test eat(799,198,301) == [997, 103]
    @test eat(600,700,699) == [1299, 0]
    @test eat(1000,199,300) == [1199, 101]
    @test eat(199,496,599) == [695, 103]
    @test eat(599,499,499) == [1098, 0]
    @test eat(502,500,500) == [1002, 0]
    @test eat(1000,199,999) == [1199, 800]
    @test eat(502,498,498) == [1000, 0]
    @test eat(495,500,1000) == [995, 500]
    @test eat(299,299,299) == [598, 0]
    @test eat(299,298,1) == [300, 0]
    @test eat(300,600,599) == [899, 0]
    @test eat(503,503,503) == [1006, 0]
    @test eat(505,504,504) == [1009, 0]
    @test eat(497,253,498) == [750, 245]
    @test eat(600,600,699) == [1200, 99]
    @test eat(501,802,701) == [1202, 0]
    @test eat(250,200,999) == [450, 799]
    @test eat(1,300,0) == [1, 0]
    @test eat(800,198,301) == [998, 103]
    @test eat(701,702,1000) == [1403, 298]
    @test eat(301,600,599) == [900, 0]
    @test eat(197,498,198) == [395, 0]
    @test eat(499,0,298) == [499, 298]
    @test eat(502,300,300) == [802, 0]
    @test eat(600,699,700) == [1299, 1]
    @test eat(500,498,498) == [998, 0]
    @test eat(999,800,800) == [1799, 0]
    @test eat(199,499,301) == [500, 0]
    @test eat(999,703,601) == [1600, 0]
    @test eat(301,0,1000) == [301, 1000]
    @test eat(701,599,197) == [898, 0]
    @test eat(1000,1000,298) == [1298, 0]
    @test eat(252,602,602) == [854, 0]
    @test eat(199,198,699) == [397, 501]
    @test eat(500,701,301) == [801, 0]
    @test eat(602,750,602) == [1204, 0]
    @test eat(799,998,300) == [1099, 0]
    @test eat(500,799,505) == [1005, 0]
    @test eat(497,504,298) == [795, 0]
    @test eat(999,999,601) == [1600, 0]
    @test eat(503,498,700) == [1001, 202]
    @test eat(801,800,800) == [1601, 0]
    @test eat(599,0,598) == [599, 598]
    @test eat(299,499,499) == [798, 0]
    @test eat(500,198,799) == [698, 601]
    @test eat(198,198,599) == [396, 401]
    @test eat(300,251,198) == [498, 0]
    @test eat(201,499,499) == [700, 0]
    @test eat(249,200,302) == [449, 102]
    @test eat(0,800,800) == [800, 0]
    @test eat(299,1,299) == [300, 298]
    @test eat(200,750,496) == [696, 0]
    @test eat(250,300,800) == [550, 500]
    @test eat(748,748,748) == [1496, 0]
    @test eat(298,499,499) == [797, 0]
    @test eat(799,199,199) == [998, 0]
    @test eat(499,201,201) == [700, 0]
    @test eat(301,703,500) == [801, 0]
    @test eat(497,500,700) == [997, 200]
    @test eat(600,599,300) == [900, 0]
    @test eat(599,802,499) == [1098, 0]
    @test eat(299,801,300) == [599, 0]
    @test eat(300,1,200) == [301, 199]
    @test eat(250,500,497) == [747, 0]
    @test eat(1000,799,799) == [1799, 0]
    @test eat(199,500,199) == [398, 0]
    @test eat(200,201,200) == [400, 0]
    @test eat(501,500,801) == [1001, 301]
    @test eat(505,699,700) == [1204, 1]
    @test eat(701,1000,799) == [1500, 0]
    @test eat(599,499,0) == [599, 0]
    @test eat(701,801,701) == [1402, 0]
    @test eat(200,749,499) == [699, 0]
    @test eat(501,701,701) == [1202, 0]
    @test eat(199,750,496) == [695, 0]
    @test eat(252,251,198) == [450, 0]
    @test eat(802,702,801) == [1504, 99]
    @test eat(700,999,702) == [1402, 0]
    @test eat(800,200,801) == [1000, 601]
    @test eat(200,200,252) == [400, 52]
    @test eat(750,498,801) == [1248, 303]
    @test eat(1000,200,300) == [1200, 100]
    @test eat(800,300,799) == [1100, 499]
    @test eat(499,499,198) == [697, 0]
    @test eat(299,298,299) == [597, 1]
    @test eat(298,300,299) == [597, 0]
    @test eat(699,598,599) == [1297, 1]
    @test eat(198,799,799) == [997, 0]
    @test eat(498,802,499) == [997, 0]
    @test eat(253,602,602) == [855, 0]
    @test eat(749,499,198) == [947, 0]
    @test eat(699,700,599) == [1298, 0]
    @test eat(303,500,500) == [803, 0]
    @test eat(999,500,800) == [1499, 300]
    @test eat(301,299,300) == [600, 1]
    @test eat(599,500,501) == [1099, 1]
    @test eat(498,497,496) == [994, 0]
    @test eat(299,0,300) == [299, 300]
    @test eat(200,999,998) == [1198, 0]
    @test eat(251,249,251) == [500, 2]
    @test eat(299,300,301) == [599, 1]
    @test eat(703,701,599) == [1302, 0]
    @test eat(300,201,499) == [501, 298]
    @test eat(502,501,800) == [1003, 299]
    @test eat(199,501,200) == [399, 0]
    @test eat(750,499,198) == [948, 0]
    @test eat(799,249,799) == [1048, 550]
    @test eat(800,748,748) == [1548, 0]
    @test eat(703,701,303) == [1006, 0]
    @test eat(999,249,499) == [1248, 250]
    @test eat(499,253,301) == [752, 48]
    @test eat(600,999,749) == [1349, 0]
    @test eat(0,499,799) == [499, 300]
    @test eat(702,748,1000) == [1450, 252]
    @test eat(999,702,799) == [1701, 97]
    @test eat(0,300,498) == [300, 198]
    @test eat(300,200,799) == [500, 599]
    @test eat(497,497,497) == [994, 0]
    @test eat(251,748,500) == [751, 0]
    @test eat(798,799,799) == [1597, 0]
    @test eat(801,800,799) == [1600, 0]
    @test eat(199,501,199) == [398, 0]
    @test eat(999,0,251) == [999, 251]
    @test eat(701,750,499) == [1200, 0]
    @test eat(504,250,250) == [754, 0]
    @test eat(198,197,198) == [395, 1]
    @test eat(199,499,199) == [398, 0]
    @test eat(998,702,700) == [1698, 0]
    @test eat(801,505,505) == [1306, 0]
    @test eat(699,1000,700) == [1399, 0]
    @test eat(500,0,199) == [500, 199]
    @test eat(750,700,700) == [1450, 0]
    @test eat(798,1000,1000) == [1798, 0]
    @test eat(998,502,801) == [1500, 299]
    @test eat(200,0,505) == [200, 505]
    @test eat(599,497,599) == [1096, 102]
    @test eat(1000,998,800) == [1800, 0]
    @test eat(503,502,702) == [1005, 200]
    @test eat(301,500,500) == [801, 0]
    @test eat(798,801,800) == [1598, 0]
    @test eat(502,501,502) == [1003, 1]
    @test eat(1000,199,199) == [1199, 0]
    @test eat(500,250,600) == [750, 350]
    @test eat(999,299,301) == [1298, 2]
    @test eat(501,500,250) == [751, 0]
    @test eat(702,1000,700) == [1402, 0]
    @test eat(501,499,500) == [1000, 1]
    @test eat(700,600,200) == [900, 0]
    @test eat(799,799,600) == [1399, 0]
    @test eat(298,500,500) == [798, 0]
    @test eat(501,498,199) == [700, 0]
    @test eat(500,800,500) == [1000, 0]
    @test eat(301,999,600) == [901, 0]
    @test eat(496,497,700) == [993, 203]
    @test eat(504,1,200) == [505, 199]
    @test eat(501,303,801) == [804, 498]
    @test eat(299,505,300) == [599, 0]
    @test eat(500,299,500) == [799, 201]
    @test eat(599,500,600) == [1099, 100]
    @test eat(299,600,299) == [598, 0]
end