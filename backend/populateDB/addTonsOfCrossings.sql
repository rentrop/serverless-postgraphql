begin;

-- Add crossings
insert into floods.crossing (id, name, human_address, description, coordinates, geojson) values

(11, 'Low Water Crossing #1', 'address', 'description', ST_MakePoint(-97.774994, 30.390406), ST_AsGeoJSON(ST_MakePoint(-97.774994, 30.390406))),
(12, 'Low Water Crossing #2', 'address', 'description', ST_MakePoint(-97.778450, 30.391405), ST_AsGeoJSON(ST_MakePoint(-97.778450, 30.391405))),
(13, 'Low Water Crossing #3', 'address', 'description', ST_MakePoint(-97.778900, 30.397104), ST_AsGeoJSON(ST_MakePoint(-97.778900, 30.397104))),
(14, 'Low Water Crossing #4', 'address', 'description', ST_MakePoint(-97.783081, 30.399363), ST_AsGeoJSON(ST_MakePoint(-97.783081, 30.399363))),
(15, 'Low Water Crossing #5', 'address', 'description', ST_MakePoint(-97.788383, 30.404879), ST_AsGeoJSON(ST_MakePoint(-97.788383, 30.404879))),
(16, 'Low Water Crossing #6', 'address', 'description', ST_MakePoint(-97.795227, 30.416759), ST_AsGeoJSON(ST_MakePoint(-97.795227, 30.416759))),
(17, 'Low Water Crossing #7', 'address', 'description', ST_MakePoint(-97.793816, 30.420071), ST_AsGeoJSON(ST_MakePoint(-97.793816, 30.420071))),
(18, 'Low Water Crossing #10', 'address', 'description', ST_MakePoint(-97.787018, 30.366344), ST_AsGeoJSON(ST_MakePoint(-97.787018, 30.366344))),
(19, 'Low Water Crossing #11', 'address', 'description', ST_MakePoint(-97.768349, 30.383081), ST_AsGeoJSON(ST_MakePoint(-97.768349, 30.383081))),
(20, 'Low Water Crossing #12', 'address', 'description', ST_MakePoint(-97.769730, 30.382622), ST_AsGeoJSON(ST_MakePoint(-97.769730, 30.382622))),
(21, 'Low Water Crossing #13', 'address', 'description', ST_MakePoint(-97.770370, 30.382612), ST_AsGeoJSON(ST_MakePoint(-97.770370, 30.382612))),
(22, 'Low Water Crossing #20', 'address', 'description', ST_MakePoint(-97.871414, 30.235039), ST_AsGeoJSON(ST_MakePoint(-97.871414, 30.235039))),
(23, 'Low Water Crossing #21', 'address', 'description', ST_MakePoint(-97.857742, 30.234055), ST_AsGeoJSON(ST_MakePoint(-97.857742, 30.234055))),
(24, 'Low Water Crossing #22', 'address', 'description', ST_MakePoint(-97.771172, 30.210482), ST_AsGeoJSON(ST_MakePoint(-97.771172, 30.210482))),
(25, 'Low Water Crossing #30', 'address', 'description', ST_MakePoint(-97.701256, 30.433285), ST_AsGeoJSON(ST_MakePoint(-97.701256, 30.433285))),
(26, 'Low Water Crossing #31', 'address', 'description', ST_MakePoint(-97.707306, 30.418852), ST_AsGeoJSON(ST_MakePoint(-97.707306, 30.418852))),
(27, 'Low Water Crossing #32', 'address', 'description', ST_MakePoint(-97.710564, 30.419043), ST_AsGeoJSON(ST_MakePoint(-97.710564, 30.419043))),
(28, 'Low Water Crossing #33', 'address', 'description', ST_MakePoint(-97.709892, 30.415836), ST_AsGeoJSON(ST_MakePoint(-97.709892, 30.415836))),
(29, 'Low Water Crossing #34', 'address', 'description', ST_MakePoint(-97.706612, 30.418734), ST_AsGeoJSON(ST_MakePoint(-97.706612, 30.418734))),
(30, 'Low Water Crossing #40', 'address', 'description', ST_MakePoint(-97.795372, 30.153522), ST_AsGeoJSON(ST_MakePoint(-97.795372, 30.153522))),
(31, 'Low Water Crossing #41', 'address', 'description', ST_MakePoint(-97.813972, 30.164919), ST_AsGeoJSON(ST_MakePoint(-97.813972, 30.164919))),
(32, 'Low Water Crossing #50', 'address', 'description', ST_MakePoint(-97.615974, 30.366470), ST_AsGeoJSON(ST_MakePoint(-97.615974, 30.366470))),
(33, 'Low Water Crossing #51', 'address', 'description', ST_MakePoint(-97.620033, 30.365187), ST_AsGeoJSON(ST_MakePoint(-97.620033, 30.365187))),
(34, 'Low Water Crossing #60', 'address', 'description', ST_MakePoint(-97.850266, 30.340532), ST_AsGeoJSON(ST_MakePoint(-97.850266, 30.340532))),
(35, 'Low Water Crossing #61', 'address', 'description', ST_MakePoint(-97.849930, 30.339327), ST_AsGeoJSON(ST_MakePoint(-97.849930, 30.339327))),
(36, 'Low Water Crossing #70', 'address', 'description', ST_MakePoint(-97.668480, 30.262674), ST_AsGeoJSON(ST_MakePoint(-97.668480, 30.262674))),
(37, 'Low Water Crossing #80', 'address', 'description', ST_MakePoint(-97.688660, 30.213947), ST_AsGeoJSON(ST_MakePoint(-97.688660, 30.213947))),
(38, 'Low Water Crossing #81', 'address', 'description', ST_MakePoint(-97.687706, 30.214373), ST_AsGeoJSON(ST_MakePoint(-97.687706, 30.214373))),
(39, 'Low Water Crossing #82', 'address', 'description', ST_MakePoint(-97.736015, 30.159782), ST_AsGeoJSON(ST_MakePoint(-97.736015, 30.159782))),
(40, 'Woodview Mobile Home Park', 'address', 'description', ST_MakePoint(-97.769783, 30.244511), ST_AsGeoJSON(ST_MakePoint(-97.769783, 30.244511))),
(41, 'Circle C Park LWC', 'address', 'description', ST_MakePoint(-97.886627, 30.201567), ST_AsGeoJSON(ST_MakePoint(-97.886627, 30.201567))),
(42, 'Golf Course LWC', 'address', 'description', ST_MakePoint(-97.732780, 30.189495), ST_AsGeoJSON(ST_MakePoint(-97.732780, 30.189495))),
(43, 'Bull Creek Park LWC', 'address', 'description', ST_MakePoint(-97.778931, 30.378298), ST_AsGeoJSON(ST_MakePoint(-97.778931, 30.378298))),
(44, 'Brodie Lane and Graybuck Road', 'address', 'description', ST_MakePoint(-97.850922, 30.181850), ST_AsGeoJSON(ST_MakePoint(-97.850922, 30.181850))),
(45, 'Johnny Morris Road', 'address', 'description', ST_MakePoint(-97.652611, 30.284103), ST_AsGeoJSON(ST_MakePoint(-97.652611, 30.284103))),
(46, 'Hemphill at W 32nd', 'address', 'description', ST_MakePoint(-97.738976, 30.297943), ST_AsGeoJSON(ST_MakePoint(-97.738976, 30.297943))),
(47, 'Williamson Creek at Jones Road', 'address', 'description', ST_MakePoint(-97.799438, 30.223421), ST_AsGeoJSON(ST_MakePoint(-97.799438, 30.223421))),
(48, 'Williamson Creek (Kincheon Branch) at Latta Dr', 'address', 'description', ST_MakePoint(-97.846275, 30.216385), ST_AsGeoJSON(ST_MakePoint(-97.846275, 30.216385))),
(49, 'South Boggy Creek at Dittmar', 'address', 'description', ST_MakePoint(-97.783516, 30.183256), ST_AsGeoJSON(ST_MakePoint(-97.783516, 30.183256))),
(50, 'Shoal Creek at Lamar (downtown)', 'address', 'description', ST_MakePoint(-97.752441, 30.274645), ST_AsGeoJSON(ST_MakePoint(-97.752441, 30.274645))),
(51, 'Waller at 8th Street', 'address', 'description', ST_MakePoint(-97.735733, 30.268042), ST_AsGeoJSON(ST_MakePoint(-97.735733, 30.268042))),
(52, 'Bitting School Rd. @ Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.452927, 30.309078), ST_AsGeoJSON(ST_MakePoint(-97.452927, 30.309078))),
(53, 'Cameron Rd @ Schmidt Ln / Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.543350, 30.404383), ST_AsGeoJSON(ST_MakePoint(-97.543350, 30.404383))),
(54, 'Jesse Bohls Rd @ Tributary to Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.558022, 30.433605), ST_AsGeoJSON(ST_MakePoint(-97.558022, 30.433605))),
(55, 'Cadillac Dr near FM 969', 'address', 'description', ST_MakePoint(-97.579292, 30.248285), ST_AsGeoJSON(ST_MakePoint(-97.579292, 30.248285))),
(56, 'County Line Rd @ South of 290E', 'address', 'description', ST_MakePoint(-97.414215, 30.348660), ST_AsGeoJSON(ST_MakePoint(-97.414215, 30.348660))),
(57, 'Lockwood Rd East of Parsons Rd', 'address', 'description', ST_MakePoint(-97.514938, 30.308081), ST_AsGeoJSON(ST_MakePoint(-97.514938, 30.308081))),
(58, 'Felder Ln @ Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.465218, 30.444187), ST_AsGeoJSON(ST_MakePoint(-97.465218, 30.444187))),
(59, 'Brita Olson Rd @ Tributary to Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.482452, 30.417759), ST_AsGeoJSON(ST_MakePoint(-97.482452, 30.417759))),
(60, 'Jacobson Rd @ Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.480118, 30.391279), ST_AsGeoJSON(ST_MakePoint(-97.480118, 30.391279))),
(61, 'Johnson Rd west of Bois D', 'address', 'description', ST_MakePoint(-97.510139, 30.380987), ST_AsGeoJSON(ST_MakePoint(-97.510139, 30.380987))),
(62, 'Old Kimbro Rd @ Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.487617, 30.356644), ST_AsGeoJSON(ST_MakePoint(-97.487617, 30.356644))),
(63, 'Littig Rd @ Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.471222, 30.323795), ST_AsGeoJSON(ST_MakePoint(-97.471222, 30.323795))),
(64, 'Hogeye Rd East of Blake-Manor Rd', 'address', 'description', ST_MakePoint(-97.513618, 30.293049), ST_AsGeoJSON(ST_MakePoint(-97.513618, 30.293049))),
(65, 'Albert Voelker Rd @ Dry Creek', 'address', 'description', ST_MakePoint(-97.440056, 30.335573), ST_AsGeoJSON(ST_MakePoint(-97.440056, 30.335573))),
(66, 'Littig Rd @ Dry Creek', 'address', 'description', ST_MakePoint(-97.456795, 30.321613), ST_AsGeoJSON(ST_MakePoint(-97.456795, 30.321613))),
(67, 'Gregg Ln @ Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.540504, 30.381243), ST_AsGeoJSON(ST_MakePoint(-97.540504, 30.381243))),
(68, 'Jones Rd @Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.479576, 30.320063), ST_AsGeoJSON(ST_MakePoint(-97.479576, 30.320063))),
(69, 'Springdale Rd @ Walnut Creek', 'address', 'description', ST_MakePoint(-97.650215, 30.337410), ST_AsGeoJSON(ST_MakePoint(-97.650215, 30.337410))),
(70, 'Springdale Rd @ Ferguson Branch (Creek)', 'address', 'description', ST_MakePoint(-97.653687, 30.331684), ST_AsGeoJSON(ST_MakePoint(-97.653687, 30.331684))),
(72, 'Littig Rd @ Willow Creek', 'address', 'description', ST_MakePoint(-97.462334, 30.323267), ST_AsGeoJSON(ST_MakePoint(-97.462334, 30.323267))),
(73, 'Carlson Rd @ Dry Creek', 'address', 'description', ST_MakePoint(-97.410530, 30.390736), ST_AsGeoJSON(ST_MakePoint(-97.410530, 30.390736))),
(74, 'Crystal Bend @ Harris Branch (Creek)', 'address', 'description', ST_MakePoint(-97.634727, 30.406910), ST_AsGeoJSON(ST_MakePoint(-97.634727, 30.406910))),
(75, 'Taylor Ln near Decker Lake Rd', 'address', 'description', ST_MakePoint(-97.551872, 30.262096), ST_AsGeoJSON(ST_MakePoint(-97.551872, 30.262096))),
(76, 'Killingsworth Rd east of Immanuel Rd', 'address', 'description', ST_MakePoint(-97.615417, 30.417175), ST_AsGeoJSON(ST_MakePoint(-97.615417, 30.417175))),
(77, 'Immanuel Rd north of Killingsworth Rd', 'address', 'description', ST_MakePoint(-97.619942, 30.420252), ST_AsGeoJSON(ST_MakePoint(-97.619942, 30.420252))),
(78, 'Old San Antonio Rd @ Onion Creek', 'address', 'description', ST_MakePoint(-97.810425, 30.133249), ST_AsGeoJSON(ST_MakePoint(-97.810425, 30.133249))),
(79, 'Bee Creek Rd @ Bee Creek', 'address', 'description', ST_MakePoint(-98.040054, 30.354773), ST_AsGeoJSON(ST_MakePoint(-98.040054, 30.354773))),
(80, 'Crumley Ranch Rd @ Rocky Creek', 'address', 'description', ST_MakePoint(-98.021423, 30.266903), ST_AsGeoJSON(ST_MakePoint(-98.021423, 30.266903))),
(81, 'Great Divide @ Little Barton Creek', 'address', 'description', ST_MakePoint(-97.957802, 30.305210), ST_AsGeoJSON(ST_MakePoint(-97.957802, 30.305210))),
(82, 'Tumbleweed Trl @ Tributary to Lake Austin', 'address', 'description', ST_MakePoint(-97.871216, 30.324345), ST_AsGeoJSON(ST_MakePoint(-97.871216, 30.324345))),
(83, 'Westlake Dr b/w Woodcutter', 'address', 'description', ST_MakePoint(-97.782799, 30.327383), ST_AsGeoJSON(ST_MakePoint(-97.782799, 30.327383))),
(84, 'Wild Basin Ledge @ Tributary to Bee Creek', 'address', 'description', ST_MakePoint(-97.806282, 30.308975), ST_AsGeoJSON(ST_MakePoint(-97.806282, 30.308975))),
(85, 'Lime Creek Rd @ Fisher Hollow (Creek)', 'address', 'description', ST_MakePoint(-97.894073, 30.481779), ST_AsGeoJSON(ST_MakePoint(-97.894073, 30.481779))),
(86, 'Fitzhugh Rd @ Barton Creek', 'address', 'description', ST_MakePoint(-98.011162, 30.242487), ST_AsGeoJSON(ST_MakePoint(-98.011162, 30.242487))),
(87, 'Fall Creek Rd @ Tributary to Fall Creek', 'address', 'description', ST_MakePoint(-98.127342, 30.419184), ST_AsGeoJSON(ST_MakePoint(-98.127342, 30.419184))),
(88, 'Flint Rock Rd @ Tributary to Hurst Creek', 'address', 'description', ST_MakePoint(-97.997841, 30.330700), ST_AsGeoJSON(ST_MakePoint(-97.997841, 30.330700))),
(89, 'Pedernales Canyon Trl @ Lick Creek', 'address', 'description', ST_MakePoint(-98.088783, 30.369410), ST_AsGeoJSON(ST_MakePoint(-98.088783, 30.369410))),
(90, 'Hamilton Pool @ Pedernales River', 'address', 'description', ST_MakePoint(-98.138939, 30.340010), ST_AsGeoJSON(ST_MakePoint(-98.138939, 30.340010))),
(91, 'Ledgestone Terr @ Tributary to Pen Creek', 'address', 'description', ST_MakePoint(-97.929260, 30.223341), ST_AsGeoJSON(ST_MakePoint(-97.929260, 30.223341))),
(92, 'Flintrock Circle @ Tributary to Pen Creek', 'address', 'description', ST_MakePoint(-97.924110, 30.223345), ST_AsGeoJSON(ST_MakePoint(-97.924110, 30.223345))),
(95, 'Williamson Creek Dr @ Williamson Creek', 'address', 'description', ST_MakePoint(-97.915123, 30.246428), ST_AsGeoJSON(ST_MakePoint(-97.915123, 30.246428))),
(96, 'Pitter Pat Ln @ Williamson Creek', 'address', 'description', ST_MakePoint(-97.913620, 30.245514), ST_AsGeoJSON(ST_MakePoint(-97.913620, 30.245514))),
(97, 'Mowinkle Dr @ Williamson Creek', 'address', 'description', ST_MakePoint(-97.906670, 30.242262), ST_AsGeoJSON(ST_MakePoint(-97.906670, 30.242262))),
(98, 'Big Sandy Dr @ Long Hollow', 'address', 'description', ST_MakePoint(-97.948364, 30.570286), ST_AsGeoJSON(ST_MakePoint(-97.948364, 30.570286))),
(99, 'Juniper Trl @ Long Hollow (Creek)', 'address', 'description', ST_MakePoint(-97.967262, 30.581793), ST_AsGeoJSON(ST_MakePoint(-97.967262, 30.581793))),
(100, 'Cottonwood Dr @ Long Hollow (Creek)', 'address', 'description', ST_MakePoint(-97.971863, 30.583870), ST_AsGeoJSON(ST_MakePoint(-97.971863, 30.583870))),
(101, 'Live Oak Dr @ Long Hollow (Creek)', 'address', 'description', ST_MakePoint(-97.967941, 30.585136), ST_AsGeoJSON(ST_MakePoint(-97.967941, 30.585136))),
(102, 'Nameless Rd @ Nameless Hollow (Creek)', 'address', 'description', ST_MakePoint(-97.928017, 30.526802), ST_AsGeoJSON(ST_MakePoint(-97.928017, 30.526802))),
(103, 'Round Mountain Rd @ Bingham Creek', 'address', 'description', ST_MakePoint(-97.945068, 30.580051), ST_AsGeoJSON(ST_MakePoint(-97.945068, 30.580051))),
(104, 'Slaughter Creek Dr @ Tributary to Slaughter Creek', 'address', 'description', ST_MakePoint(-97.821320, 30.166294), ST_AsGeoJSON(ST_MakePoint(-97.821320, 30.166294))),
(105, 'Jacobson Rd b/w Alpine Dr & Linden Rd', 'address', 'description', ST_MakePoint(-97.609001, 30.132555), ST_AsGeoJSON(ST_MakePoint(-97.609001, 30.132555))),
(106, 'Linden Rd @ Maha Creek', 'address', 'description', ST_MakePoint(-97.588860, 30.133886), ST_AsGeoJSON(ST_MakePoint(-97.588860, 30.133886))),
(107, 'Citation Dr (Thoroughbred Farms subdiv) between Man-O-War Ave and Ponder Ln', 'address', 'description', ST_MakePoint(-97.676346, 30.135599), ST_AsGeoJSON(ST_MakePoint(-97.676346, 30.135599))),
(108, 'Pearce Ln near FM 973', 'address', 'description', ST_MakePoint(-97.640076, 30.177479), ST_AsGeoJSON(ST_MakePoint(-97.640076, 30.177479))),
(109, 'Turnersville Rd @ Maha Creek', 'address', 'description', ST_MakePoint(-97.737938, 30.076216), ST_AsGeoJSON(ST_MakePoint(-97.737938, 30.076216))),
(110, '9500-blk Blocker Ln ', 'address', 'description', ST_MakePoint(-97.671249, 30.112530), ST_AsGeoJSON(ST_MakePoint(-97.671249, 30.112530))),
(111, 'Rodriguez Rd @ Dry Creek', 'address', 'description', ST_MakePoint(-97.710732, 30.118946), ST_AsGeoJSON(ST_MakePoint(-97.710732, 30.118946))),
(112, 'Doyle-Overton Rd @ Eilers Rd', 'address', 'description', ST_MakePoint(-97.640572, 30.078949), ST_AsGeoJSON(ST_MakePoint(-97.640572, 30.078949))),
(113, 'Peterson Rd @ Tributary to Maha Creek', 'address', 'description', ST_MakePoint(-97.627808, 30.105795), ST_AsGeoJSON(ST_MakePoint(-97.627808, 30.105795))),
(114, 'Navarro Creek Rd @ Navarro Creek', 'address', 'description', ST_MakePoint(-97.592514, 30.167467), ST_AsGeoJSON(ST_MakePoint(-97.592514, 30.167467))),
(115, '14500-blk Plover Pl', 'address', 'description', ST_MakePoint(-97.617798, 30.127525), ST_AsGeoJSON(ST_MakePoint(-97.617798, 30.127525))),
(116, 'Wright Rd @ Tributary to Maha Creek', 'address', 'description', ST_MakePoint(-97.754387, 30.080608), ST_AsGeoJSON(ST_MakePoint(-97.754387, 30.080608))),
(117, 'Colton Rd @ Cottonmouth Creek', 'address', 'description', ST_MakePoint(-97.689194, 30.173513), ST_AsGeoJSON(ST_MakePoint(-97.689194, 30.173513))),
(118, 'Williamson Rd NW of Elm Grove Rd', 'address', 'description', ST_MakePoint(-97.723503, 30.048407), ST_AsGeoJSON(ST_MakePoint(-97.723503, 30.048407))),
(119, 'Williamson Rd SE of Elm Grove Rd', 'address', 'description', ST_MakePoint(-97.701485, 30.027739), ST_AsGeoJSON(ST_MakePoint(-97.701485, 30.027739))),
(120, 'Laws Rd b/w US 183 &amp; Evelyn Rd', 'address', 'description', ST_MakePoint(-97.681305, 30.062107), ST_AsGeoJSON(ST_MakePoint(-97.681305, 30.062107))),
(121, 'Tom Sassman Rd @ Maha Creek', 'address', 'description', ST_MakePoint(-97.701904, 30.084892), ST_AsGeoJSON(ST_MakePoint(-97.701904, 30.084892))),
(122, 'Doyle Rd @ Tributary to Maha Creek', 'address', 'description', ST_MakePoint(-97.620811, 30.094563), ST_AsGeoJSON(ST_MakePoint(-97.620811, 30.094563))),
(123, 'Lone Oak Trail at Sunset Valley Trib', 'address', 'description', ST_MakePoint(-97.810463, 30.226772), ST_AsGeoJSON(ST_MakePoint(-97.810463, 30.226772))),
(124, 'Pillow Road at Sunset Valley Trib', 'address', 'description', ST_MakePoint(-97.809402, 30.225208), ST_AsGeoJSON(ST_MakePoint(-97.809402, 30.225208))),
(126, 'Reese Drive at Sunset Valley Trib', 'address', 'description', ST_MakePoint(-97.807320, 30.224424), ST_AsGeoJSON(ST_MakePoint(-97.807320, 30.224424))),
(128, 'Big Sandy @ Long Hollow', 'address', 'description', ST_MakePoint(-97.948425, 30.570244), ST_AsGeoJSON(ST_MakePoint(-97.948425, 30.570244))),
(130, 'Slaughter Creek Trail', 'address', 'description', ST_MakePoint(-97.903442, 30.209352), ST_AsGeoJSON(ST_MakePoint(-97.903442, 30.209352))),
(131, '2400 Sumac Lane', 'address', 'description', ST_MakePoint(-97.841324, 30.537243), ST_AsGeoJSON(ST_MakePoint(-97.841324, 30.537243))),
(132, '2348 Cypress Lane', 'address', 'description', ST_MakePoint(-97.840584, 30.537674), ST_AsGeoJSON(ST_MakePoint(-97.840584, 30.537674))),
(133, '2402 Peach Tree Lane', 'address', 'description', ST_MakePoint(-97.839897, 30.538385), ST_AsGeoJSON(ST_MakePoint(-97.839897, 30.538385))),
(180, '805 Cedar Park Drive', 'address', 'description', ST_MakePoint(-97.835342, 30.511259), ST_AsGeoJSON(ST_MakePoint(-97.835342, 30.511259))),
(202, 'CR 273 at Mason Creek', 'address', 'description', ST_MakePoint(-97.845581, 30.576651), ST_AsGeoJSON(ST_MakePoint(-97.845581, 30.576651))),
(203, 'Ridgmar Road at Brushy Creek', 'address', 'description', ST_MakePoint(-97.812286, 30.583527), ST_AsGeoJSON(ST_MakePoint(-97.812286, 30.583527))),
(204, 'RM 2243 at Brushy Creek', 'address', 'description', ST_MakePoint(-97.841347, 30.582233), ST_AsGeoJSON(ST_MakePoint(-97.841347, 30.582233))),
(205, 'Broade Way at Brushy Creek', 'address', 'description', ST_MakePoint(-97.858871, 30.579414), ST_AsGeoJSON(ST_MakePoint(-97.858871, 30.579414))),
(206, 'High Lonesome Street at Brown Hollow Creek', 'address', 'description', ST_MakePoint(-97.901329, 30.547123), ST_AsGeoJSON(ST_MakePoint(-97.901329, 30.547123))),
(207, 'CR 177 at Brushy Creek', 'address', 'description', ST_MakePoint(-97.789864, 30.573830), ST_AsGeoJSON(ST_MakePoint(-97.789864, 30.573830))),
(208, 'Maplecreek Drive at Brushy Creek (Devine Lake Park Entrance)', 'address', 'description', ST_MakePoint(-97.882156, 30.579679), ST_AsGeoJSON(ST_MakePoint(-97.882156, 30.579679))),
(212, 'Nash St W @ Lake Creek Trib', 'address', 'description', ST_MakePoint(-97.679184, 30.503847), ST_AsGeoJSON(ST_MakePoint(-97.679184, 30.503847))),
(213, 'A W Grimes Blvd (NB) @ Brushy Creek', 'address', 'description', ST_MakePoint(-97.655251, 30.513983), ST_AsGeoJSON(ST_MakePoint(-97.655251, 30.513983))),
(214, 'Chisholm Trail Rd @ Brushy Creek', 'address', 'description', ST_MakePoint(-97.689430, 30.513075), ST_AsGeoJSON(ST_MakePoint(-97.689430, 30.513075))),
(215, 'Park Ln @ Lake Creek Park', 'address', 'description', ST_MakePoint(-97.669762, 30.508440), ST_AsGeoJSON(ST_MakePoint(-97.669762, 30.508440))),
(216, 'Summit St @ Brushy Creek/Memorial PARK', 'address', 'description', ST_MakePoint(-97.684502, 30.512756), ST_AsGeoJSON(ST_MakePoint(-97.684502, 30.512756))),
(217, 'Harrell Pkwy @ Old Settlers Park', 'address', 'description', ST_MakePoint(-97.633507, 30.529694), ST_AsGeoJSON(ST_MakePoint(-97.633507, 30.529694))),
(218, 'Old Bowman Rd @  Onion Branch Trib', 'address', 'description', ST_MakePoint(-97.683846, 30.524473), ST_AsGeoJSON(ST_MakePoint(-97.683846, 30.524473))),
(219, 'Greenlawn Blvd @ Dry Branch Trib', 'address', 'description', ST_MakePoint(-97.665146, 30.495581), ST_AsGeoJSON(ST_MakePoint(-97.665146, 30.495581))),
(220, 'Frontier Trail @ Lake Creek Trib', 'address', 'description', ST_MakePoint(-97.685608, 30.492105), ST_AsGeoJSON(ST_MakePoint(-97.685608, 30.492105))),
(221, 'Twin Ridge Pkwy @ Forest Creek Dr', 'address', 'description', ST_MakePoint(-97.601158, 30.518242), ST_AsGeoJSON(ST_MakePoint(-97.601158, 30.518242))),
(222, 'Burnet St S @ Lake Creek', 'address', 'description', ST_MakePoint(-97.674141, 30.506256), ST_AsGeoJSON(ST_MakePoint(-97.674141, 30.506256))),
(223, 'Oak Ridge Dr @ Lake Creek', 'address', 'description', ST_MakePoint(-97.703018, 30.497847), ST_AsGeoJSON(ST_MakePoint(-97.703018, 30.497847))),
(224, 'Round Rock West Dr @ Lake Creek', 'address', 'description', ST_MakePoint(-97.694565, 30.504223), ST_AsGeoJSON(ST_MakePoint(-97.694565, 30.504223))),
(225, 'Deep Wood Dr @ Lake Creek', 'address', 'description', ST_MakePoint(-97.698441, 30.501507), ST_AsGeoJSON(ST_MakePoint(-97.698441, 30.501507))),
(226, 'Kenny Fort Blvd under US 79 (N)', 'address', 'description', ST_MakePoint(-97.640671, 30.523151), ST_AsGeoJSON(ST_MakePoint(-97.640671, 30.523151))),
(229, 'A W Grimes Blvd (SB) @ Brushy Creek', 'address', 'description', ST_MakePoint(-97.655548, 30.514009), ST_AsGeoJSON(ST_MakePoint(-97.655548, 30.514009))),
(230, 'Kenny Fort Blvd under US 79 (S)', 'address', 'description', ST_MakePoint(-97.639351, 30.520712), ST_AsGeoJSON(ST_MakePoint(-97.639351, 30.520712))),
(231, '2900 Block of Bee Cave Road (RM2244) at the Finish Line Car Wash', 'address', 'description', ST_MakePoint(-97.792221, 30.270664), ST_AsGeoJSON(ST_MakePoint(-97.792221, 30.270664))),
(232, '800 Block of Edgegrove Drive at Bee Cave Road', 'address', 'description', ST_MakePoint(-97.788979, 30.272051), ST_AsGeoJSON(ST_MakePoint(-97.788979, 30.272051))),
(233, 'Dellana Lane at Bee Cave Road', 'address', 'description', ST_MakePoint(-97.784874, 30.267593), ST_AsGeoJSON(ST_MakePoint(-97.784874, 30.267593))),
(235, '2800 Cedar Hollow', 'address', 'description', ST_MakePoint(-97.770767, 30.645544), ST_AsGeoJSON(ST_MakePoint(-97.770767, 30.645544))),
(236, '495 Coyote Trl', 'address', 'description', ST_MakePoint(-97.727203, 30.718824), ST_AsGeoJSON(ST_MakePoint(-97.727203, 30.718824))),
(237, '2009 Great Oaks Dr', 'address', 'description', ST_MakePoint(-97.738487, 30.531857), ST_AsGeoJSON(ST_MakePoint(-97.738487, 30.531857))),
(238, '2724 Hairy Man', 'address', 'description', ST_MakePoint(-97.715004, 30.522415), ST_AsGeoJSON(ST_MakePoint(-97.715004, 30.522415))),
(239, '30112 Live Oak Trl', 'address', 'description', ST_MakePoint(-97.664383, 30.756660), ST_AsGeoJSON(ST_MakePoint(-97.664383, 30.756660))),
(240, '303 E Oak St', 'address', 'description', ST_MakePoint(-97.439552, 30.722553), ST_AsGeoJSON(ST_MakePoint(-97.439552, 30.722553))),
(241, '2080 Rancho Bueno', 'address', 'description', ST_MakePoint(-97.758873, 30.646746), ST_AsGeoJSON(ST_MakePoint(-97.758873, 30.646746))),
(242, '4553 Sam Bass Rd', 'address', 'description', ST_MakePoint(-97.751137, 30.538380), ST_AsGeoJSON(ST_MakePoint(-97.751137, 30.538380))),
(243, '421 San Gabriel Ranch', 'address', 'description', ST_MakePoint(-97.907944, 30.719286), ST_AsGeoJSON(ST_MakePoint(-97.907944, 30.719286))),
(244, '2235 Walsh Dr', 'address', 'description', ST_MakePoint(-97.748856, 30.535311), ST_AsGeoJSON(ST_MakePoint(-97.748856, 30.535311))),
(246, ' FM 1460 / CR 166', 'address', 'description', ST_MakePoint(-97.667328, 30.600025), ST_AsGeoJSON(ST_MakePoint(-97.667328, 30.600025))),
(247, 'CR 305', 'address', 'description', ST_MakePoint(-97.639954, 30.826450), ST_AsGeoJSON(ST_MakePoint(-97.639954, 30.826450))),
(248, '930&#039; EAST OF CR 339 / CR 124', 'address', 'description', ST_MakePoint(-97.493324, 30.666122), ST_AsGeoJSON(ST_MakePoint(-97.493324, 30.666122))),
(249, '1250&#039; WEST OF SPARROW RD / COYOTE TRL', 'address', 'description', ST_MakePoint(-97.551743, 30.527435), ST_AsGeoJSON(ST_MakePoint(-97.551743, 30.527435))),
(250, 'CR 199', 'address', 'description', ST_MakePoint(-97.536133, 30.541620), ST_AsGeoJSON(ST_MakePoint(-97.536133, 30.541620))),
(251, 'CR 428 / FM 1331', 'address', 'description', ST_MakePoint(-97.321938, 30.679565), ST_AsGeoJSON(ST_MakePoint(-97.321938, 30.679565))),
(252, 'CR 100 & Little Mankins', 'address', 'description', ST_MakePoint(-97.584511, 30.645424), ST_AsGeoJSON(ST_MakePoint(-97.584511, 30.645424))),
(253, 'SW CARLOS G PARKER BLVD / S RIO GRANDE', 'address', 'description', ST_MakePoint(-97.418610, 30.559025), ST_AsGeoJSON(ST_MakePoint(-97.418610, 30.559025))),
(254, '77&#039; WEST OF BULL RUN / MALLARD LN', 'address', 'description', ST_MakePoint(-97.425148, 30.588831), ST_AsGeoJSON(ST_MakePoint(-97.425148, 30.588831))),
(255, 'CR 366', 'address', 'description', ST_MakePoint(-97.446129, 30.595577), ST_AsGeoJSON(ST_MakePoint(-97.446129, 30.595577))),
(256, 'S RAINBOW BRG / S RAINBOW BRG', 'address', 'description', ST_MakePoint(-97.819885, 30.509405), ST_AsGeoJSON(ST_MakePoint(-97.819885, 30.509405))),
(257, 'S KINGS CANYON DR / S KINGS CANYON DR', 'address', 'description', ST_MakePoint(-97.820381, 30.508297), ST_AsGeoJSON(ST_MakePoint(-97.820381, 30.508297))),
(258, 'S KINGS CANYON DR / S KINGS CANYON DR', 'address', 'description', ST_MakePoint(-97.820808, 30.508909), ST_AsGeoJSON(ST_MakePoint(-97.820808, 30.508909))),
(260, '482&#039; SOUTH OF LONE STAR DR / BARON LN', 'address', 'description', ST_MakePoint(-97.832993, 30.515364), ST_AsGeoJSON(ST_MakePoint(-97.832993, 30.515364))),
(261, '289&#039; WEST OF ROYAL LN / CEDAR PARK DR', 'address', 'description', ST_MakePoint(-97.835503, 30.511145), ST_AsGeoJSON(ST_MakePoint(-97.835503, 30.511145))),
(262, ' DEWBERRY DR / CEDAR PARK DR', 'address', 'description', ST_MakePoint(-97.843376, 30.507669), ST_AsGeoJSON(ST_MakePoint(-97.843376, 30.507669))),
(265, 'CR 328', 'address', 'description', ST_MakePoint(-97.534500, 30.716707), ST_AsGeoJSON(ST_MakePoint(-97.534500, 30.716707))),
(266, 'CR 328', 'address', 'description', ST_MakePoint(-97.532127, 30.718920), ST_AsGeoJSON(ST_MakePoint(-97.532127, 30.718920))),
(267, '600&#039; SOUTH OF FM 972 / CR 329', 'address', 'description', ST_MakePoint(-97.570480, 30.741217), ST_AsGeoJSON(ST_MakePoint(-97.570480, 30.741217))),
(268, 'CR 200 / CR 236', 'address', 'description', ST_MakePoint(-97.957932, 30.769682), ST_AsGeoJSON(ST_MakePoint(-97.957932, 30.769682))),
(269, 'CR 200 / CR 236', 'address', 'description', ST_MakePoint(-97.961227, 30.768627), ST_AsGeoJSON(ST_MakePoint(-97.961227, 30.768627))),
(270, ' CR 194 / CR 140', 'address', 'description', ST_MakePoint(-97.610260, 30.689175), ST_AsGeoJSON(ST_MakePoint(-97.610260, 30.689175))),
(271, 'FM 1105 / CR 149', 'address', 'description', ST_MakePoint(-97.592049, 30.703566), ST_AsGeoJSON(ST_MakePoint(-97.592049, 30.703566))),
(272, 'CR258 @ Tejas Park', 'address', 'description', ST_MakePoint(-97.828827, 30.696257), ST_AsGeoJSON(ST_MakePoint(-97.828827, 30.696257))),
(274, 'CR 246 / CR 245', 'address', 'description', ST_MakePoint(-97.786789, 30.760435), ST_AsGeoJSON(ST_MakePoint(-97.786789, 30.760435))),
(275, ' CR 245 / CR 246', 'address', 'description', ST_MakePoint(-97.698227, 30.759169), ST_AsGeoJSON(ST_MakePoint(-97.698227, 30.759169))),
(276, 'CR 251 / CR 250', 'address', 'description', ST_MakePoint(-97.837570, 30.772371), ST_AsGeoJSON(ST_MakePoint(-97.837570, 30.772371))),
(277, 'CR 252 / CR 251', 'address', 'description', ST_MakePoint(-97.831665, 30.781549), ST_AsGeoJSON(ST_MakePoint(-97.831665, 30.781549))),
(278, ' CR 215', 'address', 'description', ST_MakePoint(-97.859642, 30.786821), ST_AsGeoJSON(ST_MakePoint(-97.859642, 30.786821))),
(279, 'CR 220', 'address', 'description', ST_MakePoint(-97.855255, 30.814713), ST_AsGeoJSON(ST_MakePoint(-97.855255, 30.814713))),
(280, 'CR 223 @ CR 220', 'address', 'description', ST_MakePoint(-97.851135, 30.835573), ST_AsGeoJSON(ST_MakePoint(-97.851135, 30.835573))),
(281, 'CR 388', 'address', 'description', ST_MakePoint(-97.597519, 30.765120), ST_AsGeoJSON(ST_MakePoint(-97.597519, 30.765120))),
(282, 'CR 471', 'address', 'description', ST_MakePoint(-97.270447, 30.517832), ST_AsGeoJSON(ST_MakePoint(-97.270447, 30.517832))),
(283, '6530', 'address', 'description', ST_MakePoint(-97.189087, 30.473770), ST_AsGeoJSON(ST_MakePoint(-97.189087, 30.473770))),
(285, 'Sunset Trail at Sunset Valley Trib', 'address', 'description', ST_MakePoint(-97.806259, 30.224474), ST_AsGeoJSON(ST_MakePoint(-97.806259, 30.224474))),
(286, ' CR 481 / CR 482', 'address', 'description', ST_MakePoint(-97.189087, 30.473770), ST_AsGeoJSON(ST_MakePoint(-97.189087, 30.473770))),
(287, 'CR 475 / CR 476', 'address', 'description', ST_MakePoint(-97.237099, 30.465225), ST_AsGeoJSON(ST_MakePoint(-97.237099, 30.465225))),
(288, ' CR 474 / CR 476', 'address', 'description', ST_MakePoint(-97.243347, 30.463282), ST_AsGeoJSON(ST_MakePoint(-97.243347, 30.463282))),
(289, 'CR 467 / CR 484', 'address', 'description', ST_MakePoint(-97.287018, 30.425270), ST_AsGeoJSON(ST_MakePoint(-97.287018, 30.425270))),
(290, ' 484 / CR 491', 'address', 'description', ST_MakePoint(-97.302071, 30.416157), ST_AsGeoJSON(ST_MakePoint(-97.302071, 30.416157))),
(291, ' CR 462 / CR 460', 'address', 'description', ST_MakePoint(-97.370033, 30.441532), ST_AsGeoJSON(ST_MakePoint(-97.370033, 30.441532))),
(292, 'CR 453 / CR 483', 'address', 'description', ST_MakePoint(-97.375343, 30.509468), ST_AsGeoJSON(ST_MakePoint(-97.375343, 30.509468))),
(293, ' CR 134 / CR 132', 'address', 'description', ST_MakePoint(-97.523163, 30.538054), ST_AsGeoJSON(ST_MakePoint(-97.523163, 30.538054))),
(294, ' CR 373 / CR 398', 'address', 'description', ST_MakePoint(-97.455391, 30.576965), ST_AsGeoJSON(ST_MakePoint(-97.455391, 30.576965))),
(295, ' CR 101', 'address', 'description', ST_MakePoint(-97.505623, 30.603170), ST_AsGeoJSON(ST_MakePoint(-97.505623, 30.603170))),
(296, ' CR 130', 'address', 'description', ST_MakePoint(-97.554382, 30.595480), ST_AsGeoJSON(ST_MakePoint(-97.554382, 30.595480))),
(297, ' CR 123/ BRUSHY CREEK', 'address', 'description', ST_MakePoint(-97.589828, 30.530931), ST_AsGeoJSON(ST_MakePoint(-97.589828, 30.530931))),
(298, '2932 ft WEST OF CR 175 / CR 179', 'address', 'description', ST_MakePoint(-97.785728, 30.565344), ST_AsGeoJSON(ST_MakePoint(-97.785728, 30.565344))),
(299, ' CR 177', 'address', 'description', ST_MakePoint(-97.789879, 30.573837), ST_AsGeoJSON(ST_MakePoint(-97.789879, 30.573837))),
(300, 'CR 285 / CR 284', 'address', 'description', ST_MakePoint(-98.009323, 30.641748), ST_AsGeoJSON(ST_MakePoint(-98.009323, 30.641748))),
(301, '2500 ft WEST OF CR 126 / CR 121', 'address', 'description', ST_MakePoint(-97.561203, 30.658648), ST_AsGeoJSON(ST_MakePoint(-97.561203, 30.658648))),
(302, ' CR 124', 'address', 'description', ST_MakePoint(-97.540604, 30.677382), ST_AsGeoJSON(ST_MakePoint(-97.540604, 30.677382))),
(303, 'CR 327 / CR 336', 'address', 'description', ST_MakePoint(-97.456551, 30.701258), ST_AsGeoJSON(ST_MakePoint(-97.456551, 30.701258))),
(304, 'CR 327 / CR 336', 'address', 'description', ST_MakePoint(-97.456909, 30.702188), ST_AsGeoJSON(ST_MakePoint(-97.456909, 30.702188))),
(305, 'CR 346 / CR 347', 'address', 'description', ST_MakePoint(-97.434166, 30.702131), ST_AsGeoJSON(ST_MakePoint(-97.434166, 30.702131))),
(306, 'CR 327 / CR 380', 'address', 'description', ST_MakePoint(-97.484375, 30.706284), ST_AsGeoJSON(ST_MakePoint(-97.484375, 30.706284))),
(308, ' RONALD RD / PATRIOT WAY', 'address', 'description', ST_MakePoint(-97.610481, 30.628939), ST_AsGeoJSON(ST_MakePoint(-97.610481, 30.628939))),
(309, ' Big Mankins/ CR 100', 'address', 'description', ST_MakePoint(-97.580414, 30.640711), ST_AsGeoJSON(ST_MakePoint(-97.580414, 30.640711))),
(310, 'CR 348 / CR 347', 'address', 'description', ST_MakePoint(-97.426888, 30.714729), ST_AsGeoJSON(ST_MakePoint(-97.426888, 30.714729))),
(311, ' CR 353 / CR 350', 'address', 'description', ST_MakePoint(-97.408478, 30.764271), ST_AsGeoJSON(ST_MakePoint(-97.408478, 30.764271))),
(312, '1580 ft NORTH OF FM 971 / CR 335', 'address', 'description', ST_MakePoint(-97.472336, 30.709368), ST_AsGeoJSON(ST_MakePoint(-97.472336, 30.709368))),
(313, ' CR 300 / CR 326', 'address', 'description', ST_MakePoint(-97.471275, 30.721638), ST_AsGeoJSON(ST_MakePoint(-97.471275, 30.721638))),
(314, '0.5 MILE WEST OF SH 95 / CR 325', 'address', 'description', ST_MakePoint(-97.447197, 30.735790), ST_AsGeoJSON(ST_MakePoint(-97.447197, 30.735790))),
(315, ' CR 321 / CR 382', 'address', 'description', ST_MakePoint(-97.531715, 30.771580), ST_AsGeoJSON(ST_MakePoint(-97.531715, 30.771580))),
(316, ' CR 314 / CR 315', 'address', 'description', ST_MakePoint(-97.592148, 30.789936), ST_AsGeoJSON(ST_MakePoint(-97.592148, 30.789936))),
(317, 'FM 487 / CR 303', 'address', 'description', ST_MakePoint(-97.556557, 30.820198), ST_AsGeoJSON(ST_MakePoint(-97.556557, 30.820198))),
(318, ' WALSH DR / SAM BASS RD', 'address', 'description', ST_MakePoint(-97.751106, 30.538378), ST_AsGeoJSON(ST_MakePoint(-97.751106, 30.538378))),
(319, ' CR 234 / CR 143', 'address', 'description', ST_MakePoint(-97.656326, 30.730900), ST_AsGeoJSON(ST_MakePoint(-97.656326, 30.730900))),
(320, '1480 ft NORTH OF CR 147 / CR 234', 'address', 'description', ST_MakePoint(-97.664925, 30.742970), ST_AsGeoJSON(ST_MakePoint(-97.664925, 30.742970))),
(321, '1060 ft SOUTH OF CR 146 / CR 234', 'address', 'description', ST_MakePoint(-97.663589, 30.750736), ST_AsGeoJSON(ST_MakePoint(-97.663589, 30.750736))),
(322, '234 / CR 239', 'address', 'description', ST_MakePoint(-97.680244, 30.773506), ST_AsGeoJSON(ST_MakePoint(-97.680244, 30.773506))),
(323, ' CR 234 / LIVE OAK TRLS', 'address', 'description', ST_MakePoint(-97.664352, 30.756662), ST_AsGeoJSON(ST_MakePoint(-97.664352, 30.756662))),
(324, 'SPEARS RANCH RD / CR 305', 'address', 'description', ST_MakePoint(-97.642883, 30.828339), ST_AsGeoJSON(ST_MakePoint(-97.642883, 30.828339))),
(325, ' FM 487 / CR 232', 'address', 'description', ST_MakePoint(-97.694443, 30.827089), ST_AsGeoJSON(ST_MakePoint(-97.694443, 30.827089))),
(326, 'FM 487 / CR 232', 'address', 'description', ST_MakePoint(-97.693382, 30.828140), ST_AsGeoJSON(ST_MakePoint(-97.693382, 30.828140))),
(327, 'CR 308 / CR 307', 'address', 'description', ST_MakePoint(-97.617378, 30.859653), ST_AsGeoJSON(ST_MakePoint(-97.617378, 30.859653))),
(328, 'FM 487 / CR 232', 'address', 'description', ST_MakePoint(-97.725784, 30.847746), ST_AsGeoJSON(ST_MakePoint(-97.725784, 30.847746))),
(329, ' CR 230 / CR 229', 'address', 'description', ST_MakePoint(-97.766731, 30.856525), ST_AsGeoJSON(ST_MakePoint(-97.766731, 30.856525))),
(330, 'CR 223 / CR 221', 'address', 'description', ST_MakePoint(-97.868492, 30.840420), ST_AsGeoJSON(ST_MakePoint(-97.868492, 30.840420))),
(331, ' CR 241 / CR 245', 'address', 'description', ST_MakePoint(-97.790596, 30.775003), ST_AsGeoJSON(ST_MakePoint(-97.790596, 30.775003))),
(332, ' CR 249 / CR 245', 'address', 'description', ST_MakePoint(-97.786469, 30.765099), ST_AsGeoJSON(ST_MakePoint(-97.786469, 30.765099))),
(333, ' CR 236 / CR 208', 'address', 'description', ST_MakePoint(-97.930092, 30.816826), ST_AsGeoJSON(ST_MakePoint(-97.930092, 30.816826))),
(334, ' CR 204 / CR 200', 'address', 'description', ST_MakePoint(-97.936462, 30.754763), ST_AsGeoJSON(ST_MakePoint(-97.936462, 30.754763))),
(335, 'SAN GABRIEL RANCH RD / SAN GABRIEL RANCH RD', 'address', 'description', ST_MakePoint(-97.909195, 30.707323), ST_AsGeoJSON(ST_MakePoint(-97.909195, 30.707323))),
(336, ' BRUSHY CREEK RD / BRUSHY BEND DR', 'address', 'description', ST_MakePoint(-97.745033, 30.519209), ST_AsGeoJSON(ST_MakePoint(-97.745033, 30.519209))),
(337, 'WEST OF BRUSHY BEND DR / BRUSHY CREEK RD', 'address', 'description', ST_MakePoint(-97.745857, 30.518866), ST_AsGeoJSON(ST_MakePoint(-97.745857, 30.518866))),
(338, 'CR 272/BRUSHY CREEK', 'address', 'description', ST_MakePoint(-97.779129, 30.539675), ST_AsGeoJSON(ST_MakePoint(-97.779129, 30.539675))),
(339, ' KAUFFMAN LOOP / CR 267', 'address', 'description', ST_MakePoint(-97.845818, 30.617039), ST_AsGeoJSON(ST_MakePoint(-97.845818, 30.617039))),
(340, 'CR 281 / CR 279', 'address', 'description', ST_MakePoint(-97.904335, 30.628489), ST_AsGeoJSON(ST_MakePoint(-97.904335, 30.628489))),
(341, ' CR 346 / CR 279', 'address', 'description', ST_MakePoint(-97.419357, 30.701603), ST_AsGeoJSON(ST_MakePoint(-97.419357, 30.701603))),
(342, ' CR 347 / CR 348', 'address', 'description', ST_MakePoint(-97.422028, 30.708214), ST_AsGeoJSON(ST_MakePoint(-97.422028, 30.708214))),
(343, '840 ft NORTH OF CR 438 / CR 434', 'address', 'description', ST_MakePoint(-97.229271, 30.553251), ST_AsGeoJSON(ST_MakePoint(-97.229271, 30.553251))),
(344, '1390 ft SOUTH OF CR 436 / CR 434', 'address', 'description', ST_MakePoint(-97.231003, 30.555593), ST_AsGeoJSON(ST_MakePoint(-97.231003, 30.555593))),
(345, '250 ft EAST OF CR 436 / CR 434', 'address', 'description', ST_MakePoint(-97.233002, 30.558199), ST_AsGeoJSON(ST_MakePoint(-97.233002, 30.558199))),
(346, 'CR 414 / CR 424', 'address', 'description', ST_MakePoint(-97.310989, 30.623293), ST_AsGeoJSON(ST_MakePoint(-97.310989, 30.623293))),
(347, '470 ft WEST OF CR 417 / CR 416', 'address', 'description', ST_MakePoint(-97.365608, 30.652655), ST_AsGeoJSON(ST_MakePoint(-97.365608, 30.652655))),
(348, 'CR 493 / CR 361', 'address', 'description', ST_MakePoint(-97.282036, 30.702215), ST_AsGeoJSON(ST_MakePoint(-97.282036, 30.702215))),
(349, 'CR 363', 'address', 'description', ST_MakePoint(-97.287689, 30.737436), ST_AsGeoJSON(ST_MakePoint(-97.287689, 30.737436))),
(350, 'CR 350 / CR 351', 'address', 'description', ST_MakePoint(-97.396248, 30.775734), ST_AsGeoJSON(ST_MakePoint(-97.396248, 30.775734))),
(351, 'SH 95 / CR 351', 'address', 'description', ST_MakePoint(-97.426132, 30.784943), ST_AsGeoJSON(ST_MakePoint(-97.426132, 30.784943))),
(352, ' N RED BUD LN / N CR 122', 'address', 'description', ST_MakePoint(-97.609543, 30.553429), ST_AsGeoJSON(ST_MakePoint(-97.609543, 30.553429))),
(353, ' LIMMER LOOP / CR 108', 'address', 'description', ST_MakePoint(-97.571274, 30.555363), ST_AsGeoJSON(ST_MakePoint(-97.571274, 30.555363))),
(354, 'US 79 / CR 110', 'address', 'description', ST_MakePoint(-97.601257, 30.536390), ST_AsGeoJSON(ST_MakePoint(-97.601257, 30.536390))),
(355, '385 ft CR 160 / CR 101', 'address', 'description', ST_MakePoint(-97.497696, 30.584658), ST_AsGeoJSON(ST_MakePoint(-97.497696, 30.584658))),
(356, '1122 ft WEST OF CR 101 / CR 369', 'address', 'description', ST_MakePoint(-97.493073, 30.582775), ST_AsGeoJSON(ST_MakePoint(-97.493073, 30.582775))),
(357, '2300 ft EAST OF CR 368 / CR 369', 'address', 'description', ST_MakePoint(-97.468796, 30.594105), ST_AsGeoJSON(ST_MakePoint(-97.468796, 30.594105))),
(358, '142  MAIN ST / CR 365', 'address', 'description', ST_MakePoint(-97.425888, 30.612009), ST_AsGeoJSON(ST_MakePoint(-97.425888, 30.612009))),
(359, '1370 ft SOUTH OF FM 972 / CR 301', 'address', 'description', ST_MakePoint(-97.469620, 30.759796), ST_AsGeoJSON(ST_MakePoint(-97.469620, 30.759796))),
(360, 'CR 384 / CR 321', 'address', 'description', ST_MakePoint(-97.516914, 30.773142), ST_AsGeoJSON(ST_MakePoint(-97.516914, 30.773142))),
(361, 'CR 382 / CR 321', 'address', 'description', ST_MakePoint(-97.523506, 30.773922), ST_AsGeoJSON(ST_MakePoint(-97.523506, 30.773922))),
(362, ' CR 302 / CR 343', 'address', 'description', ST_MakePoint(-97.496445, 30.776949), ST_AsGeoJSON(ST_MakePoint(-97.496445, 30.776949))),
(363, ' CR 302 / CR 384', 'address', 'description', ST_MakePoint(-97.511070, 30.786507), ST_AsGeoJSON(ST_MakePoint(-97.511070, 30.786507))),
(364, ' 487 / CR 384', 'address', 'description', ST_MakePoint(-97.503098, 30.808092), ST_AsGeoJSON(ST_MakePoint(-97.503098, 30.808092))),
(365, '1465 ft NORTH OF FM 487 / CR 303 NORTH OF FM 487', 'address', 'description', ST_MakePoint(-97.562256, 30.835255), ST_AsGeoJSON(ST_MakePoint(-97.562256, 30.835255))),
(366, 'CR 140 / CR 149', 'address', 'description', ST_MakePoint(-97.605507, 30.699381), ST_AsGeoJSON(ST_MakePoint(-97.605507, 30.699381))),
(367, ' CR 152 @ LONNIE THOMAS', 'address', 'description', ST_MakePoint(-97.649773, 30.667727), ST_AsGeoJSON(ST_MakePoint(-97.649773, 30.667727))),
(368, ' CR 202 / CR 200', 'address', 'description', ST_MakePoint(-97.936562, 30.737272), ST_AsGeoJSON(ST_MakePoint(-97.936562, 30.737272))),
(369, 'CR 140 / CR 149', 'address', 'description', ST_MakePoint(-97.612869, 30.697081), ST_AsGeoJSON(ST_MakePoint(-97.612869, 30.697081))),
(370, 'SH 29 / CR 266', 'address', 'description', ST_MakePoint(-97.845818, 30.617039), ST_AsGeoJSON(ST_MakePoint(-97.845818, 30.617039))),
(371, ' FM 1331 / CR 428', 'address', 'description', ST_MakePoint(-97.321938, 30.679565), ST_AsGeoJSON(ST_MakePoint(-97.321938, 30.679565))),
(372, 'CR 137 / CR 137', 'address', 'description', ST_MakePoint(-97.548454, 30.507570), ST_AsGeoJSON(ST_MakePoint(-97.548454, 30.507570))),
(373, 'CR 105 / CR 105', 'address', 'description', ST_MakePoint(-97.586250, 30.615997), ST_AsGeoJSON(ST_MakePoint(-97.586250, 30.615997))),
(374, 'FM 1660 AT COTTONWOOD CREEK / FM 1660', 'address', 'description', ST_MakePoint(-97.527565, 30.512360), ST_AsGeoJSON(ST_MakePoint(-97.527565, 30.512360))),
(375, 'FM 685 AT BRUSHY CREEK / FM 685', 'address', 'description', ST_MakePoint(-97.566811, 30.526350), ST_AsGeoJSON(ST_MakePoint(-97.566811, 30.526350))),
(376, 'CR 129 AT BRUSHY CREEK / CR 129', 'address', 'description', ST_MakePoint(-97.499069, 30.489567), ST_AsGeoJSON(ST_MakePoint(-97.499069, 30.489567))),
(415, '1400 Blk Nature Heights Dr', 'address', 'description', ST_MakePoint(-98.268562, 30.599077), ST_AsGeoJSON(ST_MakePoint(-98.268562, 30.599077))),
(416, '1200 Blk Mission Hill Dr.', 'address', 'description', ST_MakePoint(-98.275215, 30.582359), ST_AsGeoJSON(ST_MakePoint(-98.275215, 30.582359))),
(417, '1700 Blk Broadway St Bridge', 'address', 'description', ST_MakePoint(-98.284653, 30.581682), ST_AsGeoJSON(ST_MakePoint(-98.284653, 30.581682))),
(418, '2100 Blk Broadway St', 'address', 'description', ST_MakePoint(-98.288109, 30.583336), ST_AsGeoJSON(ST_MakePoint(-98.288109, 30.583336))),
(419, '1300 Blk Broadway St', 'address', 'description', ST_MakePoint(-98.278419, 30.578560), ST_AsGeoJSON(ST_MakePoint(-98.278419, 30.578560))),
(420, '800 Blk Ave J', 'address', 'description', ST_MakePoint(-98.275375, 30.577234), ST_AsGeoJSON(ST_MakePoint(-98.275375, 30.577234))),
(421, '800 Blk Main St.', 'address', 'description', ST_MakePoint(-98.274132, 30.576857), ST_AsGeoJSON(ST_MakePoint(-98.274132, 30.576857))),
(422, '1500 Blk 2nd St', 'address', 'description', ST_MakePoint(-98.284576, 30.574352), ST_AsGeoJSON(ST_MakePoint(-98.284576, 30.574352))),
(423, '800 Blk Lake Shore Dr.', 'address', 'description', ST_MakePoint(-98.283867, 30.562025), ST_AsGeoJSON(ST_MakePoint(-98.283867, 30.562025))),
(424, '1100 Blk Yett St.', 'address', 'description', ST_MakePoint(-98.281143, 30.570227), ST_AsGeoJSON(ST_MakePoint(-98.281143, 30.570227))),
(426, '800 Blk Ave L', 'address', 'description', ST_MakePoint(-98.277336, 30.578644), ST_AsGeoJSON(ST_MakePoint(-98.277336, 30.578644))),
(427, '100 Blk S Avenue S Bridge', 'address', 'description', ST_MakePoint(-98.290871, 30.573744), ST_AsGeoJSON(ST_MakePoint(-98.290871, 30.573744))),
(428, '100 Blk S Ave N (Huber)', 'address', 'description', ST_MakePoint(-98.286026, 30.570494), ST_AsGeoJSON(ST_MakePoint(-98.286026, 30.570494))),
(429, '300 Blk Avenue S', 'address', 'description', ST_MakePoint(-98.288307, 30.577681), ST_AsGeoJSON(ST_MakePoint(-98.288307, 30.577681))),
(430, '1100 Blk 3rd St Bridge', 'address', 'description', ST_MakePoint(-98.279320, 30.572729), ST_AsGeoJSON(ST_MakePoint(-98.279320, 30.572729))),
(431, '1700 Blk US Highway 281 Bridge', 'address', 'description', ST_MakePoint(-98.273964, 30.588221), ST_AsGeoJSON(ST_MakePoint(-98.273964, 30.588221))),
(432, '1300 Blk RM - 1431 Bridge', 'address', 'description', ST_MakePoint(-98.278038, 30.580851), ST_AsGeoJSON(ST_MakePoint(-98.278038, 30.580851))),
(433, '800 Blk Hwy 281 Bridge', 'address', 'description', ST_MakePoint(-98.273430, 30.576721), ST_AsGeoJSON(ST_MakePoint(-98.273430, 30.576721))),
(434, '900 Blk RM - 1431 Bridge', 'address', 'description', ST_MakePoint(-98.272041, 30.578403), ST_AsGeoJSON(ST_MakePoint(-98.272041, 30.578403))),
(435, '700 Blk 12th St Bridge', 'address', 'description', ST_MakePoint(-98.270065, 30.579365), ST_AsGeoJSON(ST_MakePoint(-98.270065, 30.579365))),
(436, '1200 Blk Arbor Ln.', 'address', 'description', ST_MakePoint(-98.282784, 30.587086), ST_AsGeoJSON(ST_MakePoint(-98.282784, 30.587086))),
(437, 'Johnson Park Bridge', 'address', 'description', ST_MakePoint(-98.280884, 30.568752), ST_AsGeoJSON(ST_MakePoint(-98.280884, 30.568752))),
(438, '1100 Blk 2nd St Bridge', 'address', 'description', ST_MakePoint(-98.279953, 30.572062), ST_AsGeoJSON(ST_MakePoint(-98.279953, 30.572062))),
(439, '1100 Blk 4th St Bridge', 'address', 'description', ST_MakePoint(-98.280518, 30.574530), ST_AsGeoJSON(ST_MakePoint(-98.280518, 30.574530))),
(440, '900 Blk Avenue H', 'address', 'description', ST_MakePoint(-98.272057, 30.577091), ST_AsGeoJSON(ST_MakePoint(-98.272057, 30.577091))),
(441, '1500 Blk Resource Pkwy', 'address', 'description', ST_MakePoint(-98.264015, 30.616772), ST_AsGeoJSON(ST_MakePoint(-98.264015, 30.616772))),
(442, '1900 Blk RM - 1431 Bridge', 'address', 'description', ST_MakePoint(-98.284515, 30.584019), ST_AsGeoJSON(ST_MakePoint(-98.284515, 30.584019))),
(443, '2000 Blk 4th St', 'address', 'description', ST_MakePoint(-98.289345, 30.578768), ST_AsGeoJSON(ST_MakePoint(-98.289345, 30.578768))),
(444, '2000 Blk 5th St', 'address', 'description', ST_MakePoint(-98.287811, 30.579531), ST_AsGeoJSON(ST_MakePoint(-98.287811, 30.579531))),
(445, '400 - 700 Blk Avenue T', 'address', 'description', ST_MakePoint(-98.288147, 30.580151), ST_AsGeoJSON(ST_MakePoint(-98.288147, 30.580151))),
(446, '2000 Blk 7th St.', 'address', 'description', ST_MakePoint(-98.287689, 30.581942), ST_AsGeoJSON(ST_MakePoint(-98.287689, 30.581942))),
(447, '800 Blk Ave U', 'address', 'description', ST_MakePoint(-98.288437, 30.582624), ST_AsGeoJSON(ST_MakePoint(-98.288437, 30.582624))),
(449, 'Montell Rd (CR 339) E of Angostura Ln ', 'address', 'description', ST_MakePoint(-98.243378, 30.118563), ST_AsGeoJSON(ST_MakePoint(-98.243378, 30.118563))),
(450, 'Circle Dr - S of Sandy Point Rd', 'address', 'description', ST_MakePoint(-98.216927, 30.046593), ST_AsGeoJSON(ST_MakePoint(-98.216927, 30.046593))),
(451, 'PETRAS WAY - BETWEEN MONTZ PT & STEPHANIES TRL', 'address', 'description', ST_MakePoint(-97.750755, 30.037531), ST_AsGeoJSON(ST_MakePoint(-97.750755, 30.037531))),
(452, 'DACY LN (CR 205) - .5 MI N OF WINDY HILL RD', 'address', 'description', ST_MakePoint(-97.828224, 30.038677), ST_AsGeoJSON(ST_MakePoint(-97.828224, 30.038677))),
(453, 'RED OAK RD - .25 MI W OF OAK GROVE RD', 'address', 'description', ST_MakePoint(-97.911537, 30.113346), ST_AsGeoJSON(ST_MakePoint(-97.911537, 30.113346))),
(454, 'BELL SPRINGS RD (SOUTH) -  .5 MI N OF HARMON HILLS RD', 'address', 'description', ST_MakePoint(-98.121185, 30.228535), ST_AsGeoJSON(ST_MakePoint(-98.121185, 30.228535))),
(455, 'MARTIN RD (CR188) - .5 MI W OF PLANT LADY LN', 'address', 'description', ST_MakePoint(-98.179192, 30.220041), ST_AsGeoJSON(ST_MakePoint(-98.179192, 30.220041))),
(456, 'LONGVIEW RD - .5 MI S OF TWIN CREEK RD', 'address', 'description', ST_MakePoint(-98.194405, 30.251295), ST_AsGeoJSON(ST_MakePoint(-98.194405, 30.251295))),
(457, 'PAISANO TRL - WEST OF TRAIL DRIVER', 'address', 'description', ST_MakePoint(-98.012436, 30.222067), ST_AsGeoJSON(ST_MakePoint(-98.012436, 30.222067))),
(458, 'SATTERWHITE RD (CR 107) - .5 E OF FM 2OO1', 'address', 'description', ST_MakePoint(-97.794724, 30.061136), ST_AsGeoJSON(ST_MakePoint(-97.794724, 30.061136))),
(459, 'SATTERWHITE RD - .66 MI W OF WILLIAMSON RD', 'address', 'description', ST_MakePoint(-97.768005, 30.048773), ST_AsGeoJSON(ST_MakePoint(-97.768005, 30.048773))),
(460, 'SCHUBERT LN - .5 MI N OF NEIDERWALD STRASSE', 'address', 'description', ST_MakePoint(-97.729103, 30.018488), ST_AsGeoJSON(ST_MakePoint(-97.729103, 30.018488))),
(461, 'COTTON GIN RD - .66 MI N OF DAIRY RD', 'address', 'description', ST_MakePoint(-97.816856, 29.984154), ST_AsGeoJSON(ST_MakePoint(-97.816856, 29.984154))),
(462, 'COTTON GIN RD AND DAIRY RD', 'address', 'description', ST_MakePoint(-97.808655, 29.976870), ST_AsGeoJSON(ST_MakePoint(-97.808655, 29.976870))),
(463, 'REDWOOD RD (CR 232) - S OF OLD BASTROP HWY', 'address', 'description', ST_MakePoint(-97.928429, 29.833851), ST_AsGeoJSON(ST_MakePoint(-97.928429, 29.833851))),
(465, 'DACY LN (CR 205) - .25 MI N OF KELLEY SMITH LN (CR 149)', 'address', 'description', ST_MakePoint(-97.828293, 30.043983), ST_AsGeoJSON(ST_MakePoint(-97.828293, 30.043983))),
(466, 'WINDY HILL RD (CR 131) - W of Palomino Rd (CR 124)', 'address', 'description', ST_MakePoint(-97.810860, 30.031456), ST_AsGeoJSON(ST_MakePoint(-97.810860, 30.031456))),
(467, 'GOFORTH RD (CR 157) - JUST N OF ROHDE RD (CR 126)', 'address', 'description', ST_MakePoint(-97.784599, 30.029179), ST_AsGeoJSON(ST_MakePoint(-97.784599, 30.029179))),
(468, 'S QUAIL RUN - JUST S OF RED BIRD DR', 'address', 'description', ST_MakePoint(-97.792358, 30.040094), ST_AsGeoJSON(ST_MakePoint(-97.792358, 30.040094))),
(469, 'WINDY HILL RD (CR 131) - JUST S OF FM 2001', 'address', 'description', ST_MakePoint(-97.803452, 30.044287), ST_AsGeoJSON(ST_MakePoint(-97.803452, 30.044287))),
(470, 'BLACKBIRD LN - JUST N OF HOWARD LN', 'address', 'description', ST_MakePoint(-97.796776, 30.041714), ST_AsGeoJSON(ST_MakePoint(-97.796776, 30.041714))),
(471, 'ROLLING HILLS DR - .25 MI W OF FM 2001', 'address', 'description', ST_MakePoint(-97.795776, 30.041094), ST_AsGeoJSON(ST_MakePoint(-97.795776, 30.041094))),
(472, 'HILLSIDE TERR - .75 MI W OF FM 2001', 'address', 'description', ST_MakePoint(-97.816498, 30.058584), ST_AsGeoJSON(ST_MakePoint(-97.816498, 30.058584))),
(473, 'MARTIN RD (CR 188) - .10 MI S OF WINDY HILLS RD', 'address', 'description', ST_MakePoint(-98.184196, 30.211290), ST_AsGeoJSON(ST_MakePoint(-98.184196, 30.211290))),
(474, 'SATTERWHITE RD (CR 107) - .20 MI W OF WILLIAMSON RD (CR 120)', 'address', 'description', ST_MakePoint(-97.764038, 30.042793), ST_AsGeoJSON(ST_MakePoint(-97.764038, 30.042793))),
(475, 'OLD WEST TRAIL - .20 MI S OF FM 2001', 'address', 'description', ST_MakePoint(-97.816040, 30.068115), ST_AsGeoJSON(ST_MakePoint(-97.816040, 30.068115))),
(476, 'RICH LN - .25 MI E OF TURNERSVILLE RD (CR 212)', 'address', 'description', ST_MakePoint(-97.777069, 30.066278), ST_AsGeoJSON(ST_MakePoint(-97.777069, 30.066278))),
(477, 'TURNERSVILLE RD (CR 212) - .33 MI N OF RICH LN', 'address', 'description', ST_MakePoint(-97.781357, 30.072577), ST_AsGeoJSON(ST_MakePoint(-97.781357, 30.072577))),
(478, 'HARRIS HILL RD (CR 160) - .75 MI W OF SOUTHPOINT DR', 'address', 'description', ST_MakePoint(-97.889542, 29.908024), ST_AsGeoJSON(ST_MakePoint(-97.889542, 29.908024))),
(479, 'HARRIS HILL RD (CR 160) - .25 MI W OF HWY 21', 'address', 'description', ST_MakePoint(-97.883858, 29.895720), ST_AsGeoJSON(ST_MakePoint(-97.883858, 29.895720))),
(480, 'SATTERWHITE RD (CR 107) - .5 MI E OF S TURNERSVILLE RD (CR 212)', 'address', 'description', ST_MakePoint(-97.770607, 30.056059), ST_AsGeoJSON(ST_MakePoint(-97.770607, 30.056059))),
(481, 'S TURNSERSVILLE RD (CR 212) - .5 MI S OF SATTERWHITE RD (CR 107)', 'address', 'description', ST_MakePoint(-97.780602, 30.055243), ST_AsGeoJSON(ST_MakePoint(-97.780602, 30.055243))),
(483, 'SATTERWHITE RD (CR 107) - BETWEEN BOTH S TURNERSVILLE RDS', 'address', 'description', ST_MakePoint(-97.779701, 30.060678), ST_AsGeoJSON(ST_MakePoint(-97.779701, 30.060678))),
(484, 'SATTERWHITE RD (CR 107) - 1.25 MI E OF FM 2001 (BEFORE S TURNERSVILLE)', 'address', 'description', ST_MakePoint(-97.783516, 30.061365), ST_AsGeoJSON(ST_MakePoint(-97.783516, 30.061365))),
(485, 'PETRAS WAY - BETWEEN PETRAS CV AND PEGGYS TRL', 'address', 'description', ST_MakePoint(-97.753822, 30.039825), ST_AsGeoJSON(ST_MakePoint(-97.753822, 30.039825))),
(486, 'SCHUBERT LN (CR 211) - .5 MI W OF HWY 21', 'address', 'description', ST_MakePoint(-97.721024, 30.023180), ST_AsGeoJSON(ST_MakePoint(-97.721024, 30.023180))),
(487, 'GRIST MILL RD (CR 153) - .5 MI W OF HWY 21, JUST BEFORE S PLUM CREEK RD (CR 156)', 'address', 'description', ST_MakePoint(-97.805481, 29.951456), ST_AsGeoJSON(ST_MakePoint(-97.805481, 29.951456))),
(488, 'S PLUM CREEK RD (CR 156) - JUST E OF GRIST MILL RD (CR 153)', 'address', 'description', ST_MakePoint(-97.805038, 29.952936), ST_AsGeoJSON(ST_MakePoint(-97.805038, 29.952936))),
(489, 'GRIST MILL RD (CR 153) - .75 MI W OF S PLUM CREEK RD (CR 156)', 'address', 'description', ST_MakePoint(-97.814911, 29.959692), ST_AsGeoJSON(ST_MakePoint(-97.814911, 29.959692))),
(490, 'WINDY HILL RD (CR 131) - .5 MI W OF PALOMINO RD (CR 124)', 'address', 'description', ST_MakePoint(-97.819214, 30.030495), ST_AsGeoJSON(ST_MakePoint(-97.819214, 30.030495))),
(491, 'GATLIN CREEK RD (SOUTH OF MT GAINOR) AT SOUTH ONION CREEK', 'address', 'description', ST_MakePoint(-98.136330, 30.142319), ST_AsGeoJSON(ST_MakePoint(-98.136330, 30.142319))),
(492, 'PALOMA CIR - S OF DOVE HOLLOW DR', 'address', 'description', ST_MakePoint(-97.892113, 30.019053), ST_AsGeoJSON(ST_MakePoint(-97.892113, 30.019053))),
(493, 'TURTLEDOVE CIR - S OF DOVE HOLLOW DR', 'address', 'description', ST_MakePoint(-97.893333, 30.018843), ST_AsGeoJSON(ST_MakePoint(-97.893333, 30.018843))),
(494, 'CYPRESS RD - 1.75 MI W OF OLD STAGECOACH RD', 'address', 'description', ST_MakePoint(-97.917130, 29.992199), ST_AsGeoJSON(ST_MakePoint(-97.917130, 29.992199))),
(495, 'TALL OAKS TRL - 800 FT N OF LAUREL HILL ST', 'address', 'description', ST_MakePoint(-97.989250, 30.215183), ST_AsGeoJSON(ST_MakePoint(-97.989250, 30.215183))),
(496, 'LAUREL HILL ST - 800 FT E OF TALL OAKS TRL', 'address', 'description', ST_MakePoint(-97.987038, 30.214270), ST_AsGeoJSON(ST_MakePoint(-97.987038, 30.214270))),
(497, 'PAULS VALLEY RD - .75 MI SW OF FITZHUGH RD (CR 101)', 'address', 'description', ST_MakePoint(-98.012878, 30.229668), ST_AsGeoJSON(ST_MakePoint(-98.012878, 30.229668))),
(498, 'FITZHUGH RD (CR 101) - .25 MI W  OF S OAK FOREST DR', 'address', 'description', ST_MakePoint(-98.113197, 30.255049), ST_AsGeoJSON(ST_MakePoint(-98.113197, 30.255049))),
(499, 'OAK HOLLOW LN - JUST E OF MOURNING DOVE LN', 'address', 'description', ST_MakePoint(-97.896545, 30.106146), ST_AsGeoJSON(ST_MakePoint(-97.896545, 30.106146))),
(500, 'FM 1626 - BETWEEN LAKEWOOD DR & EAGLE NEST DR (CITY OF HAYS)', 'address', 'description', ST_MakePoint(-97.862167, 30.125540), ST_AsGeoJSON(ST_MakePoint(-97.862167, 30.125540))),
(501, 'LAKESIDE DR (CR 343) - 1 MI E OF MONTELL RD (CR 339)', 'address', 'description', ST_MakePoint(-98.226723, 30.113211), ST_AsGeoJSON(ST_MakePoint(-98.226723, 30.113211))),
(502, 'E CREEK DR - .25 MI S OF UPPER BRANCH CV', 'address', 'description', ST_MakePoint(-98.051674, 30.187426), ST_AsGeoJSON(ST_MakePoint(-98.051674, 30.187426))),
(503, 'FRANCIS HARRIS LN (CR 265) - .25 MI S OF VALLEY ACRES DR', 'address', 'description', ST_MakePoint(-97.998878, 29.756277), ST_AsGeoJSON(ST_MakePoint(-97.998878, 29.756277))),
(505, 'YORK CREEK RD (CR 262) - .25 MI N OF FRANCIS HARRIS LN (CR 265)', 'address', 'description', ST_MakePoint(-97.994179, 29.762884), ST_AsGeoJSON(ST_MakePoint(-97.994179, 29.762884))),
(506, 'YORK CREEK RD (CR 262) - .66 MI N OF FRANCIS HARRIS LN (CR 265)', 'address', 'description', ST_MakePoint(-97.998238, 29.768808), ST_AsGeoJSON(ST_MakePoint(-97.998238, 29.768808))),
(507, 'YORK CREEK RD (CR 262) - .25 MI S OF SOECHTING LN', 'address', 'description', ST_MakePoint(-98.002785, 29.771360), ST_AsGeoJSON(ST_MakePoint(-98.002785, 29.771360))),
(509, 'OLD MARTINDALE RD (CR 295) AT BLANCO RIVER', 'address', 'description', ST_MakePoint(-97.915611, 29.871346), ST_AsGeoJSON(ST_MakePoint(-97.915611, 29.871346))),
(510, 'OLD BASTROP HWY (CR 266) - AT MILLERS LAKE', 'address', 'description', ST_MakePoint(-97.936684, 29.831358), ST_AsGeoJSON(ST_MakePoint(-97.936684, 29.831358))),
(511, 'ROLLING OAKS - BETWEEN CORRIE CT & WILLOW CREEK CIR', 'address', 'description', ST_MakePoint(-97.982445, 29.858175), ST_AsGeoJSON(ST_MakePoint(-97.982445, 29.858175))),
(512, 'MCCARTY LN (CR233) - .25 MI W OF PHILO ST', 'address', 'description', ST_MakePoint(-97.988823, 29.853956), ST_AsGeoJSON(ST_MakePoint(-97.988823, 29.853956))),
(514, 'POST RD (CR 140) - AT BLANCO RIVER', 'address', 'description', ST_MakePoint(-97.895134, 29.937107), ST_AsGeoJSON(ST_MakePoint(-97.895134, 29.937107))),
(515, 'LIME KILN RD - 1 MI W OF POST RD, JUST S OF WINDMERE RD', 'address', 'description', ST_MakePoint(-97.930176, 29.905729), ST_AsGeoJSON(ST_MakePoint(-97.930176, 29.905729))),
(516, 'FULTON RANCH RD (CR 213) - 1.25 MI N OF RR 12', 'address', 'description', ST_MakePoint(-98.009201, 29.924425), ST_AsGeoJSON(ST_MakePoint(-98.009201, 29.924425))),
(517, 'HUGO RD (CR 214) - 1 MI W OF RR 12', 'address', 'description', ST_MakePoint(-98.064285, 29.909199), ST_AsGeoJSON(ST_MakePoint(-98.064285, 29.909199))),
(518, 'HUGO RD (CR 214) - 1.5 MI W OF RR 12', 'address', 'description', ST_MakePoint(-98.067940, 29.908873), ST_AsGeoJSON(ST_MakePoint(-98.067940, 29.908873))),
(519, 'HUGO RD (CR 214) - 2 MI W OF RR 12', 'address', 'description', ST_MakePoint(-98.073715, 29.906651), ST_AsGeoJSON(ST_MakePoint(-98.073715, 29.906651))),
(520, 'CASCADE TRL - .25 MI S OF OZARK DR', 'address', 'description', ST_MakePoint(-98.079987, 29.918730), ST_AsGeoJSON(ST_MakePoint(-98.079987, 29.918730))),
(521, 'HUGO RD (CR 214) - JUST W OF CASCADE TRL', 'address', 'description', ST_MakePoint(-98.094490, 29.905626), ST_AsGeoJSON(ST_MakePoint(-98.094490, 29.905626))),
(522, 'HUGO RD (CR 214) - .25 MI W OF CASCADE TRL', 'address', 'description', ST_MakePoint(-98.098701, 29.907227), ST_AsGeoJSON(ST_MakePoint(-98.098701, 29.907227))),
(523, 'HUGO RD (CR 214) - .5 MI W OF CASCADE TRL', 'address', 'description', ST_MakePoint(-98.102379, 29.910919), ST_AsGeoJSON(ST_MakePoint(-98.102379, 29.910919))),
(524, 'HUGO RD (CR 214) - .5 MI E OF PURGATORY RD (CR 215)', 'address', 'description', ST_MakePoint(-98.113235, 29.916311), ST_AsGeoJSON(ST_MakePoint(-98.113235, 29.916311))),
(525, 'PURGATORY RD (CR 215) JUST S OF HUGO RD (CR 214)', 'address', 'description', ST_MakePoint(-98.121399, 29.917351), ST_AsGeoJSON(ST_MakePoint(-98.121399, 29.917351))),
(526, 'PURGATORY RD (CR 215) - .25 MI N OF HUGO RD (CR 214)', 'address', 'description', ST_MakePoint(-98.123192, 29.919334), ST_AsGeoJSON(ST_MakePoint(-98.123192, 29.919334))),
(527, 'PURGATORY RD (CR 215) - .5 MI S OF RR 12', 'address', 'description', ST_MakePoint(-98.125870, 29.924625), ST_AsGeoJSON(ST_MakePoint(-98.125870, 29.924625))),
(528, 'PURGATORY RD (CR 215) - JUST S OF RR 12', 'address', 'description', ST_MakePoint(-98.129829, 29.931902), ST_AsGeoJSON(ST_MakePoint(-98.129829, 29.931902))),
(529, 'S PLUM CREEK RD (CR 156) - .5 MI W OF COTTON GIN RD (CR 129)', 'address', 'description', ST_MakePoint(-97.798225, 29.960394), ST_AsGeoJSON(ST_MakePoint(-97.798225, 29.960394))),
(530, 'HEIDENREICH LN (CR 152) - 1 MI N OF RR 150', 'address', 'description', ST_MakePoint(-97.830627, 29.963371), ST_AsGeoJSON(ST_MakePoint(-97.830627, 29.963371))),
(531, 'CR 158 - 1.5 MI N OF YARRINGTON RD AT CLEAR FORK PLUM CREEK', 'address', 'description', ST_MakePoint(-97.846680, 29.941181), ST_AsGeoJSON(ST_MakePoint(-97.846680, 29.941181))),
(532, 'BUNTON LN (CR 151) - .75 MI S OF GOFORTH RD', 'address', 'description', ST_MakePoint(-97.834679, 29.985933), ST_AsGeoJSON(ST_MakePoint(-97.834679, 29.985933))),
(533, 'BUNTON LN (CR 151) - 1 MI S OF GOFORTH RD', 'address', 'description', ST_MakePoint(-97.830818, 29.982611), ST_AsGeoJSON(ST_MakePoint(-97.830818, 29.982611))),
(534, 'BUNTON LN (CR 151) - 1.25 MI S OF GOFORTH RD', 'address', 'description', ST_MakePoint(-97.829376, 29.981382), ST_AsGeoJSON(ST_MakePoint(-97.829376, 29.981382))),
(535, 'HEIDENREICH LN (CR 152) - JUST W OF BUNTON LN (CR 151)', 'address', 'description', ST_MakePoint(-97.818245, 29.971544), ST_AsGeoJSON(ST_MakePoint(-97.818245, 29.971544))),
(536, 'DAIRY RD (CR 151) - .25 MI W OF COTTON GIN RD (CR 129)', 'address', 'description', ST_MakePoint(-97.812523, 29.973518), ST_AsGeoJSON(ST_MakePoint(-97.812523, 29.973518))),
(537, 'COTTON GIN RD (CR 129) - 1 MI E OF GOFORTH RD', 'address', 'description', ST_MakePoint(-97.824341, 29.990545), ST_AsGeoJSON(ST_MakePoint(-97.824341, 29.990545))),
(538, 'LITTLE ARKANSAS RD (CR 174) - 2.25 MI E OF FULTON RANCH RD (CR 213)', 'address', 'description', ST_MakePoint(-98.022552, 29.984943), ST_AsGeoJSON(ST_MakePoint(-98.022552, 29.984943))),
(539, 'LITTLE ARKANSAS RD (CR 174) - 2 MI E OF FULTON RANCH RD (CR 213)', 'address', 'description', ST_MakePoint(-98.031418, 29.983168), ST_AsGeoJSON(ST_MakePoint(-98.031418, 29.983168))),
(540, 'SPOKE HOLLOW RD (CR 314) - .25 MI W OF HIDDEN VALLEY RD (CR 217)', 'address', 'description', ST_MakePoint(-98.069832, 29.983879), ST_AsGeoJSON(ST_MakePoint(-98.069832, 29.983879))),
(541, 'GREEN ACRES DR (CR 279) - .25 MI N OF WAYSIDE DR (CR 179)', 'address', 'description', ST_MakePoint(-98.111191, 29.991013), ST_AsGeoJSON(ST_MakePoint(-98.111191, 29.991013))),
(542, 'PINION TRL - 1 MI W OF CARNEY LN (CR 278)', 'address', 'description', ST_MakePoint(-98.125969, 29.998375), ST_AsGeoJSON(ST_MakePoint(-98.125969, 29.998375))),
(543, 'WAYSIDE DR (CR 179) - .25 MI E OF THOMPSON RANCH RD', 'address', 'description', ST_MakePoint(-98.152466, 29.982210), ST_AsGeoJSON(ST_MakePoint(-98.152466, 29.982210))),
(544, 'WAYSIDE DR (CR 179) - BETWEEN THOMPSON RANCH RD AND RIDGE OAK DR', 'address', 'description', ST_MakePoint(-98.156998, 29.982187), ST_AsGeoJSON(ST_MakePoint(-98.156998, 29.982187))),
(545, 'RIDGE OAK DR - .75 MI S OF WAYSIDE DR (CR 179)', 'address', 'description', ST_MakePoint(-98.157166, 29.972404), ST_AsGeoJSON(ST_MakePoint(-98.157166, 29.972404))),
(546, 'THOMAS OAKS DR - .5 MI W OF RIDGE OAKS DR', 'address', 'description', ST_MakePoint(-98.162575, 29.976562), ST_AsGeoJSON(ST_MakePoint(-98.162575, 29.976562))),
(547, 'WAYSIDE DR (CR 179) - .5 MI W OF RIDGE OAK DR', 'address', 'description', ST_MakePoint(-98.164848, 29.979439), ST_AsGeoJSON(ST_MakePoint(-98.164848, 29.979439))),
(548, 'THOMPSON RANCH RD - .20 MI N OF BIG BEND DR', 'address', 'description', ST_MakePoint(-98.150520, 29.995731), ST_AsGeoJSON(ST_MakePoint(-98.150520, 29.995731))),
(549, 'WAYSIDE DR (CR 179) - AT BLANCO RIVER', 'address', 'description', ST_MakePoint(-98.189484, 29.967382), ST_AsGeoJSON(ST_MakePoint(-98.189484, 29.967382))),
(550, 'GREEN PASTURES DR - .20 MI W OF LAKELAND DR', 'address', 'description', ST_MakePoint(-97.801247, 30.012817), ST_AsGeoJSON(ST_MakePoint(-97.801247, 30.012817))),
(551, 'DICKERSON RD - .20 MI W OF LAKELAND DR', 'address', 'description', ST_MakePoint(-97.799591, 30.012138), ST_AsGeoJSON(ST_MakePoint(-97.799591, 30.012138))),
(552, 'PEACEFUL VALLEY RD - .5 MI W OF GOFORTH RD CR (157)', 'address', 'description', ST_MakePoint(-97.799232, 30.017204), ST_AsGeoJSON(ST_MakePoint(-97.799232, 30.017204))),
(553, 'GOFORTH RD (CR 157) - .25 MI E OF JANZET DR', 'address', 'description', ST_MakePoint(-97.805763, 30.020409), ST_AsGeoJSON(ST_MakePoint(-97.805763, 30.020409))),
(554, 'ROHDE RD (CR 126) - .25 MI W OF GRAEF RD (CR 302)', 'address', 'description', ST_MakePoint(-97.769966, 30.013725), ST_AsGeoJSON(ST_MakePoint(-97.769966, 30.013725))),
(555, 'GOFORTH RD (CR 157) - .25 MI W OF COTTON GIN RD (CR 129)', 'address', 'description', ST_MakePoint(-97.837036, 29.997282), ST_AsGeoJSON(ST_MakePoint(-97.837036, 29.997282))),
(556, 'DACY LN (CR 205) - .75 MI W OF BEBEE RD (CR 122)', 'address', 'description', ST_MakePoint(-97.845947, 30.010157), ST_AsGeoJSON(ST_MakePoint(-97.845947, 30.010157))),
(557, 'DACY LN (CR 205) - .75 MI S OF WINDY HILL RD (CR 131)', 'address', 'description', ST_MakePoint(-97.831001, 30.024374), ST_AsGeoJSON(ST_MakePoint(-97.831001, 30.024374))),
(558, 'ANDREWS XING - BETWEEN DACY LN (CR 205) AND WINDY HILL RD (CR 131)', 'address', 'description', ST_MakePoint(-97.826805, 30.030338), ST_AsGeoJSON(ST_MakePoint(-97.826805, 30.030338))),
(559, 'WINDY HILL RD (CR 131) - BETWEEN DACY LN (CR 205) AND ANDREWS XING', 'address', 'description', ST_MakePoint(-97.827240, 30.031595), ST_AsGeoJSON(ST_MakePoint(-97.827240, 30.031595))),
(560, 'KELLY SMITH LN (CR 149) - .75 MI W OF DACY LN (CR 205)', 'address', 'description', ST_MakePoint(-97.840714, 30.040800), ST_AsGeoJSON(ST_MakePoint(-97.840714, 30.040800))),
(561, 'S TURNERSVILLE RD (CR 212) - .25 MI S OF LANES LN', 'address', 'description', ST_MakePoint(-97.792198, 30.044930), ST_AsGeoJSON(ST_MakePoint(-97.792198, 30.044930))),
(562, 'SATTERWHITE RD (CR 107) - .25 MI E OF FM 2001', 'address', 'description', ST_MakePoint(-97.798882, 30.060955), ST_AsGeoJSON(ST_MakePoint(-97.798882, 30.060955))),
(563, 'HILLSIDE TERR - 1 MI W OF FM 2001', 'address', 'description', ST_MakePoint(-97.818481, 30.058546), ST_AsGeoJSON(ST_MakePoint(-97.818481, 30.058546))),
(564, 'DEER LAKE EST (CR 291/292) - .20 MI S OF DEER LAKE RD (CR 317)', 'address', 'description', ST_MakePoint(-98.044609, 30.028276), ST_AsGeoJSON(ST_MakePoint(-98.044609, 30.028276))),
(565, 'DEER LAKE CV - .10 MI S OF DEER LAKE RD (CR 317)', 'address', 'description', ST_MakePoint(-98.052879, 30.034592), ST_AsGeoJSON(ST_MakePoint(-98.052879, 30.034592))),
(566, 'ARROWLAKE RD (CR 304) - .20 MI S OF RR 3237', 'address', 'description', ST_MakePoint(-98.060272, 30.010078), ST_AsGeoJSON(ST_MakePoint(-98.060272, 30.010078))),
(567, 'JACOBS WELL RD (CR 220) AT CYPRESS CREEK - .25 MI S OF MT SHARP RD (CR 220)', 'address', 'description', ST_MakePoint(-98.121773, 30.030506), ST_AsGeoJSON(ST_MakePoint(-98.121773, 30.030506))),
(568, 'LEDGEROCK RD (CR 244) - .25 MI N OF VALLEY RIDGE RD', 'address', 'description', ST_MakePoint(-98.166893, 30.056936), ST_AsGeoJSON(ST_MakePoint(-98.166893, 30.056936))),
(569, 'PUMP STATION RD (CR 218) - 1 MI N OF RR 2325', 'address', 'description', ST_MakePoint(-98.195297, 30.058870), ST_AsGeoJSON(ST_MakePoint(-98.195297, 30.058870))),
(570, 'VALLEY VIEW RD - .75 MI E OF DAYS END RD', 'address', 'description', ST_MakePoint(-98.222832, 30.036821), ST_AsGeoJSON(ST_MakePoint(-98.222832, 30.036821))),
(571, 'FISCHER STORE RD (CR 181) - 1.75 MI W OF SACHTLEBEN RD (CR 180)', 'address', 'description', ST_MakePoint(-98.200104, 30.000616), ST_AsGeoJSON(ST_MakePoint(-98.200104, 30.000616))),
(572, 'COTTONWOOD RD - 2 MI N OF FISCHER STORE RD (CR 181)', 'address', 'description', ST_MakePoint(-98.253761, 30.007923), ST_AsGeoJSON(ST_MakePoint(-98.253761, 30.007923))),
(573, 'COTTONWOOD RD - 4 MI N OF FISCHER STORE RD (CR 181)', 'address', 'description', ST_MakePoint(-98.234566, 30.023846), ST_AsGeoJSON(ST_MakePoint(-98.234566, 30.023846))),
(574, 'DAYS END RD - .25 MI N OF HUMMINGBIRD LN', 'address', 'description', ST_MakePoint(-98.232292, 30.034605), ST_AsGeoJSON(ST_MakePoint(-98.232292, 30.034605))),
(575, 'HORTON PREISS RD AT LITTLE BLANCO RIVER', 'address', 'description', ST_MakePoint(-98.297043, 30.038141), ST_AsGeoJSON(ST_MakePoint(-98.297043, 30.038141))),
(576, 'MAYBROOK DR - .25 MI W OF N FM 1626', 'address', 'description', ST_MakePoint(-97.879143, 30.104568), ST_AsGeoJSON(ST_MakePoint(-97.879143, 30.104568))),
(577, 'ARBOR TRL - JUST N OF LIVE OAK LOOP', 'address', 'description', ST_MakePoint(-97.912941, 30.116627), ST_AsGeoJSON(ST_MakePoint(-97.912941, 30.116627))),
(578, 'YORKS XING - .5 MI W OF  RR 150', 'address', 'description', ST_MakePoint(-98.001205, 30.062155), ST_AsGeoJSON(ST_MakePoint(-98.001205, 30.062155))),
(579, 'YORK CREEK RD (CR 376) - .25 MI W OF ROLLING OAKS DR (CR 369)', 'address', 'description', ST_MakePoint(-98.023201, 30.070133), ST_AsGeoJSON(ST_MakePoint(-98.023201, 30.070133))),
(580, 'ELDER HILL RD (CR 170) - .25 MI E OF RR 12', 'address', 'description', ST_MakePoint(-98.087723, 30.110140), ST_AsGeoJSON(ST_MakePoint(-98.087723, 30.110140))),
(581, 'MT GAINOR RD (CR 220) - .25 MI S OF PURSLEY RD (CR 198)', 'address', 'description', ST_MakePoint(-98.167938, 30.123949), ST_AsGeoJSON(ST_MakePoint(-98.167938, 30.123949))),
(582, 'LAKESIDE DR (CR 343) - BETWEEN ANGOSTURA LN AND MONTELL RD', 'address', 'description', ST_MakePoint(-98.242462, 30.113726), ST_AsGeoJSON(ST_MakePoint(-98.242462, 30.113726))),
(583, 'CARPENTER LN - .25 MI S OF BLISS SPILLAR RD (CR 224', 'address', 'description', ST_MakePoint(-97.876160, 30.135738), ST_AsGeoJSON(ST_MakePoint(-97.876160, 30.135738))),
(584, 'CHAPARRAL RD - .25 MI W OF CARPENTER LN', 'address', 'description', ST_MakePoint(-97.877060, 30.137985), ST_AsGeoJSON(ST_MakePoint(-97.877060, 30.137985))),
(585, 'CHAPARRAL RD - .25 MI W OF QUAIL RD', 'address', 'description', ST_MakePoint(-97.894333, 30.137409), ST_AsGeoJSON(ST_MakePoint(-97.894333, 30.137409))),
(586, 'BEAR CREEK PASS (CR 367) AT BEAR CREEK - .5 MI S OF RR 1826', 'address', 'description', ST_MakePoint(-97.944923, 30.160967), ST_AsGeoJSON(ST_MakePoint(-97.944923, 30.160967))),
(587, 'CRYSTAL HILL DR AT SPRING HOLLOW - JUST S OF RR 1826', 'address', 'description', ST_MakePoint(-97.972115, 30.151791), ST_AsGeoJSON(ST_MakePoint(-97.972115, 30.151791))),
(588, 'DARDEN HILL RD (CR 162) - 1 MI W OF SAWYER RANCH RD (CR 164)', 'address', 'description', ST_MakePoint(-98.021889, 30.153227), ST_AsGeoJSON(ST_MakePoint(-98.021889, 30.153227))),
(589, 'DARDEN HILL RD (CR 162) - .40 MI E OF RR 150', 'address', 'description', ST_MakePoint(-98.041893, 30.151417), ST_AsGeoJSON(ST_MakePoint(-98.041893, 30.151417))),
(590, 'CROSSCREEK DR - JUST W OF E CREEK DR', 'address', 'description', ST_MakePoint(-98.054588, 30.178301), ST_AsGeoJSON(ST_MakePoint(-98.054588, 30.178301))),
(591, 'CREEK RD (CR 190) - .5 MI E OF MT GAINOR RD (CR 220)', 'address', 'description', ST_MakePoint(-98.115501, 30.187622), ST_AsGeoJSON(ST_MakePoint(-98.115501, 30.187622))),
(592, 'CREEK RD (CR 190) - JUST W OF MT GAINOR RD (CR 220)', 'address', 'description', ST_MakePoint(-98.123817, 30.187965), ST_AsGeoJSON(ST_MakePoint(-98.123817, 30.187965))),
(593, 'MT GAINOR RD (CR 220) - 1 MI E OF PURSLEY RD (CR 198)', 'address', 'description', ST_MakePoint(-98.158455, 30.137257), ST_AsGeoJSON(ST_MakePoint(-98.158455, 30.137257))),
(594, 'MT GAINOR RD (CR 220) AT SOUTH ONION CREEK - .25 MI W OF GATLIN CREEK RD (CR 191', 'address', 'description', ST_MakePoint(-98.140327, 30.143394), ST_AsGeoJSON(ST_MakePoint(-98.140327, 30.143394))),
(595, 'LOOP 165 (CR 165) - .5 MI E OF THE S ENTRANCE OFF RR 165', 'address', 'description', ST_MakePoint(-98.239594, 30.157591), ST_AsGeoJSON(ST_MakePoint(-98.239594, 30.157591))),
(596, 'LOOP 165 (CR 165) - 2 MI E OF S ENTRANCE OFF RR 165', 'address', 'description', ST_MakePoint(-98.226524, 30.166075), ST_AsGeoJSON(ST_MakePoint(-98.226524, 30.166075))),
(597, 'LOOP 165 (CR 165) - .25 MI E OF N ENTRANCE OFF RR 165', 'address', 'description', ST_MakePoint(-98.223969, 30.176220), ST_AsGeoJSON(ST_MakePoint(-98.223969, 30.176220))),
(598, 'PURSLEY RD (CR 198) -C 1.75 MI N OF MT GAINOR RD (CR 220)', 'address', 'description', ST_MakePoint(-98.175346, 30.146482), ST_AsGeoJSON(ST_MakePoint(-98.175346, 30.146482))),
(599, 'PURSLEY RD (CR 198) - .5 MI S OF CREEK RD (CR 190)', 'address', 'description', ST_MakePoint(-98.188622, 30.173611), ST_AsGeoJSON(ST_MakePoint(-98.188622, 30.173611))),
(600, 'PURSLEY RD (CR 198) - .30 MI S OF CREEK RD (CR 190)', 'address', 'description', ST_MakePoint(-98.188667, 30.175333), ST_AsGeoJSON(ST_MakePoint(-98.188667, 30.175333))),
(601, 'CREEK RD (CR 190) - .75 MI E OF PURSLEY RD (CR 198)', 'address', 'description', ST_MakePoint(-98.181160, 30.181561), ST_AsGeoJSON(ST_MakePoint(-98.181160, 30.181561))),
(602, 'CANYONWOOD DR - BETWEEN OAKWOOD LN AND ROY CREEK LN', 'address', 'description', ST_MakePoint(-98.035835, 30.213938), ST_AsGeoJSON(ST_MakePoint(-98.035835, 30.213938))),
(603, 'HIDDEN HILLS DR - BETWEEN COTTONWOOD CREEK DR AND ROY CREEK LN', 'address', 'description', ST_MakePoint(-98.025528, 30.210232), ST_AsGeoJSON(ST_MakePoint(-98.025528, 30.210232))),
(604, 'OAKWOOD LN - BETWEEN COTTONWOOD CREEK DR AND WEST CREEK DR', 'address', 'description', ST_MakePoint(-98.026657, 30.213724), ST_AsGeoJSON(ST_MakePoint(-98.026657, 30.213724))),
(605, 'BLUE HILLS DR - BETWEEN WEST CREEK DR AND COTTONWOOD CREEK DR', 'address', 'description', ST_MakePoint(-98.028870, 30.219912), ST_AsGeoJSON(ST_MakePoint(-98.028870, 30.219912))),
(606, 'FITZHUGH RD (CR 101) - 1.2 MI E OF TRAUTWEIN RD (CR 185) RIGHT AT COUNTY LINE', 'address', 'description', ST_MakePoint(-98.011147, 30.242491), ST_AsGeoJSON(ST_MakePoint(-98.011147, 30.242491))),
(607, 'TRAUTWEIN RD (CR 185) AT BARTON CREEK', 'address', 'description', ST_MakePoint(-98.024834, 30.236509), ST_AsGeoJSON(ST_MakePoint(-98.024834, 30.236509))),
(608, 'BELL SPRING RD (CR 169) - 2 MI S OF FITZHUGH RD (CR 101)', 'address', 'description', ST_MakePoint(-98.124870, 30.234697), ST_AsGeoJSON(ST_MakePoint(-98.124870, 30.234697))),
(609, 'BELL SPRINGS RD (CR 169) - 1 MI S OF FITZHUGH RD (CR 101)', 'address', 'description', ST_MakePoint(-98.122566, 30.244528), ST_AsGeoJSON(ST_MakePoint(-98.122566, 30.244528))),
(610, 'MCGREGOR LN (CR 187) -  2 MI N OF US 290', 'address', 'description', ST_MakePoint(-98.154556, 30.226864), ST_AsGeoJSON(ST_MakePoint(-98.154556, 30.226864))),
(611, 'WINDYS HILL RD -  .25 MI S OF GLENN CV', 'address', 'description', ST_MakePoint(-98.201553, 30.222597), ST_AsGeoJSON(ST_MakePoint(-98.201553, 30.222597))),
(612, 'LOST VALLEY RD -  .5 MI N OF EASY ST', 'address', 'description', ST_MakePoint(-98.205681, 30.245077), ST_AsGeoJSON(ST_MakePoint(-98.205681, 30.245077))),
(613, 'FITZHUGH RD (CR 101) - .5 MI E OF TED BURGER RD', 'address', 'description', ST_MakePoint(-98.082695, 30.254898), ST_AsGeoJSON(ST_MakePoint(-98.082695, 30.254898))),
(614, 'SYCAMORE CREEK DR - JUST W OF TWIN CREEK RD', 'address', 'description', ST_MakePoint(-98.199638, 30.261024), ST_AsGeoJSON(ST_MakePoint(-98.199638, 30.261024))),
(615, 'MYERS CREEK RD - 1.5 MI N OF BELL SPRINGS RD (CR 169)', 'address', 'description', ST_MakePoint(-98.134094, 30.283445), ST_AsGeoJSON(ST_MakePoint(-98.134094, 30.283445))),
(616, 'POSEY RD (CR 235) - JUST E OF FM 2439 (HUNTER RD)', 'address', 'description', ST_MakePoint(-98.004517, 29.823009), ST_AsGeoJSON(ST_MakePoint(-98.004517, 29.823009))),
(617, 'POSEY RD (CR 235) - JUST W OF IH 35', 'address', 'description', ST_MakePoint(-97.998688, 29.818159), ST_AsGeoJSON(ST_MakePoint(-97.998688, 29.818159))),
(618, 'POSEY RD (CR 235) - E OF IH 35', 'address', 'description', ST_MakePoint(-97.995407, 29.815346), ST_AsGeoJSON(ST_MakePoint(-97.995407, 29.815346))),
(619, 'RIVER RD (CITY OF SM) - .5 MI E OF SH 80', 'address', 'description', ST_MakePoint(-97.906982, 29.885052), ST_AsGeoJSON(ST_MakePoint(-97.906982, 29.885052))),
(620, 'POST RD (CR 140) .20 MI S OF YARRINGTON RD (CR 159)', 'address', 'description', ST_MakePoint(-97.885979, 29.948603), ST_AsGeoJSON(ST_MakePoint(-97.885979, 29.948603))),
(621, 'S LOOP 4 (BUDA) - .20 MI S OF W GOFORTH RD (CR 228)', 'address', 'description', ST_MakePoint(-97.844780, 30.074629), ST_AsGeoJSON(ST_MakePoint(-97.844780, 30.074629))),
(622, 'FM 2770 (BUDA) - BETWEEN S AUSTIN ST AND BLUFF ST (BUDA)', 'address', 'description', ST_MakePoint(-97.845909, 30.079020), ST_AsGeoJSON(ST_MakePoint(-97.845909, 30.079020))),
(623, 'SCHUBERT LN - JUST E OF NIEDERWALD STRASSE', 'address', 'description', ST_MakePoint(-97.733757, 30.014273), ST_AsGeoJSON(ST_MakePoint(-97.733757, 30.014273))),
(624, 'COLE SPRINGS RD (CR 148) - 1 1/2 MI E OF FM 2770', 'address', 'description', ST_MakePoint(-97.851006, 30.081158), ST_AsGeoJSON(ST_MakePoint(-97.851006, 30.081158))),
(625, 'MATHIAS LN (CR 123) - .25 MI E OF WINDY HILL RD (CR 131)', 'address', 'description', ST_MakePoint(-97.801361, 30.033113), ST_AsGeoJSON(ST_MakePoint(-97.801361, 30.033113))),
(626, 'MATHIAS LN (CR 123) - .75 MI E OF WINDY HILL RD (CR131)', 'address', 'description', ST_MakePoint(-97.796097, 30.028946), ST_AsGeoJSON(ST_MakePoint(-97.796097, 30.028946))),
(627, 'CEMENT PLANT RD (CR 132) - .5 MI E OF LOOP 4 (BUDA)', 'address', 'description', ST_MakePoint(-97.836624, 30.057915), ST_AsGeoJSON(ST_MakePoint(-97.836624, 30.057915))),
(628, 'HIDDEN VALLEY RD (CR 217) - .25 MI E OF SPOKE HOLLOW RD (CR 314)', 'address', 'description', ST_MakePoint(-98.062141, 29.982872), ST_AsGeoJSON(ST_MakePoint(-98.062141, 29.982872))),
(629, 'PLEASANT VALLEY RD (WOODCREEK) - BETWEEN LITTLE BEND CT AND WOODACRE DR', 'address', 'description', ST_MakePoint(-98.130600, 30.033110), ST_AsGeoJSON(ST_MakePoint(-98.130600, 30.033110))),
(630, 'PLEASANT VALLEY RD (WOODCREEK) - BETWEEN VALLEY SPRING RD AND QUIET MEADOW CIR', 'address', 'description', ST_MakePoint(-98.133194, 30.032286), ST_AsGeoJSON(ST_MakePoint(-98.133194, 30.032286))),
(631, 'VALLEY SPRING RD (WOODCREEK) - BETWEEN GREEN GLADE CT AND TRINKET CT', 'address', 'description', ST_MakePoint(-98.134087, 30.034092), ST_AsGeoJSON(ST_MakePoint(-98.134087, 30.034092))),
(632, 'WOODACRE DR (WOODCREEK) - BETWEEN ACACIA DR AND CYPRESS FAIRWAY VLG', 'address', 'description', ST_MakePoint(-98.129036, 30.034554), ST_AsGeoJSON(ST_MakePoint(-98.129036, 30.034554))),
(633, 'FRANCIS HARRIS LN (CR 265) - .25 MI S OF OLD BASTROP HWY (CR 266)', 'address', 'description', ST_MakePoint(-97.994667, 29.798210), ST_AsGeoJSON(ST_MakePoint(-97.994667, 29.798210))),
(634, 'NUTTY BROWN RD (CR 163) - JUST N OF WILDWOOD HILLS LN', 'address', 'description', ST_MakePoint(-97.963860, 30.175901), ST_AsGeoJSON(ST_MakePoint(-97.963860, 30.175901))),
(635, 'E MCCARTY LN (CR 233) - .5 MI E OF IH 35', 'address', 'description', ST_MakePoint(-97.965286, 29.833900), ST_AsGeoJSON(ST_MakePoint(-97.965286, 29.833900))),
(636, 'N OLD BASTROP HWY (CR 266) - .20 MI S OF AIRPORT HWY 21 (SH 21)', 'address', 'description', ST_MakePoint(-97.894524, 29.881516), ST_AsGeoJSON(ST_MakePoint(-97.894524, 29.881516))),
(637, 'LIME KILN RD (SAN MARCOS) - .25 MI W OF POST RD (CR 140)', 'address', 'description', ST_MakePoint(-97.925949, 29.899267), ST_AsGeoJSON(ST_MakePoint(-97.925949, 29.899267))),
(638, 'RR 1826 - 1 MI E OF RR 150', 'address', 'description', ST_MakePoint(-98.016365, 30.131485), ST_AsGeoJSON(ST_MakePoint(-98.016365, 30.131485))),
(639, 'LITTLE ARKANSAS RD (CR 174) - AT BLANCO RIVER', 'address', 'description', ST_MakePoint(-98.052963, 29.984037), ST_AsGeoJSON(ST_MakePoint(-98.052963, 29.984037))),
(640, 'Hidden Valley Rd @ Low Water Crossing', 'address', 'description', ST_MakePoint(-98.065285, 29.985580), ST_AsGeoJSON(ST_MakePoint(-98.065285, 29.985580))),
(643, 'CR 1492 AT BLANCO RIVER AND RIVER ROAD (CR 178)', 'address', 'description', ST_MakePoint(-98.109413, 29.984812), ST_AsGeoJSON(ST_MakePoint(-98.109413, 29.984812))),
(644, 'RR 967 - JUST N OF HALEYS WAY DR (BUDA)', 'address', 'description', ST_MakePoint(-97.848320, 30.099525), ST_AsGeoJSON(ST_MakePoint(-97.848320, 30.099525))),
(645, 'N MADRONE TR (BEAR CREEK) - .5 MI W OF CEDAR CV', 'address', 'description', ST_MakePoint(-97.938202, 30.185980), ST_AsGeoJSON(ST_MakePoint(-97.938202, 30.185980))),
(646, 'BELL SPRINGS RD (CR 169) - JUST N OF US 290', 'address', 'description', ST_MakePoint(-98.118294, 30.204742), ST_AsGeoJSON(ST_MakePoint(-98.118294, 30.204742))),
(647, 'W FITZHUGH RD (CR 101) - BETWEEN BOTH LEGS OF BELL SPRINGS RD (CR 169) 1 MI E OF', 'address', 'description', ST_MakePoint(-98.131348, 30.255873), ST_AsGeoJSON(ST_MakePoint(-98.131348, 30.255873))),
(648, 'CREEK RD (CR 190) - .10 MI E OF PURSLEY RD (CR 198)', 'address', 'description', ST_MakePoint(-98.190826, 30.178694), ST_AsGeoJSON(ST_MakePoint(-98.190826, 30.178694))),
(649, 'N BURLESON ST (KYLE) - W OF IH 35', 'address', 'description', ST_MakePoint(-97.866997, 30.003784), ST_AsGeoJSON(ST_MakePoint(-97.866997, 30.003784))),
(650, 'E RR 150 - BETWEEN IH 35 AND LEHMAN RD (CR 204)', 'address', 'description', ST_MakePoint(-97.870132, 29.981874), ST_AsGeoJSON(ST_MakePoint(-97.870132, 29.981874))),
(652, 'CENTERPOINT RD (CR 234) - 1 MI E OF IH 35', 'address', 'description', ST_MakePoint(-97.973999, 29.818613), ST_AsGeoJSON(ST_MakePoint(-97.973999, 29.818613))),
(653, 'W VALLEY SPRING RD (WOODCREEK N) - BETWEEN RAVINE TRL AND BASSWOOD CIR', 'address', 'description', ST_MakePoint(-98.148209, 30.043716), ST_AsGeoJSON(ST_MakePoint(-98.148209, 30.043716))),
(654, 'YARRINGTON RD (CR 159) - 0.75 MILE EAST OF IH 35', 'address', 'description', ST_MakePoint(-97.877205, 29.939224), ST_AsGeoJSON(ST_MakePoint(-97.877205, 29.939224))),
(655, 'YARRINGTON RD (CR 159) - JUST W OF CR 158 INTERSECTION', 'address', 'description', ST_MakePoint(-97.862473, 29.927027), ST_AsGeoJSON(ST_MakePoint(-97.862473, 29.927027))),
(656, 'HILLIARD RD (CR 222) - JUST E OF VALLEY VIEW WEST DR', 'address', 'description', ST_MakePoint(-97.960548, 29.948168), ST_AsGeoJSON(ST_MakePoint(-97.960548, 29.948168))),
(657, 'YARRINGTON RD (CR 159) - JUST W OF HARRIS HILL RD (CR 160)', 'address', 'description', ST_MakePoint(-97.865562, 29.929462), ST_AsGeoJSON(ST_MakePoint(-97.865562, 29.929462))),
(658, 'CLIMBING WAY - BETWEEN BLANCO DR AND BRINKLEY DR', 'address', 'description', ST_MakePoint(-98.081856, 29.985308), ST_AsGeoJSON(ST_MakePoint(-98.081856, 29.985308))),
(659, 'FM 150 @ DRUE LN', 'address', 'description', ST_MakePoint(-97.837860, 29.952993), ST_AsGeoJSON(ST_MakePoint(-97.837860, 29.952993))),
(660, 'MT SHARP RD BETWEEN LEDGEROCK AND MT OLIVE SCHOOL RD', 'address', 'description', ST_MakePoint(-98.159424, 30.074924), ST_AsGeoJSON(ST_MakePoint(-98.159424, 30.074924))),
(661, 'MT SHARP RD @ JACOBS WELL RD', 'address', 'description', ST_MakePoint(-98.122124, 30.034140), ST_AsGeoJSON(ST_MakePoint(-98.122124, 30.034140))),
(662, 'TWIN OAKS TRL JUST S OF MARTIN RD', 'address', 'description', ST_MakePoint(-98.164856, 30.226315), ST_AsGeoJSON(ST_MakePoint(-98.164856, 30.226315))),
(663, 'E MT GAINOR RD 2 MI W OF RR 12', 'address', 'description', ST_MakePoint(-98.121033, 30.146551), ST_AsGeoJSON(ST_MakePoint(-98.121033, 30.146551))),
(664, 'COVERED BRIDGE DR .2 MI S OF RANCHERS CLUB LN', 'address', 'description', ST_MakePoint(-98.045303, 30.088882), ST_AsGeoJSON(ST_MakePoint(-98.045303, 30.088882))),
(665, 'ELM CREEK RD .2 MI W OF COTTONWOOD RD', 'address', 'description', ST_MakePoint(-98.248688, 30.016211), ST_AsGeoJSON(ST_MakePoint(-98.248688, 30.016211))),
(666, 'OLD OAKS RANCH RD .25 MI W OF BRUNSON LN', 'address', 'description', ST_MakePoint(-98.081787, 30.058887), ST_AsGeoJSON(ST_MakePoint(-98.081787, 30.058887))),
(667, 'STEPPING STONE XING .1 MI N OF WOLF CREEK PASS', 'address', 'description', ST_MakePoint(-98.044113, 30.060617), ST_AsGeoJSON(ST_MakePoint(-98.044113, 30.060617))),
(668, 'G W Haschke Ln .8 MI S OF Fischer Store Rd ', 'address', 'description', ST_MakePoint(-98.199738, 29.990133), ST_AsGeoJSON(ST_MakePoint(-98.199738, 29.990133))),
(669, 'Winn Valley Dr @ CR 1492', 'address', 'description', ST_MakePoint(-98.102959, 29.969860), ST_AsGeoJSON(ST_MakePoint(-98.102959, 29.969860))),
(670, 'Commanche Waters .1 MI S OF Deer Lake Rd', 'address', 'description', ST_MakePoint(-98.055359, 30.034817), ST_AsGeoJSON(ST_MakePoint(-98.055359, 30.034817))),
(671, 'Rancho Grande Dr .2 MI W OF FM 3237', 'address', 'description', ST_MakePoint(-98.047096, 30.016235), ST_AsGeoJSON(ST_MakePoint(-98.047096, 30.016235))),
(672, 'CR 1492 1 MI West OF Winn Wood Rd', 'address', 'description', ST_MakePoint(-98.097107, 29.976194), ST_AsGeoJSON(ST_MakePoint(-98.097107, 29.976194))),
(673, 'W RR 150 @ Onion Creek (Double Crossings)', 'address', 'description', ST_MakePoint(-98.008339, 30.083231), ST_AsGeoJSON(ST_MakePoint(-98.008339, 30.083231))),
(674, 'W RR 150 @ Onion Creek (Double Crossings)', 'address', 'description', ST_MakePoint(-98.013268, 30.084974), ST_AsGeoJSON(ST_MakePoint(-98.013268, 30.084974))),
(675, 'York Creek RD Near Soechting RD', 'address', 'description', ST_MakePoint(-98.004822, 29.774179), ST_AsGeoJSON(ST_MakePoint(-98.004822, 29.774179))),
(676, 'Loyola at 183', 'address', 'description', ST_MakePoint(-97.661308, 30.302710), ST_AsGeoJSON(ST_MakePoint(-97.661308, 30.302710))),
(677, '3700-4500 block of Manor Rd.', 'address', 'description', ST_MakePoint(-97.693581, 30.289951), ST_AsGeoJSON(ST_MakePoint(-97.693581, 30.289951))),
(678, '2600 Blk Commerce St', 'address', 'description', ST_MakePoint(-98.268570, 30.597076), ST_AsGeoJSON(ST_MakePoint(-98.268570, 30.597076))),
(679, '1124 Rutland Drive', 'address', 'description', ST_MakePoint(-97.703384, 30.369398), ST_AsGeoJSON(ST_MakePoint(-97.703384, 30.369398))),
(680, '900 Blk Colorado St', 'address', 'description', ST_MakePoint(-98.283218, 30.565212), ST_AsGeoJSON(ST_MakePoint(-98.283218, 30.565212))),
(681, 'W 9th St and N Lamar Blvd', 'address', 'description', ST_MakePoint(-97.752777, 30.273918), ST_AsGeoJSON(ST_MakePoint(-97.752777, 30.273918))),
(682, '805 Payton Gin Rd', 'address', 'description', ST_MakePoint(-97.701157, 30.358139), ST_AsGeoJSON(ST_MakePoint(-97.701157, 30.358139))),
(683, 'Mopac at Steck', 'address', 'description', ST_MakePoint(-97.742874, 30.367212), ST_AsGeoJSON(ST_MakePoint(-97.742874, 30.367212))),
(684, '6600 Silvermine Drive', 'address', 'description', ST_MakePoint(-97.888397, 30.247019), ST_AsGeoJSON(ST_MakePoint(-97.888397, 30.247019))),
(685, '3400 Fritz Hughes Park Rd @ Hummingbird Ln', 'address', 'description', ST_MakePoint(-97.912277, 30.382242), ST_AsGeoJSON(ST_MakePoint(-97.912277, 30.382242))),
(686, '100 Blk Ave L', 'address', 'description', ST_MakePoint(-98.282089, 30.572124), ST_AsGeoJSON(ST_MakePoint(-98.282089, 30.572124))),
(687, '3700 Blk Mormon Mill Rd', 'address', 'description', ST_MakePoint(-98.251900, 30.601788), ST_AsGeoJSON(ST_MakePoint(-98.251900, 30.601788))),
(689, 'Bluebonnet Dr & Lantana Dr', 'address', 'description', ST_MakePoint(-98.274773, 30.588169), ST_AsGeoJSON(ST_MakePoint(-98.274773, 30.588169))),
(690, 'Westgate Blvd @ Williamson Creek', 'address', 'description', ST_MakePoint(-97.804886, 30.221277), ST_AsGeoJSON(ST_MakePoint(-97.804886, 30.221277))),
(691, '281 & 2nd St', 'address', 'description', ST_MakePoint(-98.276291, 30.570263), ST_AsGeoJSON(ST_MakePoint(-98.276291, 30.570263))),
(692, 'Old San Antonio Rd @ I-35', 'address', 'description', ST_MakePoint(-97.792610, 30.154083), ST_AsGeoJSON(ST_MakePoint(-97.792610, 30.154083))),
(699, '4500 Steiner Ranch Blvd', 'address', 'description', ST_MakePoint(-97.879669, 30.383169), ST_AsGeoJSON(ST_MakePoint(-97.879669, 30.383169))),
(702, 'Manchaca Rd &amp; Jones Rd', 'address', 'description', ST_MakePoint(-97.794067, 30.220797), ST_AsGeoJSON(ST_MakePoint(-97.794067, 30.220797))),
(703, '11900 Brodie Lane', 'address', 'description', ST_MakePoint(-97.859795, 30.169113), ST_AsGeoJSON(ST_MakePoint(-97.859795, 30.169113))),
(704, 'CR 272', 'address', 'description', ST_MakePoint(0.000000, 0.000000), ST_AsGeoJSON(ST_MakePoint(0.000000, 0.000000))),
(705, 'Frate Barker and Brodie', 'address', 'description', ST_MakePoint(-97.854881, 30.148464), ST_AsGeoJSON(ST_MakePoint(-97.854881, 30.148464))),
(708, '9100 W State Highway 71', 'address', 'description', ST_MakePoint(-97.904610, 30.257412), ST_AsGeoJSON(ST_MakePoint(-97.904610, 30.257412))),
(709, 'Pedernales Canyon Trail LWC', 'address', 'description', ST_MakePoint(-98.086914, 30.369465), ST_AsGeoJSON(ST_MakePoint(-98.086914, 30.369465))),
(710, 'Convict Hill and Brush Country (near Mopac underpass)', 'address', 'description', ST_MakePoint(-97.845901, 30.216908), ST_AsGeoJSON(ST_MakePoint(-97.845901, 30.216908))),
(712, '3700 Wyldwood Road', 'address', 'description', ST_MakePoint(-97.858040, 30.175661), ST_AsGeoJSON(ST_MakePoint(-97.858040, 30.175661))),
(716, 'Borchert Loop', 'address', 'description', ST_MakePoint(-97.731071, 29.869385), ST_AsGeoJSON(ST_MakePoint(-97.731071, 29.869385))),
(717, 'Black Ankle', 'address', 'description', ST_MakePoint(-97.743263, 29.859383), ST_AsGeoJSON(ST_MakePoint(-97.743263, 29.859383))),
(718, 'Black Ankle ', 'address', 'description', ST_MakePoint(-97.750496, 29.852467), ST_AsGeoJSON(ST_MakePoint(-97.750496, 29.852467))),
(719, 'Old Kelly Road', 'address', 'description', ST_MakePoint(-97.630348, 29.882029), ST_AsGeoJSON(ST_MakePoint(-97.630348, 29.882029))),
(720, 'Cattlemans Row', 'address', 'description', ST_MakePoint(-97.578911, 29.855028), ST_AsGeoJSON(ST_MakePoint(-97.578911, 29.855028))),
(721, '6900 Pleasant Valley, Austin, TX', 'address', 'description', ST_MakePoint(-97.749519, 30.176132), ST_AsGeoJSON(ST_MakePoint(-97.749519, 30.176132))),
(724, 'Railroad Street', 'address', 'description', ST_MakePoint(-97.788902, 29.879816), ST_AsGeoJSON(ST_MakePoint(-97.788902, 29.879816))),
(725, 'Von Quintus Rd @ Sunflower Rd', 'address', 'description', ST_MakePoint(-97.676826, 30.104755), ST_AsGeoJSON(ST_MakePoint(-97.676826, 30.104755))),
(726, 'Barton Springs Road', 'address', 'description', ST_MakePoint(-97.764992, 30.264969), ST_AsGeoJSON(ST_MakePoint(-97.764992, 30.264969))),
(727, 'Wells School Rd @ Wells Ln', 'address', 'description', ST_MakePoint(-97.453362, 30.392813), ST_AsGeoJSON(ST_MakePoint(-97.453362, 30.392813))),
(728, 'CR 473 South of CR 112', 'address', 'description', ST_MakePoint(-97.247803, 30.518572), ST_AsGeoJSON(ST_MakePoint(-97.247803, 30.518572))),
(729, 'Patricia @ Deer Draw', 'address', 'description', ST_MakePoint(-97.766129, 30.588125), ST_AsGeoJSON(ST_MakePoint(-97.766129, 30.588125))),
(731, 'S.E. River Road', 'address', 'description', ST_MakePoint(-97.821182, 29.822613), ST_AsGeoJSON(ST_MakePoint(-97.821182, 29.822613))),
(732, 'County Line Road', 'address', 'description', ST_MakePoint(-97.600433, 30.016884), ST_AsGeoJSON(ST_MakePoint(-97.600433, 30.016884))),
(733, 'Long Road', 'address', 'description', ST_MakePoint(-97.740051, 29.829351), ST_AsGeoJSON(ST_MakePoint(-97.740051, 29.829351))),
(734, 'Oak Grove Road', 'address', 'description', ST_MakePoint(-97.649612, 29.756502), ST_AsGeoJSON(ST_MakePoint(-97.649612, 29.756502))),
(735, 'Salt Flat ', 'address', 'description', ST_MakePoint(-97.600983, 29.756298), ST_AsGeoJSON(ST_MakePoint(-97.600983, 29.756298))),
(736, 'Salt Flat Road', 'address', 'description', ST_MakePoint(-97.616135, 29.723900), ST_AsGeoJSON(ST_MakePoint(-97.616135, 29.723900))),
(737, 'Misty Lane', 'address', 'description', ST_MakePoint(-97.765717, 29.900843), ST_AsGeoJSON(ST_MakePoint(-97.765717, 29.900843))),
(739, 'Jolley Road', 'address', 'description', ST_MakePoint(-97.758484, 29.897476), ST_AsGeoJSON(ST_MakePoint(-97.758484, 29.897476))),
(740, 'Polonia Road', 'address', 'description', ST_MakePoint(-97.725182, 29.937742), ST_AsGeoJSON(ST_MakePoint(-97.725182, 29.937742))),
(741, 'Plant Road', 'address', 'description', ST_MakePoint(-97.722290, 29.740314), ST_AsGeoJSON(ST_MakePoint(-97.722290, 29.740314))),
(742, 'Plant Road', 'address', 'description', ST_MakePoint(-97.753273, 29.716928), ST_AsGeoJSON(ST_MakePoint(-97.753273, 29.716928))),
(743, 'Holz Road', 'address', 'description', ST_MakePoint(-97.727432, 29.969942), ST_AsGeoJSON(ST_MakePoint(-97.727432, 29.969942))),
(744, 'Tomahawk Trail', 'address', 'description', ST_MakePoint(-97.644073, 30.034851), ST_AsGeoJSON(ST_MakePoint(-97.644073, 30.034851))),
(745, 'Tomahawk Trail', 'address', 'description', ST_MakePoint(-97.658257, 30.021996), ST_AsGeoJSON(ST_MakePoint(-97.658257, 30.021996))),
(746, 'Crooked Road', 'address', 'description', ST_MakePoint(-97.577446, 30.002169), ST_AsGeoJSON(ST_MakePoint(-97.577446, 30.002169))),
(749, 'Pettytown Road', 'address', 'description', ST_MakePoint(-97.546074, 29.903242), ST_AsGeoJSON(ST_MakePoint(-97.546074, 29.903242))),
(750, 'Pettytown Road', 'address', 'description', ST_MakePoint(-97.461082, 29.906052), ST_AsGeoJSON(ST_MakePoint(-97.461082, 29.906052))),
(751, 'Pettytown Road', 'address', 'description', ST_MakePoint(-97.534790, 29.891262), ST_AsGeoJSON(ST_MakePoint(-97.534790, 29.891262))),
(754, 'Rocky Road', 'address', 'description', ST_MakePoint(-97.749817, 29.960852), ST_AsGeoJSON(ST_MakePoint(-97.749817, 29.960852))),
(755, 'Creekside Drive', 'address', 'description', ST_MakePoint(-97.576118, 29.776285), ST_AsGeoJSON(ST_MakePoint(-97.576118, 29.776285))),
(756, 'Soda Springs Road', 'address', 'description', ST_MakePoint(-97.613235, 29.718494), ST_AsGeoJSON(ST_MakePoint(-97.613235, 29.718494))),
(757, 'P1001 - Johnson Rd just off 1209', 'address', 'description', ST_MakePoint(-97.429787, 30.135370), ST_AsGeoJSON(ST_MakePoint(-97.429787, 30.135370))),
(758, 'P1002 - E Riverside Dr/Tahitian Dr', 'address', 'description', ST_MakePoint(-97.283447, 30.072571), ST_AsGeoJSON(ST_MakePoint(-97.283447, 30.072571))),
(759, 'P1003 - Riverwood Dr ', 'address', 'description', ST_MakePoint(-97.329033, 30.120420), ST_AsGeoJSON(ST_MakePoint(-97.329033, 30.120420))),
(760, 'P1004 - Green Valley Dr', 'address', 'description', ST_MakePoint(-97.293823, 30.177050), ST_AsGeoJSON(ST_MakePoint(-97.293823, 30.177050))),
(761, 'P1005 - 712 Shilo Road .2 West of N Gaines', 'address', 'description', ST_MakePoint(-97.403717, 30.097076), ST_AsGeoJSON(ST_MakePoint(-97.403717, 30.097076))),
(762, 'P1006 - Lovers Ln', 'address', 'description', ST_MakePoint(-97.327667, 30.091990), ST_AsGeoJSON(ST_MakePoint(-97.327667, 30.091990))),
(763, 'P1007 - Keanahalululu Ln/ Haiimaile', 'address', 'description', ST_MakePoint(-97.326958, 30.091640), ST_AsGeoJSON(ST_MakePoint(-97.326958, 30.091640))),
(764, 'P1008 - Woodlands Dr', 'address', 'description', ST_MakePoint(-97.402878, 30.118040), ST_AsGeoJSON(ST_MakePoint(-97.402878, 30.118040))),
(765, 'P1009 - Tucker Hill Ln', 'address', 'description', ST_MakePoint(-97.523064, 30.181110), ST_AsGeoJSON(ST_MakePoint(-97.523064, 30.181110))),
(766, 'P1010 - 236 Over Hill Rd', 'address', 'description', ST_MakePoint(-97.301392, 30.189760), ST_AsGeoJSON(ST_MakePoint(-97.301392, 30.189760))),
(767, 'P1011 - 170 Tiger Woods Dr', 'address', 'description', ST_MakePoint(-97.280937, 30.179899), ST_AsGeoJSON(ST_MakePoint(-97.280937, 30.179899))),
(768, 'P1012 - Manawianui Dr ', 'address', 'description', ST_MakePoint(-97.276688, 30.087570), ST_AsGeoJSON(ST_MakePoint(-97.276688, 30.087570))),
(769, 'P1013 - Kaanapali Low Water Crossing', 'address', 'description', ST_MakePoint(-97.277298, 30.088461), ST_AsGeoJSON(ST_MakePoint(-97.277298, 30.088461))),
(770, 'P1014 - Old McDade Rd ', 'address', 'description', ST_MakePoint(-97.309441, 30.143410), ST_AsGeoJSON(ST_MakePoint(-97.309441, 30.143410))),
(771, 'P1015 - Greenfields Dr', 'address', 'description', ST_MakePoint(-97.427696, 30.126659), ST_AsGeoJSON(ST_MakePoint(-97.427696, 30.126659))),
(772, 'P1016 - E Riverside Dr', 'address', 'description', ST_MakePoint(-97.298019, 30.069189), ST_AsGeoJSON(ST_MakePoint(-97.298019, 30.069189))),
(773, 'P2001 - Friendship Rd. (East)', 'address', 'description', ST_MakePoint(-97.086777, 30.187429), ST_AsGeoJSON(ST_MakePoint(-97.086777, 30.187429))),
(774, 'P2002 - Friendship Rd. (West)', 'address', 'description', ST_MakePoint(-97.103958, 30.187330), ST_AsGeoJSON(ST_MakePoint(-97.103958, 30.187330))),
(775, 'P2003 - Saint Delight Rd', 'address', 'description', ST_MakePoint(-97.112297, 30.184549), ST_AsGeoJSON(ST_MakePoint(-97.112297, 30.184549))),
(776, 'P2004 - Gotier Trace Rd', 'address', 'description', ST_MakePoint(-97.132156, 30.131001), ST_AsGeoJSON(ST_MakePoint(-97.132156, 30.131001))),
(777, 'P2005 - Gotier Trace Rd.', 'address', 'description', ST_MakePoint(-97.157066, 30.123619), ST_AsGeoJSON(ST_MakePoint(-97.157066, 30.123619))),
(778, 'P2006 - Bowie Dr.', 'address', 'description', ST_MakePoint(-97.201424, 30.176960), ST_AsGeoJSON(ST_MakePoint(-97.201424, 30.176960))),
(779, 'P2007 - Cardinal Dr.', 'address', 'description', ST_MakePoint(-97.202263, 30.191250), ST_AsGeoJSON(ST_MakePoint(-97.202263, 30.191250))),
(780, 'P2008 - Cardinal Dr.', 'address', 'description', ST_MakePoint(-97.204323, 30.190281), ST_AsGeoJSON(ST_MakePoint(-97.204323, 30.190281))),
(782, 'P2010 - 250 Blk League line Rd', 'address', 'description', ST_MakePoint(-97.068138, 30.076050), ST_AsGeoJSON(ST_MakePoint(-97.068138, 30.076050))),
(783, 'P2011 - Zack Rd', 'address', 'description', ST_MakePoint(-97.042831, 30.056141), ST_AsGeoJSON(ST_MakePoint(-97.042831, 30.056141))),
(784, 'P2012 - Center Union Rd.', 'address', 'description', ST_MakePoint(-97.060402, 30.040739), ST_AsGeoJSON(ST_MakePoint(-97.060402, 30.040739))),
(785, 'P2013 - Krchnak Rd.', 'address', 'description', ST_MakePoint(-97.074890, 30.050800), ST_AsGeoJSON(ST_MakePoint(-97.074890, 30.050800))),
(786, 'P2014 - Barton Oak Rd.', 'address', 'description', ST_MakePoint(-97.138802, 29.950230), ST_AsGeoJSON(ST_MakePoint(-97.138802, 29.950230))),
(787, 'P2015 - Vyvjala Rd.', 'address', 'description', ST_MakePoint(-97.200989, 29.940050), ST_AsGeoJSON(ST_MakePoint(-97.200989, 29.940050))),
(788, 'P2016 - Patterson Rd.', 'address', 'description', ST_MakePoint(-97.239220, 29.921841), ST_AsGeoJSON(ST_MakePoint(-97.239220, 29.921841))),
(789, 'P2017 - Patterson Rd.', 'address', 'description', ST_MakePoint(-97.239449, 29.909660), ST_AsGeoJSON(ST_MakePoint(-97.239449, 29.909660))),
(790, 'P2018 - Patterson Rd.', 'address', 'description', ST_MakePoint(-97.269234, 29.862989), ST_AsGeoJSON(ST_MakePoint(-97.269234, 29.862989))),
(791, 'P2019 - Henry Ln.', 'address', 'description', ST_MakePoint(-97.315308, 29.844379), ST_AsGeoJSON(ST_MakePoint(-97.315308, 29.844379))),
(792, 'P2020 - McReynolds Rd.', 'address', 'description', ST_MakePoint(-97.356071, 29.927019), ST_AsGeoJSON(ST_MakePoint(-97.356071, 29.927019))),
(793, 'P2021 - McReynolds Rd.', 'address', 'description', ST_MakePoint(-97.349197, 29.917690), ST_AsGeoJSON(ST_MakePoint(-97.349197, 29.917690))),
(794, 'Johns Rd', 'address', 'description', ST_MakePoint(-97.284241, 29.980640), ST_AsGeoJSON(ST_MakePoint(-97.284241, 29.980640))),
(795, 'P2023 - Hidden Shore Loop', 'address', 'description', ST_MakePoint(-97.201180, 30.049440), ST_AsGeoJSON(ST_MakePoint(-97.201180, 30.049440))),
(796, 'P2024 - O Grady Rd', 'address', 'description', ST_MakePoint(97.199753, 30.070650), ST_AsGeoJSON(ST_MakePoint(97.199753, 30.070650))),
(797, 'P3001 - Wilhelm Way ', 'address', 'description', ST_MakePoint(-97.368439, 29.970921), ST_AsGeoJSON(ST_MakePoint(-97.368439, 29.970921))),
(798, 'P3002 - Watterson Rd.', 'address', 'description', ST_MakePoint(-97.378670, 29.979650), ST_AsGeoJSON(ST_MakePoint(-97.378670, 29.979650))),
(799, 'P3003 - Watterson Rd. /Possum Way', 'address', 'description', ST_MakePoint(-97.365471, 29.999800), ST_AsGeoJSON(ST_MakePoint(-97.365471, 29.999800))),
(800, 'P3004 - Watterson Rd.', 'address', 'description', ST_MakePoint(-97.355232, 30.014771), ST_AsGeoJSON(ST_MakePoint(-97.355232, 30.014771))),
(801, 'P3005 - Watterson Rd.', 'address', 'description', ST_MakePoint(-97.340431, 30.028339), ST_AsGeoJSON(ST_MakePoint(-97.340431, 30.028339))),
(802, 'P3006 - Glass Ln', 'address', 'description', ST_MakePoint(-97.329071, 30.020800), ST_AsGeoJSON(ST_MakePoint(-97.329071, 30.020800))),
(803, 'P3007 - Lee Rd.', 'address', 'description', ST_MakePoint(-97.383202, 29.991020), ST_AsGeoJSON(ST_MakePoint(-97.383202, 29.991020))),
(804, 'P3008 - Watterson School Rd.', 'address', 'description', ST_MakePoint(-97.403709, 29.988140), ST_AsGeoJSON(ST_MakePoint(-97.403709, 29.988140))),
(805, 'P3009 - Lee Rd.', 'address', 'description', ST_MakePoint(-97.386101, 29.995131), ST_AsGeoJSON(ST_MakePoint(-97.386101, 29.995131))),
(806, 'P3010 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.378906, 30.028250), ST_AsGeoJSON(ST_MakePoint(-97.378906, 30.028250))),
(807, 'P3011 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.371429, 30.057091), ST_AsGeoJSON(ST_MakePoint(-97.371429, 30.057091))),
(808, 'Lone Star Rd', 'address', 'description', ST_MakePoint(-97.402077, 30.042351), ST_AsGeoJSON(ST_MakePoint(-97.402077, 30.042351))),
(809, 'P3013 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.384911, 30.022840), ST_AsGeoJSON(ST_MakePoint(-97.384911, 30.022840))),
(810, 'P3014 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.389847, 30.024290), ST_AsGeoJSON(ST_MakePoint(-97.389847, 30.024290))),
(811, 'P3015 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.401161, 30.017309), ST_AsGeoJSON(ST_MakePoint(-97.401161, 30.017309))),
(812, 'P3016 - Lower Red Rock Rd.', 'address', 'description', ST_MakePoint(-97.412987, 30.001980), ST_AsGeoJSON(ST_MakePoint(-97.412987, 30.001980))),
(813, 'P3017 - Lehman Ln', 'address', 'description', ST_MakePoint(-97.420563, 30.009251), ST_AsGeoJSON(ST_MakePoint(-97.420563, 30.009251))),
(814, 'P3018 - Pleasant Chapel Rd', 'address', 'description', ST_MakePoint(-97.431862, 30.030930), ST_AsGeoJSON(ST_MakePoint(-97.431862, 30.030930))),
(815, 'P3019 - Earl Callahan Rd', 'address', 'description', ST_MakePoint(-97.438698, 30.065701), ST_AsGeoJSON(ST_MakePoint(-97.438698, 30.065701))),
(816, 'P3020 - N Cedar Creek Dr.', 'address', 'description', ST_MakePoint(-97.483467, 30.065929), ST_AsGeoJSON(ST_MakePoint(-97.483467, 30.065929))),
(817, 'P3021 - Mt. Pleasant Rd.', 'address', 'description', ST_MakePoint(-97.503822, 30.032209), ST_AsGeoJSON(ST_MakePoint(-97.503822, 30.032209))),
(818, 'P3022 - John Craft Rd.', 'address', 'description', ST_MakePoint(-97.384430, 29.957640), ST_AsGeoJSON(ST_MakePoint(-97.384430, 29.957640))),
(819, 'P3023 - Watterson Rd', 'address', 'description', ST_MakePoint(-97.398422, 29.954880), ST_AsGeoJSON(ST_MakePoint(-97.398422, 29.954880))),
(820, 'P3024 - Goertz Rd. / Waterson Rd', 'address', 'description', ST_MakePoint(-97.429260, 29.970671), ST_AsGeoJSON(ST_MakePoint(-97.429260, 29.970671))),
(821, 'P3025 - Goertz Rd ', 'address', 'description', ST_MakePoint(-97.433632, 29.973240), ST_AsGeoJSON(ST_MakePoint(-97.433632, 29.973240))),
(822, 'P3026 - Sand Hill Rd.', 'address', 'description', ST_MakePoint(-97.443336, 29.956791), ST_AsGeoJSON(ST_MakePoint(-97.443336, 29.956791))),
(823, 'P3027 - Sand Hill Rd.', 'address', 'description', ST_MakePoint(-97.408028, 29.939159), ST_AsGeoJSON(ST_MakePoint(-97.408028, 29.939159))),
(824, 'P3028 - Klaus Ln', 'address', 'description', ST_MakePoint(-97.432663, 29.929939), ST_AsGeoJSON(ST_MakePoint(-97.432663, 29.929939))),
(825, 'P3029 - Pettytown Rd.', 'address', 'description', ST_MakePoint(-97.443810, 29.934090), ST_AsGeoJSON(ST_MakePoint(-97.443810, 29.934090))),
(826, 'P3030 - Pettytown Rd.', 'address', 'description', ST_MakePoint(-97.456734, 29.912729), ST_AsGeoJSON(ST_MakePoint(-97.456734, 29.912729))),
(827, 'P3031 - Bateman Rd.', 'address', 'description', ST_MakePoint(-97.466217, 29.946751), ST_AsGeoJSON(ST_MakePoint(-97.466217, 29.946751))),
(828, 'P3032 - Alexander Rd.', 'address', 'description', ST_MakePoint(-97.474892, 29.960199), ST_AsGeoJSON(ST_MakePoint(-97.474892, 29.960199))),
(829, 'P3033 - Wilson Rd.', 'address', 'description', ST_MakePoint(-97.473328, 29.961800), ST_AsGeoJSON(ST_MakePoint(-97.473328, 29.961800))),
(830, 'P3034 - Boyd Rd.', 'address', 'description', ST_MakePoint(-97.496750, 29.985609), ST_AsGeoJSON(ST_MakePoint(-97.496750, 29.985609))),
(831, 'P3035 - Boyd Rd.', 'address', 'description', ST_MakePoint(-97.512878, 29.971430), ST_AsGeoJSON(ST_MakePoint(-97.512878, 29.971430))),
(832, 'P3036 - Hollow Rd.', 'address', 'description', ST_MakePoint(-97.492210, 29.991619), ST_AsGeoJSON(ST_MakePoint(-97.492210, 29.991619))),
(833, 'P3037 - High Grove Rd.', 'address', 'description', ST_MakePoint(-97.478378, 30.010300), ST_AsGeoJSON(ST_MakePoint(-97.478378, 30.010300))),
(834, 'P3038 - High Grove Rd.', 'address', 'description', ST_MakePoint(-97.468384, 30.022810), ST_AsGeoJSON(ST_MakePoint(-97.468384, 30.022810))),
(835, 'P3039 - Artesian Rd.', 'address', 'description', ST_MakePoint(-97.533348, 30.016300), ST_AsGeoJSON(ST_MakePoint(-97.533348, 30.016300))),
(836, 'P3040 - Rianna Woods Dr.', 'address', 'description', ST_MakePoint(-97.570396, 30.005190), ST_AsGeoJSON(ST_MakePoint(-97.570396, 30.005190))),
(837, 'P3041 - Blue Jay Rd.', 'address', 'description', ST_MakePoint(-97.559219, 30.003019), ST_AsGeoJSON(ST_MakePoint(-97.559219, 30.003019))),
(838, 'P3042 - Watts Rd.', 'address', 'description', ST_MakePoint(-97.535530, 30.082920), ST_AsGeoJSON(ST_MakePoint(-97.535530, 30.082920))),
(839, 'P3043 - Legend Oaks Dr.', 'address', 'description', ST_MakePoint(-97.599030, 30.068270), ST_AsGeoJSON(ST_MakePoint(-97.599030, 30.068270))),
(840, 'P3044 - Caldwell Rd.', 'address', 'description', ST_MakePoint(-97.618813, 30.054649), ST_AsGeoJSON(ST_MakePoint(-97.618813, 30.054649))),
(841, 'P3045 - McDowell Rd.', 'address', 'description', ST_MakePoint(-97.578369, 30.097561), ST_AsGeoJSON(ST_MakePoint(-97.578369, 30.097561))),
(842, 'P3046 - Jacobson Rd.', 'address', 'description', ST_MakePoint(-97.590134, 30.116470), ST_AsGeoJSON(ST_MakePoint(-97.590134, 30.116470))),
(843, 'P3047 - Prvada Rd', 'address', 'description', ST_MakePoint(-97.570686, 30.108709), ST_AsGeoJSON(ST_MakePoint(-97.570686, 30.108709))),
(844, 'P3048 - Reeves Ln', 'address', 'description', ST_MakePoint(-97.541130, 30.112391), ST_AsGeoJSON(ST_MakePoint(-97.541130, 30.112391))),
(845, 'P3049 - Shady Oaks Loop', 'address', 'description', ST_MakePoint(-97.530983, 30.099409), ST_AsGeoJSON(ST_MakePoint(-97.530983, 30.099409))),
(846, 'P3050 - Thousand Oaks Dr', 'address', 'description', ST_MakePoint(-97.511833, 30.106079), ST_AsGeoJSON(ST_MakePoint(-97.511833, 30.106079))),
(847, 'P3051 - Jenkins Rd.', 'address', 'description', ST_MakePoint(-97.494537, 30.107201), ST_AsGeoJSON(ST_MakePoint(-97.494537, 30.107201))),
(848, 'P3052 - Pope Bend South', 'address', 'description', ST_MakePoint(-97.478432, 30.125460), ST_AsGeoJSON(ST_MakePoint(-97.478432, 30.125460))),
(849, 'P3053 - Simpson Ave.', 'address', 'description', ST_MakePoint(-97.480377, 30.128920), ST_AsGeoJSON(ST_MakePoint(-97.480377, 30.128920))),
(850, 'P3054 - Cedar Ln', 'address', 'description', ST_MakePoint(-97.469940, 30.127621), ST_AsGeoJSON(ST_MakePoint(-97.469940, 30.127621))),
(851, 'P3055 - Tuck St', 'address', 'description', ST_MakePoint(-97.470108, 30.120880), ST_AsGeoJSON(ST_MakePoint(-97.470108, 30.120880))),
(852, 'P3056 - Lake View Dr', 'address', 'description', ST_MakePoint(-97.469452, 30.119110), ST_AsGeoJSON(ST_MakePoint(-97.469452, 30.119110))),
(853, 'P3057 - Marjess Dr.', 'address', 'description', ST_MakePoint(-97.462334, 30.111250), ST_AsGeoJSON(ST_MakePoint(-97.462334, 30.111250))),
(854, 'P3058 - Leisure Ln', 'address', 'description', ST_MakePoint(-97.466087, 30.132280), ST_AsGeoJSON(ST_MakePoint(-97.466087, 30.132280))),
(855, 'P3059 - Stoney Brook', 'address', 'description', ST_MakePoint(-97.449188, 30.128151), ST_AsGeoJSON(ST_MakePoint(-97.449188, 30.128151))),
(856, 'P3060 - Leisure Ln.', 'address', 'description', ST_MakePoint(-97.446060, 30.123039), ST_AsGeoJSON(ST_MakePoint(-97.446060, 30.123039))),
(857, 'P3061 - Shiloh Rd.', 'address', 'description', ST_MakePoint(-97.439507, 30.095131), ST_AsGeoJSON(ST_MakePoint(-97.439507, 30.095131))),
(858, 'P3062 - Mt. Olive Rd.', 'address', 'description', ST_MakePoint(-97.441528, 30.100849), ST_AsGeoJSON(ST_MakePoint(-97.441528, 30.100849))),
(859, 'P4001 - 576 Block Monkey', 'address', 'description', ST_MakePoint(-97.417313, 30.326191), ST_AsGeoJSON(ST_MakePoint(-97.417313, 30.326191))),
(860, 'P4002 - North Gates on Upper Elgin River Road @ Willbarger', 'address', 'description', ST_MakePoint(-97.438942, 30.287790), ST_AsGeoJSON(ST_MakePoint(-97.438942, 30.287790))),
(861, 'P4003 - 1685 Upper Elgin River Rd', 'address', 'description', ST_MakePoint(-97.441978, 30.256910), ST_AsGeoJSON(ST_MakePoint(-97.441978, 30.256910))),
(862, 'P4004 - 1831 Upper Elgin River Rd', 'address', 'description', ST_MakePoint(-97.447441, 30.248369), ST_AsGeoJSON(ST_MakePoint(-97.447441, 30.248369))),
(863, 'P4005 - 192 Dry Willow Rd / Elbow Bend Rd.', 'address', 'description', ST_MakePoint(-97.444290, 30.246441), ST_AsGeoJSON(ST_MakePoint(-97.444290, 30.246441))),
(864, 'P4006 - 123 Watersedge Terrace Dr.', 'address', 'description', ST_MakePoint(-97.481857, 30.213680), ST_AsGeoJSON(ST_MakePoint(-97.481857, 30.213680))),
(865, 'P4007 - 209 Old Sayers Rd', 'address', 'description', ST_MakePoint(-97.365662, 30.320740), ST_AsGeoJSON(ST_MakePoint(-97.365662, 30.320740))),
(866, 'P4008 - 1-97 Block Beaver Rd', 'address', 'description', ST_MakePoint(-97.377190, 30.301750), ST_AsGeoJSON(ST_MakePoint(-97.377190, 30.301750))),
(867, 'P4009 - 175 Block Arbuckle Rd', 'address', 'description', ST_MakePoint(97.380966, 30.287029), ST_AsGeoJSON(ST_MakePoint(97.380966, 30.287029))),
(868, 'P4010 - 1333 Block Old Sayers Rd', 'address', 'description', ST_MakePoint(-97.350853, 30.252769), ST_AsGeoJSON(ST_MakePoint(-97.350853, 30.252769))),
(869, 'P4011 - 1800 Block Sayers Rd', 'address', 'description', ST_MakePoint(-97.329559, 30.233141), ST_AsGeoJSON(ST_MakePoint(-97.329559, 30.233141))),
(870, 'P4012 - 299 Block Marlin Rd. / Paint Creek', 'address', 'description', ST_MakePoint(-97.223778, 30.291250), ST_AsGeoJSON(ST_MakePoint(-97.223778, 30.291250))),
(871, 'MARLIN ST', 'address', 'description', ST_MakePoint(-97.197731, 30.297279), ST_AsGeoJSON(ST_MakePoint(-97.197731, 30.297279))),
(872, 'P4014 - 1084 Paint Creek Rd', 'address', 'description', ST_MakePoint(-97.161926, 30.280331), ST_AsGeoJSON(ST_MakePoint(-97.161926, 30.280331))),
(873, 'STOCKADE RANCH RD', 'address', 'description', ST_MakePoint(-97.157890, 30.287149), ST_AsGeoJSON(ST_MakePoint(-97.157890, 30.287149))),
(874, 'P4016 - 270 Block Stockade Ranch Rd', 'address', 'description', ST_MakePoint(-97.119392, 30.228710), ST_AsGeoJSON(ST_MakePoint(-97.119392, 30.228710))),
(875, 'P4017 - 181 Block Longhorn Trail', 'address', 'description', ST_MakePoint(-97.114113, 30.259159), ST_AsGeoJSON(ST_MakePoint(-97.114113, 30.259159))),
(876, 'P4018 - 292 Block Longhorn Trail ', 'address', 'description', ST_MakePoint(-97.118080, 30.269510), ST_AsGeoJSON(ST_MakePoint(-97.118080, 30.269510))),
(877, 'P4019 - 214 Lee County Rd.', 'address', 'description', ST_MakePoint(-97.107979, 30.270861), ST_AsGeoJSON(ST_MakePoint(-97.107979, 30.270861))),
(878, 'P4020 - 290 Edgewood Trail', 'address', 'description', ST_MakePoint(-97.099297, 30.246771), ST_AsGeoJSON(ST_MakePoint(-97.099297, 30.246771))),
(879, 'P4021 - 209 Block Lincoln Lake Rd', 'address', 'description', ST_MakePoint(-97.085770, 30.236980), ST_AsGeoJSON(ST_MakePoint(-97.085770, 30.236980))),
(880, 'COB1001 - Riverwood Drive Low Water Crossing', 'address', 'description', ST_MakePoint(-97.329010, 30.120541), ST_AsGeoJSON(ST_MakePoint(-97.329010, 30.120541))),
(881, 'COB1002 - Fishermans Park Farm Street', 'address', 'description', ST_MakePoint(-97.325172, 30.114840), ST_AsGeoJSON(ST_MakePoint(-97.325172, 30.114840))),
(882, 'COB1003 - Fishermans Park Willow Street', 'address', 'description', ST_MakePoint(-97.321907, 30.112610), ST_AsGeoJSON(ST_MakePoint(-97.321907, 30.112610))),
(883, 'COB1004 - Fishermans Park Boat Ramp Area', 'address', 'description', ST_MakePoint(-97.325073, 30.111919), ST_AsGeoJSON(ST_MakePoint(-97.325073, 30.111919))),
(884, 'COE1001 - Hwy 290 and 1880 County Line Road', 'address', 'description', ST_MakePoint(-97.411682, 30.352619), ST_AsGeoJSON(ST_MakePoint(-97.411682, 30.352619))),
(885, 'COE1002 - Hwy 290 at 800 Martin Luther King Blvd', 'address', 'description', ST_MakePoint(-97.362091, 30.335590), ST_AsGeoJSON(ST_MakePoint(-97.362091, 30.335590))),
(886, 'COE1003 - 100 Q.S. Goins Ln.', 'address', 'description', ST_MakePoint(-97.361588, 30.352800), ST_AsGeoJSON(ST_MakePoint(-97.361588, 30.352800))),
(887, 'COE1004 - N Avenue C in the 907 block', 'address', 'description', ST_MakePoint(-97.377220, 30.352461), ST_AsGeoJSON(ST_MakePoint(-97.377220, 30.352461))),
(888, 'COE1005 - West Brenham St in the 600 block', 'address', 'description', ST_MakePoint(-97.376389, 30.342939), ST_AsGeoJSON(ST_MakePoint(-97.376389, 30.342939))),
(889, 'COS1001 - Old Upton Rd and Uptown Dr', 'address', 'description', ST_MakePoint(-97.170128, 30.014690), ST_AsGeoJSON(ST_MakePoint(-97.170128, 30.014690))),
(890, 'COS1002 - Loop 230 river bridge Boat Ramp', 'address', 'description', ST_MakePoint(-97.160187, 30.017550), ST_AsGeoJSON(ST_MakePoint(-97.160187, 30.017550))),
(891, 'COS1003 - The drive at Riverbend Park', 'address', 'description', ST_MakePoint(-97.145233, 30.018650), ST_AsGeoJSON(ST_MakePoint(-97.145233, 30.018650))),
(892, 'COS1004 - Loop Around at Riverbend Park Under 71', 'address', 'description', ST_MakePoint(-97.148682, 30.017929), ST_AsGeoJSON(ST_MakePoint(-97.148682, 30.017929))),
(895, '20700 Cameron Rd', 'address', 'description', ST_MakePoint(-97.492355, 30.457598), ST_AsGeoJSON(ST_MakePoint(-97.492355, 30.457598))),
(896, 'P4022 Arbuckle at the Bridge', 'address', 'description', ST_MakePoint(-97.381363, 30.287445), ST_AsGeoJSON(ST_MakePoint(-97.381363, 30.287445))),
(897, 'Reavis Road', 'address', 'description', ST_MakePoint(-97.662216, 29.829710), ST_AsGeoJSON(ST_MakePoint(-97.662216, 29.829710))),
(898, 'TX1001 Park Road 1C at Alum Creek', 'address', 'description', ST_MakePoint(-97.220116, 30.096329), ST_AsGeoJSON(ST_MakePoint(-97.220116, 30.096329))),
(899, 'Bugtussle Lane (CR115)', 'address', 'description', ST_MakePoint(-97.730354, 29.769598), ST_AsGeoJSON(ST_MakePoint(-97.730354, 29.769598))),
(900, 'Boggy Creek', 'address', 'description', ST_MakePoint(-97.716110, 29.863838), ST_AsGeoJSON(ST_MakePoint(-97.716110, 29.863838))),
(901, 'P4023 - Raccoon Rd Crossing', 'address', 'description', ST_MakePoint(-97.307426, 30.366083), ST_AsGeoJSON(ST_MakePoint(-97.307426, 30.366083))),
(902, 'Cistern Road', 'address', 'description', ST_MakePoint(-97.764145, 29.882763), ST_AsGeoJSON(ST_MakePoint(-97.764145, 29.882763))),
(903, 'Clark Loop', 'address', 'description', ST_MakePoint(-97.740112, 29.885496), ST_AsGeoJSON(ST_MakePoint(-97.740112, 29.885496))),
(904, 'COB1005 Jasper and MLK', 'address', 'description', ST_MakePoint(-97.311081, 30.103134), ST_AsGeoJSON(ST_MakePoint(-97.311081, 30.103134))),
(905, 'WCID1001 - 100 Block Kokomo', 'address', 'description', ST_MakePoint(-97.327065, 30.090548), ST_AsGeoJSON(ST_MakePoint(-97.327065, 30.090548))),
(908, 'Westwood Road (600 Bk)', 'address', 'description', ST_MakePoint(-97.694626, 29.814329), ST_AsGeoJSON(ST_MakePoint(-97.694626, 29.814329))),
(909, 'TX1003 - FM 535 / AJ Rod Road', 'address', 'description', ST_MakePoint(-97.197372, 29.972275), ST_AsGeoJSON(ST_MakePoint(-97.197372, 29.972275))),
(910, 'Political Road', 'address', 'description', ST_MakePoint(-97.746895, 29.796789), ST_AsGeoJSON(ST_MakePoint(-97.746895, 29.796789))),
(911, 'Austin Road', 'address', 'description', ST_MakePoint(-97.679710, 29.691584), ST_AsGeoJSON(ST_MakePoint(-97.679710, 29.691584))),
(912, 'Seals Creek Road', 'address', 'description', ST_MakePoint(-97.741592, 29.792377), ST_AsGeoJSON(ST_MakePoint(-97.741592, 29.792377))),
(913, 'Buck Branch Road', 'address', 'description', ST_MakePoint(-97.418816, 29.768726), ST_AsGeoJSON(ST_MakePoint(-97.418816, 29.768726))),
(915, 'TX1004 - FM 153 @ Park Rd 1C', 'address', 'description', ST_MakePoint(-97.158310, 30.038132), ST_AsGeoJSON(ST_MakePoint(-97.158310, 30.038132))),
(916, 'P2026 - Kovar Rd South of Vyvjalla', 'address', 'description', ST_MakePoint(-97.220016, 29.936741), ST_AsGeoJSON(ST_MakePoint(-97.220016, 29.936741))),
(917, 'TX1005 - 1600 FM 2104', 'address', 'description', ST_MakePoint(-97.078934, 30.147470), ST_AsGeoJSON(ST_MakePoint(-97.078934, 30.147470))),
(918, 'P2027 - Hector Rd / Gravelly Creek', 'address', 'description', ST_MakePoint(-97.090775, 30.057676), ST_AsGeoJSON(ST_MakePoint(-97.090775, 30.057676))),
(919, 'P2028 - 400 Old Lake Rd', 'address', 'description', ST_MakePoint(-97.134331, 29.982010), ST_AsGeoJSON(ST_MakePoint(-97.134331, 29.982010))),
(920, 'Farris Ln', 'address', 'description', ST_MakePoint(-97.283272, 29.988424), ST_AsGeoJSON(ST_MakePoint(-97.283272, 29.988424))),
(921, 'P2030 - Pine Valley Loop Foster Lake Overflow', 'address', 'description', ST_MakePoint(-97.315735, 29.960033), ST_AsGeoJSON(ST_MakePoint(-97.315735, 29.960033))),
(924, 'P2033 - Serbin Rd at Long Prarie Branch Creek', 'address', 'description', ST_MakePoint(-97.037010, 30.064812), ST_AsGeoJSON(ST_MakePoint(-97.037010, 30.064812))),
(925, 'COS1005 - 1900 Woodress St', 'address', 'description', ST_MakePoint(-97.134933, 29.995094), ST_AsGeoJSON(ST_MakePoint(-97.134933, 29.995094))),
(926, 'TX1019 - FM 535 @ Watterson Road', 'address', 'description', ST_MakePoint(-97.384438, 29.971060), ST_AsGeoJSON(ST_MakePoint(-97.384438, 29.971060))),
(927, 'P2034 - Barton Creek at Zapalac Rd', 'address', 'description', ST_MakePoint(-97.145340, 29.945227), ST_AsGeoJSON(ST_MakePoint(-97.145340, 29.945227))),
(928, 'P2035 - Karisch Rd at Pin Oak Creek', 'address', 'description', ST_MakePoint(-97.068565, 30.028528), ST_AsGeoJSON(ST_MakePoint(-97.068565, 30.028528))),
(929, 'Kirk Corner', 'address', 'description', ST_MakePoint(-97.453590, 29.724924), ST_AsGeoJSON(ST_MakePoint(-97.453590, 29.724924))),
(930, 'Ramp from NB 183 to MoPac', 'address', 'description', ST_MakePoint(-97.738068, 30.378557), ST_AsGeoJSON(ST_MakePoint(-97.738068, 30.378557))),
(931, '2900-blk Bee Caves Rd', 'address', 'description', ST_MakePoint(-97.791901, 30.270645), ST_AsGeoJSON(ST_MakePoint(-97.791901, 30.270645))),
(932, '5400-blk Steiner Ranch Blvd', 'address', 'description', ST_MakePoint(-97.870270, 30.393028), ST_AsGeoJSON(ST_MakePoint(-97.870270, 30.393028))),
(933, '12500-blk FM 812 @ COTA', 'address', 'description', ST_MakePoint(-97.648224, 30.132597), ST_AsGeoJSON(ST_MakePoint(-97.648224, 30.132597))),
(934, '9000-blk FM 973 @ Gilleland Creek', 'address', 'description', ST_MakePoint(-97.570221, 30.294378), ST_AsGeoJSON(ST_MakePoint(-97.570221, 30.294378))),
(937, 'P4024 - Pleasant Grove RV Park &amp; Camp', 'address', 'description', ST_MakePoint(-97.327621, 30.383915), ST_AsGeoJSON(ST_MakePoint(-97.327621, 30.383915))),
(938, 'COE1006 - 200 Block Kennedy', 'address', 'description', ST_MakePoint(-97.375458, 30.343157), ST_AsGeoJSON(ST_MakePoint(-97.375458, 30.343157))),
(939, 'COE1007 - East 1st @ Avenue G', 'address', 'description', ST_MakePoint(-97.366875, 30.349821), ST_AsGeoJSON(ST_MakePoint(-97.366875, 30.349821))),
(940, 'TX1006 - FM 3000 at Mundine', 'address', 'description', ST_MakePoint(-97.321190, 30.362949), ST_AsGeoJSON(ST_MakePoint(-97.321190, 30.362949))),
(941, 'P4025 - Mundine Road near FM 3000', 'address', 'description', ST_MakePoint(-97.320808, 30.361727), ST_AsGeoJSON(ST_MakePoint(-97.320808, 30.361727))),
(942, 'Lund Carlson Rd @ Werchan Ln', 'address', 'description', ST_MakePoint(-97.427597, 30.419123), ST_AsGeoJSON(ST_MakePoint(-97.427597, 30.419123))),
(943, 'P4026 - Pleasant Grove Loop off FM 3000', 'address', 'description', ST_MakePoint(-97.320610, 30.363451), ST_AsGeoJSON(ST_MakePoint(-97.320610, 30.363451))),
(944, 'Shadowglen Blvd @ Shadow Glen Trce', 'address', 'description', ST_MakePoint(-97.547478, 30.357580), ST_AsGeoJSON(ST_MakePoint(-97.547478, 30.357580))),
(945, 'TX1007 - FM 696 @ Big Sandy Creek', 'address', 'description', ST_MakePoint(-97.290596, 30.321651), ST_AsGeoJSON(ST_MakePoint(-97.290596, 30.321651))),
(948, 'P4027 - Big Sandy Creek @ Old McDade Road', 'address', 'description', ST_MakePoint(-97.291664, 30.312466), ST_AsGeoJSON(ST_MakePoint(-97.291664, 30.312466))),
(951, 'P4028 - Lower Elgin Rd at Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.409508, 30.222675), ST_AsGeoJSON(ST_MakePoint(-97.409508, 30.222675))),
(952, 'P4029 - South Gates on Upper Elgin River Road @ Willbarger', 'address', 'description', ST_MakePoint(-97.441185, 30.281666), ST_AsGeoJSON(ST_MakePoint(-97.441185, 30.281666))),
(954, 'P2036 -Gonzales St @ 21', 'address', 'description', ST_MakePoint(-97.113991, 30.217197), ST_AsGeoJSON(ST_MakePoint(-97.113991, 30.217197))),
(955, 'P2037 - N Main @ 21 in Paige', 'address', 'description', ST_MakePoint(-97.112526, 30.217411), ST_AsGeoJSON(ST_MakePoint(-97.112526, 30.217411))),
(956, 'TX1008 - Hwy 21 @ RR Bridge in Paige', 'address', 'description', ST_MakePoint(-97.125130, 30.216251), ST_AsGeoJSON(ST_MakePoint(-97.125130, 30.216251))),
(958, 'TX1009 - Hwy 21 near Orts Lane', 'address', 'description', ST_MakePoint(-97.084602, 30.227440), ST_AsGeoJSON(ST_MakePoint(-97.084602, 30.227440))),
(959, 'Melody Ln @ Belafonte Blvd', 'address', 'description', ST_MakePoint(-97.571640, 30.256123), ST_AsGeoJSON(ST_MakePoint(-97.571640, 30.256123))),
(960, 'P2039 - August-Anna Rd @ 21', 'address', 'description', ST_MakePoint(-97.074516, 30.227921), ST_AsGeoJSON(ST_MakePoint(-97.074516, 30.227921))),
(961, 'TX1010 - FM 2104 @ Turner Creek', 'address', 'description', ST_MakePoint(-97.098907, 30.189865), ST_AsGeoJSON(ST_MakePoint(-97.098907, 30.189865))),
(962, 'P2040 - Old Pin Oak @ Long Branch', 'address', 'description', ST_MakePoint(-97.131683, 30.165682), ST_AsGeoJSON(ST_MakePoint(-97.131683, 30.165682))),
(963, 'P2041 - 200 Block Lois Ln', 'address', 'description', ST_MakePoint(-97.139793, 30.164679), ST_AsGeoJSON(ST_MakePoint(-97.139793, 30.164679))),
(964, 'P2042 - 200 Block Kinsey', 'address', 'description', ST_MakePoint(-97.191849, 30.161934), ST_AsGeoJSON(ST_MakePoint(-97.191849, 30.161934))),
(965, 'FM 112 & FM 486', 'address', 'description', ST_MakePoint(-97.200211, 30.491579), ST_AsGeoJSON(ST_MakePoint(-97.200211, 30.491579))),
(966, 'P4030 - Littig near Central Ave', 'address', 'description', ST_MakePoint(-97.390938, 30.342543), ST_AsGeoJSON(ST_MakePoint(-97.390938, 30.342543))),
(967, 'P4031 - Pleasant Grove at Roemer Rd', 'address', 'description', ST_MakePoint(-97.334602, 30.373798), ST_AsGeoJSON(ST_MakePoint(-97.334602, 30.373798))),
(968, 'P4032- Old McDade at Pistol Hill Ln', 'address', 'description', ST_MakePoint(-97.356964, 30.343025), ST_AsGeoJSON(ST_MakePoint(-97.356964, 30.343025))),
(969, 'COE1008 - Old McDade at East Alamo', 'address', 'description', ST_MakePoint(-97.362442, 30.345583), ST_AsGeoJSON(ST_MakePoint(-97.362442, 30.345583))),
(970, 'TX1011 - US 290 @ FM 1704', 'address', 'description', ST_MakePoint(-97.366959, 30.336290), ST_AsGeoJSON(ST_MakePoint(-97.366959, 30.336290))),
(971, 'COE1009 - Monterrey @ Monterrey Cove', 'address', 'description', ST_MakePoint(-97.370682, 30.335878), ST_AsGeoJSON(ST_MakePoint(-97.370682, 30.335878))),
(972, 'Tower Rd @ Suncrest Rd', 'address', 'description', ST_MakePoint(-97.528809, 30.368069), ST_AsGeoJSON(ST_MakePoint(-97.528809, 30.368069))),
(973, '7000-blk Blake Manor Rd', 'address', 'description', ST_MakePoint(-97.516068, 30.282986), ST_AsGeoJSON(ST_MakePoint(-97.516068, 30.282986))),
(974, 'P2043 - 200 Blk Frerich Rd near Nink Rd', 'address', 'description', ST_MakePoint(-97.098808, 30.133135), ST_AsGeoJSON(ST_MakePoint(-97.098808, 30.133135))),
(975, 'P2044 - 200 Mustang Dr', 'address', 'description', ST_MakePoint(-97.203239, 30.151155), ST_AsGeoJSON(ST_MakePoint(-97.203239, 30.151155))),
(977, 'P4033 - 500 Mundine Road', 'address', 'description', ST_MakePoint(-97.291496, 30.346506), ST_AsGeoJSON(ST_MakePoint(-97.291496, 30.346506))),
(978, 'P2045 - Antioch @ Rabbs Creek', 'address', 'description', ST_MakePoint(-97.139549, 30.174931), ST_AsGeoJSON(ST_MakePoint(-97.139549, 30.174931))),
(979, 'TX1012 - 2104 @ Old Pin Oak Creek', 'address', 'description', ST_MakePoint(-97.087181, 30.081264), ST_AsGeoJSON(ST_MakePoint(-97.087181, 30.081264))),
(980, 'CR 152 West of CR 140', 'address', 'description', ST_MakePoint(-97.629105, 30.693113), ST_AsGeoJSON(ST_MakePoint(-97.629105, 30.693113))),
(981, 'CR 442', 'address', 'description', ST_MakePoint(-97.187691, 30.504276), ST_AsGeoJSON(ST_MakePoint(-97.187691, 30.504276))),
(982, 'CR 464', 'address', 'description', ST_MakePoint(-97.327324, 30.454397), ST_AsGeoJSON(ST_MakePoint(-97.327324, 30.454397))),
(983, 'CR 467', 'address', 'description', ST_MakePoint(-97.296127, 30.452242), ST_AsGeoJSON(ST_MakePoint(-97.296127, 30.452242))),
(1021, 'Manda Carlson Rd @ New Sweden Church Rd', 'address', 'description', ST_MakePoint(-97.471161, 30.398260), ST_AsGeoJSON(ST_MakePoint(-97.471161, 30.398260))),
(1023, 'Hogeye Rd @ Bitting School Rd', 'address', 'description', ST_MakePoint(-97.465523, 30.291861), ST_AsGeoJSON(ST_MakePoint(-97.465523, 30.291861))),
(1025, 'CR 175 / Vista Isle', 'address', 'description', ST_MakePoint(-97.762054, 30.547762), ST_AsGeoJSON(ST_MakePoint(-97.762054, 30.547762))),
(1029, '15900-blk Fuchs Grove Rd @ Cameron Rd', 'address', 'description', ST_MakePoint(-97.545616, 30.400818), ST_AsGeoJSON(ST_MakePoint(-97.545616, 30.400818))),
(1030, 'TX1013 - FM 812 @ County Line', 'address', 'description', ST_MakePoint(-97.609650, 30.102629), ST_AsGeoJSON(ST_MakePoint(-97.609650, 30.102629))),
(1033, 'P4034 - 2100 Blk Upper Elgin River Rd', 'address', 'description', ST_MakePoint(-97.461067, 30.227066), ST_AsGeoJSON(ST_MakePoint(-97.461067, 30.227066))),
(1035, '6800-blk Wolf Ln', 'address', 'description', ST_MakePoint(-97.556290, 30.158638), ST_AsGeoJSON(ST_MakePoint(-97.556290, 30.158638))),
(1036, 'TX1018 - FM 1704 @ Youngs Prarie', 'address', 'description', ST_MakePoint(-97.396027, 30.289129), ST_AsGeoJSON(ST_MakePoint(-97.396027, 30.289129))),
(1038, '200 Blk Lehman Road', 'address', 'description', ST_MakePoint(-97.865913, 29.984184), ST_AsGeoJSON(ST_MakePoint(-97.865913, 29.984184))),
(1039, 'Scott St @ W 3rd St', 'address', 'description', ST_MakePoint(-97.885918, 29.984274), ST_AsGeoJSON(ST_MakePoint(-97.885918, 29.984274))),
(1043, 'William Pettus Road', 'address', 'description', ST_MakePoint(-97.827408, 29.879990), ST_AsGeoJSON(ST_MakePoint(-97.827408, 29.879990))),
(1044, 'P4035 - 30070 N. County Line Rd.', 'address', 'description', ST_MakePoint(-97.369957, 30.418858), ST_AsGeoJSON(ST_MakePoint(-97.369957, 30.418858))),
(1045, 'CR 438 West CR 437', 'address', 'description', ST_MakePoint(-97.226730, 30.658031), ST_AsGeoJSON(ST_MakePoint(-97.226730, 30.658031))),
(1046, 'Burleson Manor Rd @ FM 969', 'address', 'description', ST_MakePoint(-97.532005, 30.254326), ST_AsGeoJSON(ST_MakePoint(-97.532005, 30.254326))),
(1047, 'E Access S of Brent Blvd ', 'address', 'description', ST_MakePoint(-97.866020, 30.002956), ST_AsGeoJSON(ST_MakePoint(-97.866020, 30.002956))),
(1048, '16600-blk Decker Lake Rd', 'address', 'description', ST_MakePoint(-97.559418, 30.259037), ST_AsGeoJSON(ST_MakePoint(-97.559418, 30.259037))),
(1049, 'Jacobson Rd @ Elroy Rd', 'address', 'description', ST_MakePoint(-97.618683, 30.137329), ST_AsGeoJSON(ST_MakePoint(-97.618683, 30.137329))),
(1050, 'CR 147 east of CR 234', 'address', 'description', ST_MakePoint(-97.657639, 30.741179), ST_AsGeoJSON(ST_MakePoint(-97.657639, 30.741179))),
(1051, 'Creek Side Dr @ W Valley Spring Rd', 'address', 'description', ST_MakePoint(-98.146629, 30.034313), ST_AsGeoJSON(ST_MakePoint(-98.146629, 30.034313))),
(1052, 'Slaughter Creek Trail @ Fm 1826', 'address', 'description', ST_MakePoint(-97.903458, 30.209475), ST_AsGeoJSON(ST_MakePoint(-97.903458, 30.209475))),
(1053, 'Old Colony Line Road', 'address', 'description', ST_MakePoint(-97.535477, 29.855839), ST_AsGeoJSON(ST_MakePoint(-97.535477, 29.855839))),
(1054, 'Bobwhite', 'address', 'description', ST_MakePoint(-97.743202, 29.926085), ST_AsGeoJSON(ST_MakePoint(-97.743202, 29.926085))),
(1055, 'Mineral Springs Rd', 'address', 'description', ST_MakePoint(-97.687584, 29.776640), ST_AsGeoJSON(ST_MakePoint(-97.687584, 29.776640))),
(1056, 'Washburn Rd', 'address', 'description', ST_MakePoint(-97.686104, 29.728392), ST_AsGeoJSON(ST_MakePoint(-97.686104, 29.728392))),
(1057, 'Longhollow Dr', 'address', 'description', ST_MakePoint(-97.643532, 30.063047), ST_AsGeoJSON(ST_MakePoint(-97.643532, 30.063047))),
(1058, 'Dickerson Road', 'address', 'description', ST_MakePoint(-97.800499, 29.815166), ST_AsGeoJSON(ST_MakePoint(-97.800499, 29.815166))),
(1059, 'Acorn Rd', 'address', 'description', ST_MakePoint(-97.730522, 29.785095), ST_AsGeoJSON(ST_MakePoint(-97.730522, 29.785095))),
(1060, 'Cherryville Parkway', 'address', 'description', ST_MakePoint(-97.740112, 29.832033), ST_AsGeoJSON(ST_MakePoint(-97.740112, 29.832033))),
(1061, 'Rogers Ranch Road', 'address', 'description', ST_MakePoint(-97.722588, 29.978737), ST_AsGeoJSON(ST_MakePoint(-97.722588, 29.978737))),
(1062, 'Taylorsville Road', 'address', 'description', ST_MakePoint(-97.453850, 29.863132), ST_AsGeoJSON(ST_MakePoint(-97.453850, 29.863132))),
(1063, 'Payne Ln', 'address', 'description', ST_MakePoint(-97.730827, 29.898817), ST_AsGeoJSON(ST_MakePoint(-97.730827, 29.898817))),
(1064, 'P2055 - 200 blk Hofferek Rd', 'address', 'description', ST_MakePoint(-97.313454, 29.917870), ST_AsGeoJSON(ST_MakePoint(-97.313454, 29.917870))),
(1065, 'Barth Rd', 'address', 'description', ST_MakePoint(-97.640068, 29.962645), ST_AsGeoJSON(ST_MakePoint(-97.640068, 29.962645))),
(1066, 'Scull Crossing', 'address', 'description', ST_MakePoint(-97.856781, 29.849546), ST_AsGeoJSON(ST_MakePoint(-97.856781, 29.849546))),
(1067, 'Sandy Fork Rd', 'address', 'description', ST_MakePoint(-97.444473, 29.784872), ST_AsGeoJSON(ST_MakePoint(-97.444473, 29.784872))),
(1069, 'Young Lane', 'address', 'description', ST_MakePoint(-97.584290, 29.821814), ST_AsGeoJSON(ST_MakePoint(-97.584290, 29.821814))),
(1070, 'Austin St ', 'address', 'description', ST_MakePoint(-97.686813, 29.693615), ST_AsGeoJSON(ST_MakePoint(-97.686813, 29.693615))),
(1071, 'Fifth Street', 'address', 'description', ST_MakePoint(-97.784233, 29.891319), ST_AsGeoJSON(ST_MakePoint(-97.784233, 29.891319))),
(1072, 'Lay Road', 'address', 'description', ST_MakePoint(-97.657928, 29.858965), ST_AsGeoJSON(ST_MakePoint(-97.657928, 29.858965))),
(1073, 'Old McMahan Rd', 'address', 'description', ST_MakePoint(-97.595230, 29.862389), ST_AsGeoJSON(ST_MakePoint(-97.595230, 29.862389))),
(1074, 'Rolling Ridge Rd', 'address', 'description', ST_MakePoint(-97.706573, 29.953789), ST_AsGeoJSON(ST_MakePoint(-97.706573, 29.953789))),
(1075, 'Farmers Road', 'address', 'description', ST_MakePoint(-97.797600, 29.918646), ST_AsGeoJSON(ST_MakePoint(-97.797600, 29.918646))),
(1076, 'Valley Way Dr', 'address', 'description', ST_MakePoint(-97.807579, 29.878147), ST_AsGeoJSON(ST_MakePoint(-97.807579, 29.878147))),
(1077, 'Biggs Road', 'address', 'description', ST_MakePoint(-97.603905, 29.699467), ST_AsGeoJSON(ST_MakePoint(-97.603905, 29.699467))),
(1078, 'FM 1322', 'address', 'description', ST_MakePoint(-97.602592, 29.677752), ST_AsGeoJSON(ST_MakePoint(-97.602592, 29.677752))),
(1079, 'FM 1322', 'address', 'description', ST_MakePoint(-97.592827, 29.748737), ST_AsGeoJSON(ST_MakePoint(-97.592827, 29.748737))),
(1080, 'Hwy 86', 'address', 'description', ST_MakePoint(-97.578583, 29.791092), ST_AsGeoJSON(ST_MakePoint(-97.578583, 29.791092))),
(1081, 'FM 672', 'address', 'description', ST_MakePoint(-97.654930, 29.896231), ST_AsGeoJSON(ST_MakePoint(-97.654930, 29.896231))),
(1082, 'P2047 - 500 Blk St. Delight Rd', 'address', 'description', ST_MakePoint(-97.110825, 30.178963), ST_AsGeoJSON(ST_MakePoint(-97.110825, 30.178963))),
(1083, 'Ebbon Rd', 'address', 'description', ST_MakePoint(-97.588692, 29.739906), ST_AsGeoJSON(ST_MakePoint(-97.588692, 29.739906))),
(1089, 'Dale Lane', 'address', 'description', ST_MakePoint(-97.557838, 29.948521), ST_AsGeoJSON(ST_MakePoint(-97.557838, 29.948521))),
(1090, 'Cottonwood Trail', 'address', 'description', ST_MakePoint(-97.775963, 29.939159), ST_AsGeoJSON(ST_MakePoint(-97.775963, 29.939159))),
(1091, 'Old Luling Road', 'address', 'description', ST_MakePoint(-97.663750, 29.832401), ST_AsGeoJSON(ST_MakePoint(-97.663750, 29.832401))),
(1092, 'Chalk Road', 'address', 'description', ST_MakePoint(-97.439323, 29.750856), ST_AsGeoJSON(ST_MakePoint(-97.439323, 29.750856))),
(1093, 'River Park Road', 'address', 'description', ST_MakePoint(-97.691940, 29.680948), ST_AsGeoJSON(ST_MakePoint(-97.691940, 29.680948))),
(1094, 'CR 201', 'address', 'description', ST_MakePoint(-97.978905, 30.734472), ST_AsGeoJSON(ST_MakePoint(-97.978905, 30.734472))),
(1095, 'IH 35 SB @ Blanco River', 'address', 'description', ST_MakePoint(-97.898483, 29.911884), ST_AsGeoJSON(ST_MakePoint(-97.898483, 29.911884))),
(1097, 'TX1014 - Hwy 535 East of Meduna', 'address', 'description', ST_MakePoint(-97.258881, 29.934404), ST_AsGeoJSON(ST_MakePoint(-97.258881, 29.934404))),
(1099, 'HWY 80 @ Blanco River ', 'address', 'description', ST_MakePoint(-97.910706, 29.879633), ST_AsGeoJSON(ST_MakePoint(-97.910706, 29.879633))),
(1100, 'McNeil Creek Road', 'address', 'description', ST_MakePoint(-97.572426, 29.708897), ST_AsGeoJSON(ST_MakePoint(-97.572426, 29.708897))),
(1101, 'Hommannville Trail', 'address', 'description', ST_MakePoint(-97.664207, 29.985748), ST_AsGeoJSON(ST_MakePoint(-97.664207, 29.985748))),
(1102, 'HWY 21 @ CR 266', 'address', 'description', ST_MakePoint(-97.895767, 29.882484), ST_AsGeoJSON(ST_MakePoint(-97.895767, 29.882484))),
(1103, 'Fox Lane', 'address', 'description', ST_MakePoint(-97.567802, 29.832830), ST_AsGeoJSON(ST_MakePoint(-97.567802, 29.832830))),
(1104, 'St Joseph Street', 'address', 'description', ST_MakePoint(-97.753754, 29.728031), ST_AsGeoJSON(ST_MakePoint(-97.753754, 29.728031))),
(1105, 'Stairtown Road', 'address', 'description', ST_MakePoint(-97.732597, 29.714302), ST_AsGeoJSON(ST_MakePoint(-97.732597, 29.714302))),
(1107, 'Old San Antonio @ 1626', 'address', 'description', ST_MakePoint(-97.801559, 30.142878), ST_AsGeoJSON(ST_MakePoint(-97.801559, 30.142878))),
(1109, 'P2048 - 300 Block of Pine Valley', 'address', 'description', ST_MakePoint(-97.308968, 29.949093), ST_AsGeoJSON(ST_MakePoint(-97.308968, 29.949093))),
(1110, 'P4036 - Comanche Trl just of FM 969', 'address', 'description', ST_MakePoint(-97.464035, 30.226383), ST_AsGeoJSON(ST_MakePoint(-97.464035, 30.226383))),
(1111, 'IH 35 SB @ San Marcos River', 'address', 'description', ST_MakePoint(-97.931763, 29.874996), ST_AsGeoJSON(ST_MakePoint(-97.931763, 29.874996))),
(1112, 'P2049 - 100 Blk Kellar Rd', 'address', 'description', ST_MakePoint(-97.188866, 30.051336), ST_AsGeoJSON(ST_MakePoint(-97.188866, 30.051336))),
(1117, '1800 Blk 2nd St', 'address', 'description', ST_MakePoint(-98.288528, 30.576242), ST_AsGeoJSON(ST_MakePoint(-98.288528, 30.576242))),
(1118, 'RR 12 @ Blanco River ', 'address', 'description', ST_MakePoint(-98.088638, 29.993595), ST_AsGeoJSON(ST_MakePoint(-98.088638, 29.993595))),
(1122, 'Camp Craft Rd at West bank Dr ', 'address', 'description', ST_MakePoint(-97.815819, 30.276579), ST_AsGeoJSON(ST_MakePoint(-97.815819, 30.276579))),
(1123, 'Darden Hill Rd @ Low Water Crossing', 'address', 'description', ST_MakePoint(-98.021858, 30.153233), ST_AsGeoJSON(ST_MakePoint(-98.021858, 30.153233))),
(1125, 'FM 1660 / HWY 29', 'address', 'description', ST_MakePoint(-97.542717, 30.635281), ST_AsGeoJSON(ST_MakePoint(-97.542717, 30.635281))),
(1127, 'Garrison Rd @ Onion Creek', 'address', 'description', ST_MakePoint(-97.838821, 30.094650), ST_AsGeoJSON(ST_MakePoint(-97.838821, 30.094650))),
(1128, 'CR 270', 'address', 'description', ST_MakePoint(-97.846596, 30.616421), ST_AsGeoJSON(ST_MakePoint(-97.846596, 30.616421))),
(1129, 'FM 621 @ HWY 123', 'address', 'description', ST_MakePoint(-97.938522, 29.865286), ST_AsGeoJSON(ST_MakePoint(-97.938522, 29.865286))),
(1130, 'FM 621 @ Picasso Dr ', 'address', 'description', ST_MakePoint(-97.918701, 29.844730), ST_AsGeoJSON(ST_MakePoint(-97.918701, 29.844730))),
(1131, 'Redwood Rd @ Hwy 123', 'address', 'description', ST_MakePoint(-97.940414, 29.845764), ST_AsGeoJSON(ST_MakePoint(-97.940414, 29.845764))),
(1132, 'Redwood Rd @ Cottonwood Pkwy', 'address', 'description', ST_MakePoint(-97.932060, 29.837578), ST_AsGeoJSON(ST_MakePoint(-97.932060, 29.837578))),
(1133, 'Centerpoint Rd East OF Old Bastrop Hwy (CR 266)', 'address', 'description', ST_MakePoint(-97.968132, 29.813601), ST_AsGeoJSON(ST_MakePoint(-97.968132, 29.813601))),
(1134, 'Woodcreek Ranch Rd @ Lone Man Creek Dr', 'address', 'description', ST_MakePoint(-98.052094, 30.006845), ST_AsGeoJSON(ST_MakePoint(-98.052094, 30.006845))),
(1137, '11900-Blk Old San Antonio Rd', 'address', 'description', ST_MakePoint(-97.809334, 30.134632), ST_AsGeoJSON(ST_MakePoint(-97.809334, 30.134632))),
(1139, '3700-Blk Wyldwood Rd', 'address', 'description', ST_MakePoint(-94.835587, 32.622650), ST_AsGeoJSON(ST_MakePoint(-94.835587, 32.622650))),
(1140, '5700-Blk Jesse Bohls Dr', 'address', 'description', ST_MakePoint(-97.563698, 30.436340), ST_AsGeoJSON(ST_MakePoint(-97.563698, 30.436340))),
(1141, 'Cameron Rd @ Fuchs Grove Ln', 'address', 'description', ST_MakePoint(-97.545593, 30.400906), ST_AsGeoJSON(ST_MakePoint(-97.545593, 30.400906))),
(1142, 'Cameron Rd @ Schmidt Ln', 'address', 'description', ST_MakePoint(-97.541405, 30.407438), ST_AsGeoJSON(ST_MakePoint(-97.541405, 30.407438))),
(1143, '7300-Blk Taylor Ln', 'address', 'description', ST_MakePoint(-97.550438, 30.264381), ST_AsGeoJSON(ST_MakePoint(-97.550438, 30.264381))),
(1144, 'Taylor Ln @ Decker Lake Rd', 'address', 'description', ST_MakePoint(-97.554733, 30.256798), ST_AsGeoJSON(ST_MakePoint(-97.554733, 30.256798))),
(1145, '14400-Blk Kimbro West', 'address', 'description', ST_MakePoint(-97.482803, 30.376925), ST_AsGeoJSON(ST_MakePoint(-97.482803, 30.376925))),
(1146, '14900-Blk E US 290 HWY EB', 'address', 'description', ST_MakePoint(-97.479820, 30.351034), ST_AsGeoJSON(ST_MakePoint(-97.479820, 30.351034))),
(1148, 'E US 290 EB @ Abrahamson Rd', 'address', 'description', ST_MakePoint(-97.467377, 30.351313), ST_AsGeoJSON(ST_MakePoint(-97.467377, 30.351313))),
(1150, '16300-Blk Littig Rd', 'address', 'description', ST_MakePoint(-97.477806, 30.324608), ST_AsGeoJSON(ST_MakePoint(-97.477806, 30.324608))),
(1153, 'River Rd at Loma Vista', 'address', 'description', ST_MakePoint(-98.100533, 29.993029), ST_AsGeoJSON(ST_MakePoint(-98.100533, 29.993029))),
(1154, '11800-Blk Jones Rd', 'address', 'description', ST_MakePoint(-97.477959, 30.322590), ST_AsGeoJSON(ST_MakePoint(-97.477959, 30.322590))),
(1157, '15300-Blk Bois D Arc Rd', 'address', 'description', ST_MakePoint(-97.481369, 30.391319), ST_AsGeoJSON(ST_MakePoint(-97.481369, 30.391319))),
(1158, '17300-Blk FM 969', 'address', 'description', ST_MakePoint(-97.541321, 30.254087), ST_AsGeoJSON(ST_MakePoint(-97.541321, 30.254087))),
(1159, '15300-blk Jacobson Rd', 'address', 'description', ST_MakePoint(-97.606773, 30.132109), ST_AsGeoJSON(ST_MakePoint(-97.606773, 30.132109))),
(1160, '16600-blk Decker Lake Rd', 'address', 'description', ST_MakePoint(-97.556908, 30.258297), ST_AsGeoJSON(ST_MakePoint(-97.556908, 30.258297))),
(1161, '8300-blk Linden Rd', 'address', 'description', ST_MakePoint(-97.588615, 30.134829), ST_AsGeoJSON(ST_MakePoint(-97.588615, 30.134829))),
(1163, 'TX1015 - 1704 Bridge at Wilbarger Creek', 'address', 'description', ST_MakePoint(-97.432655, 30.232073), ST_AsGeoJSON(ST_MakePoint(-97.432655, 30.232073))),
(1175, 'TX1017 - FM 2571 @ Wolf Creek', 'address', 'description', ST_MakePoint(-97.220116, 30.020525), ST_AsGeoJSON(ST_MakePoint(-97.220116, 30.020525))),
(1177, '8500-blk FM 1826', 'address', 'description', ST_MakePoint(-97.902122, 30.210152), ST_AsGeoJSON(ST_MakePoint(-97.902122, 30.210152))),
(1178, 'Easley Rd @ Little Piney Creek ', 'address', 'description', ST_MakePoint(-97.279053, 29.963112), ST_AsGeoJSON(ST_MakePoint(-97.279053, 29.963112))),
(1179, 'Convict Hill near Latta', 'address', 'description', ST_MakePoint(-97.850754, 30.217197), ST_AsGeoJSON(ST_MakePoint(-97.850754, 30.217197))),
(1180, 'P2050 100 Blk Peace Haven Ln', 'address', 'description', ST_MakePoint(-97.257645, 30.096045), ST_AsGeoJSON(ST_MakePoint(-97.257645, 30.096045))),
(1182, 'P2052 - 480 Blk Kelley Rd E', 'address', 'description', ST_MakePoint(-97.235573, 30.150024), ST_AsGeoJSON(ST_MakePoint(-97.235573, 30.150024))),
(1183, 'P4037 - Paint Creek and Railroad Track Rd', 'address', 'description', ST_MakePoint(-97.142967, 30.218374), ST_AsGeoJSON(ST_MakePoint(-97.142967, 30.218374))),
(1184, 'P4038 - Lincoln Lake Subdivision', 'address', 'description', ST_MakePoint(-97.091125, 30.249611), ST_AsGeoJSON(ST_MakePoint(-97.091125, 30.249611))),
(1186, '1100 CR 450', 'address', 'description', ST_MakePoint(-97.292862, 30.539791), ST_AsGeoJSON(ST_MakePoint(-97.292862, 30.539791))),
(1187, 'P1017 - Shiloh Rd at S Fitzwilliams Ln', 'address', 'description', ST_MakePoint(-97.358566, 30.092052), ST_AsGeoJSON(ST_MakePoint(-97.358566, 30.092052))),
(1188, '800 blk CR 139', 'address', 'description', ST_MakePoint(-97.537354, 30.489376), ST_AsGeoJSON(ST_MakePoint(-97.537354, 30.489376))),
(1189, 'CR 123 @ Twin Ridge Pkwy', 'address', 'description', ST_MakePoint(-97.604385, 30.528866), ST_AsGeoJSON(ST_MakePoint(-97.604385, 30.528866))),
(1190, '4000 blk CR405', 'address', 'description', ST_MakePoint(-97.437141, 30.471769), ST_AsGeoJSON(ST_MakePoint(-97.437141, 30.471769))),
(1191, 'CR406 @ CR407', 'address', 'description', ST_MakePoint(-97.418816, 30.502846), ST_AsGeoJSON(ST_MakePoint(-97.418816, 30.502846))),
(1192, 'CR404', 'address', 'description', ST_MakePoint(-97.436241, 30.532572), ST_AsGeoJSON(ST_MakePoint(-97.436241, 30.532572))),
(1193, 'CR448', 'address', 'description', ST_MakePoint(-97.320244, 30.548414), ST_AsGeoJSON(ST_MakePoint(-97.320244, 30.548414))),
(1194, 'CR421', 'address', 'description', ST_MakePoint(-97.201279, 30.693382), ST_AsGeoJSON(ST_MakePoint(-97.201279, 30.693382))),
(1195, 'CR429', 'address', 'description', ST_MakePoint(-97.081200, 30.710455), ST_AsGeoJSON(ST_MakePoint(-97.081200, 30.710455))),
(1196, 'CR349', 'address', 'description', ST_MakePoint(-97.401009, 30.714083), ST_AsGeoJSON(ST_MakePoint(-97.401009, 30.714083))),
(1197, 'CR 417 @ Turkey Creek', 'address', 'description', ST_MakePoint(-97.357239, 30.653259), ST_AsGeoJSON(ST_MakePoint(-97.357239, 30.653259))),
(1198, 'P2054 - KLBJ Rd 65-278 Blk ', 'address', 'description', ST_MakePoint(-97.158798, 30.038326), ST_AsGeoJSON(ST_MakePoint(-97.158798, 30.038326))),
(1199, 'P2055 - KLBJ Rd 65-278 Blk', 'address', 'description', ST_MakePoint(-97.168030, 30.041939), ST_AsGeoJSON(ST_MakePoint(-97.168030, 30.041939))),
(1200, 'P2056 - Alum Creek just South of Gotier Trace Rd', 'address', 'description', ST_MakePoint(-97.220306, 30.099607), ST_AsGeoJSON(ST_MakePoint(-97.220306, 30.099607))),
(1201, 'P2059 - Meduna Rd North of High Crossing Rd', 'address', 'description', ST_MakePoint(-97.250000, 29.927925), ST_AsGeoJSON(ST_MakePoint(-97.250000, 29.927925))),
(1204, 'CR 226', 'address', 'description', ST_MakePoint(-97.814201, 30.836020), ST_AsGeoJSON(ST_MakePoint(-97.814201, 30.836020))),
(1206, 'FM 32 S OF FM 473', 'address', 'description', ST_MakePoint(-98.330643, 30.020653), ST_AsGeoJSON(ST_MakePoint(-98.330643, 30.020653))),
(1207, '900 Blk of Nink Road', 'address', 'description', ST_MakePoint(-97.100548, 30.120358), ST_AsGeoJSON(ST_MakePoint(-97.100548, 30.120358))),
(1210, 'P2060 - 1000 Blk Saint Delight Rd', 'address', 'description', ST_MakePoint(-97.113388, 30.145144), ST_AsGeoJSON(ST_MakePoint(-97.113388, 30.145144))),
(1213, 'Schulze Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.999619, 29.764311), ST_AsGeoJSON(ST_MakePoint(-96.999619, 29.764311))),
(1214, 'Anders Bottom Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.826996, 29.830805), ST_AsGeoJSON(ST_MakePoint(-96.826996, 29.830805))),
(1215, 'Baumgarten Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.956383, 29.667870), ST_AsGeoJSON(ST_MakePoint(-96.956383, 29.667870))),
(1216, 'Bilimek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.878899, 29.676725), ST_AsGeoJSON(ST_MakePoint(-96.878899, 29.676725))),
(1217, 'Bohuslav Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.836906, 29.813789), ST_AsGeoJSON(ST_MakePoint(-96.836906, 29.813789))),
(1218, 'Brandt River Bottom Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.782684, 29.824234), ST_AsGeoJSON(ST_MakePoint(-96.782684, 29.824234))),
(1219, 'Bruno Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.949646, 29.745979), ST_AsGeoJSON(ST_MakePoint(-96.949646, 29.745979))),
(1220, 'Bryant Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.969498, 29.703325), ST_AsGeoJSON(ST_MakePoint(-96.969498, 29.703325))),
(1221, 'Clark Ln, Fayette County', 'address', 'description', ST_MakePoint(-96.919731, 29.664957), ST_AsGeoJSON(ST_MakePoint(-96.919731, 29.664957))),
(1222, 'Gebert Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.011337, 29.768200), ST_AsGeoJSON(ST_MakePoint(-97.011337, 29.768200))),
(1223, 'Guenther Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.855621, 29.869698), ST_AsGeoJSON(ST_MakePoint(-96.855621, 29.869698))),
(1225, 'Krischke Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.967438, 29.738708), ST_AsGeoJSON(ST_MakePoint(-96.967438, 29.738708))),
(1226, 'Lane Pool Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.836411, 29.870905), ST_AsGeoJSON(ST_MakePoint(-96.836411, 29.870905))),
(1227, 'Lidiak Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.863083, 29.814957), ST_AsGeoJSON(ST_MakePoint(-96.863083, 29.814957))),
(1228, 'Loehr Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.808350, 29.852669), ST_AsGeoJSON(ST_MakePoint(-96.808350, 29.852669))),
(1229, 'Mensik Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.864502, 29.749830), ST_AsGeoJSON(ST_MakePoint(-96.864502, 29.749830))),
(1230, 'Munke Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.847633, 29.831059), ST_AsGeoJSON(ST_MakePoint(-96.847633, 29.831059))),
(1231, 'Oakland Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.876198, 29.669636), ST_AsGeoJSON(ST_MakePoint(-96.876198, 29.669636))),
(1232, 'Oakland Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.855209, 29.658689), ST_AsGeoJSON(ST_MakePoint(-96.855209, 29.658689))),
(1233, 'Ohnheiser Kaase Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.952095, 29.795063), ST_AsGeoJSON(ST_MakePoint(-96.952095, 29.795063))),
(1234, 'Petter Rainosek Loop (south), Fayette County', 'address', 'description', ST_MakePoint(-96.895187, 29.848938), ST_AsGeoJSON(ST_MakePoint(-96.895187, 29.848938))),
(1235, 'Schilhab Bottom Loop, Fayette County', 'address', 'description', ST_MakePoint(-96.974731, 29.750624), ST_AsGeoJSON(ST_MakePoint(-96.974731, 29.750624))),
(1236, 'Seidel Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.955742, 29.705790), ST_AsGeoJSON(ST_MakePoint(-96.955742, 29.705790))),
(1237, 'Seydler Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.777687, 29.808804), ST_AsGeoJSON(ST_MakePoint(-96.777687, 29.808804))),
(1238, 'Piano Bridge Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.850853, 29.723860), ST_AsGeoJSON(ST_MakePoint(-96.850853, 29.723860))),
(1239, 'Bartons Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.111908, 29.958767), ST_AsGeoJSON(ST_MakePoint(-97.111908, 29.958767))),
(1240, 'Bell Settlement Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.807854, 30.115679), ST_AsGeoJSON(ST_MakePoint(-96.807854, 30.115679))),
(1241, 'Camelback Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.033607, 30.025095), ST_AsGeoJSON(ST_MakePoint(-97.033607, 30.025095))),
(1242, 'Davis Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.060089, 29.877958), ST_AsGeoJSON(ST_MakePoint(-97.060089, 29.877958))),
(1243, 'Owl Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.893555, 30.049114), ST_AsGeoJSON(ST_MakePoint(-96.893555, 30.049114))),
(1244, 'Spring Branch Ln, Fayette County', 'address', 'description', ST_MakePoint(-97.017456, 29.987932), ST_AsGeoJSON(ST_MakePoint(-97.017456, 29.987932))),
(1245, 'West Point Loop, Fayette County', 'address', 'description', ST_MakePoint(-97.028481, 29.950809), ST_AsGeoJSON(ST_MakePoint(-97.028481, 29.950809))),
(1246, 'Airport Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.931297, 29.875782), ST_AsGeoJSON(ST_MakePoint(-96.931297, 29.875782))),
(1247, 'Burke Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.135796, 29.713629), ST_AsGeoJSON(ST_MakePoint(-97.135796, 29.713629))),
(1248, 'Creamer Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.924736, 29.860077), ST_AsGeoJSON(ST_MakePoint(-96.924736, 29.860077))),
(1249, 'Dozier Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.195892, 29.723896), ST_AsGeoJSON(ST_MakePoint(-97.195892, 29.723896))),
(1250, 'Ehler Grasshoff Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.043289, 29.742416), ST_AsGeoJSON(ST_MakePoint(-97.043289, 29.742416))),
(1251, 'Elm Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.278183, 29.775389), ST_AsGeoJSON(ST_MakePoint(-97.278183, 29.775389))),
(1252, 'Farek Loth Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.030907, 29.720430), ST_AsGeoJSON(ST_MakePoint(-97.030907, 29.720430))),
(1253, 'Father Anders Loop, Fayette County', 'address', 'description', ST_MakePoint(-97.255203, 29.754507), ST_AsGeoJSON(ST_MakePoint(-97.255203, 29.754507))),
(1254, 'Freyburg Engle Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.019188, 29.709305), ST_AsGeoJSON(ST_MakePoint(-97.019188, 29.709305))),
(1255, 'Freyburg Engle Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.021317, 29.703732), ST_AsGeoJSON(ST_MakePoint(-97.021317, 29.703732))),
(1256, 'Hurlock Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.150253, 29.865511), ST_AsGeoJSON(ST_MakePoint(-97.150253, 29.865511))),
(1257, 'Jeddo Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.254112, 29.818254), ST_AsGeoJSON(ST_MakePoint(-97.254112, 29.818254))),
(1258, 'Jurica Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.021851, 29.651196), ST_AsGeoJSON(ST_MakePoint(-97.021851, 29.651196))),
(1260, 'Ladewig Ln, Fayette County', 'address', 'description', ST_MakePoint(-97.039963, 29.701662), ST_AsGeoJSON(ST_MakePoint(-97.039963, 29.701662))),
(1261, 'Louis Herzik Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.026833, 29.680021), ST_AsGeoJSON(ST_MakePoint(-97.026833, 29.680021))),
(1262, 'Maynard Hallmark Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.259644, 29.783844), ST_AsGeoJSON(ST_MakePoint(-97.259644, 29.783844))),
(1263, 'Mulberry Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.083008, 29.673367), ST_AsGeoJSON(ST_MakePoint(-97.083008, 29.673367))),
(1264, 'S Old Smithville Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.135643, 29.797997), ST_AsGeoJSON(ST_MakePoint(-97.135643, 29.797997))),
(1265, 'S Old Smithville Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.139442, 29.826315), ST_AsGeoJSON(ST_MakePoint(-97.139442, 29.826315))),
(1266, 'N Old Smithville Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.133881, 29.851349), ST_AsGeoJSON(ST_MakePoint(-97.133881, 29.851349))),
(1267, 'Old Waelder Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.185829, 29.694319), ST_AsGeoJSON(ST_MakePoint(-97.185829, 29.694319))),
(1268, 'E Parker Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.079895, 29.769745), ST_AsGeoJSON(ST_MakePoint(-97.079895, 29.769745))),
(1269, 'Parkerville Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.115257, 29.808664), ST_AsGeoJSON(ST_MakePoint(-97.115257, 29.808664))),
(1270, 'Pavlica Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.163322, 29.718809), ST_AsGeoJSON(ST_MakePoint(-97.163322, 29.718809))),
(1271, 'Pine Springs Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.052620, 29.709864), ST_AsGeoJSON(ST_MakePoint(-97.052620, 29.709864))),
(1272, 'Rauder Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.153214, 29.870218), ST_AsGeoJSON(ST_MakePoint(-97.153214, 29.870218))),
(1273, 'Salem Freyburg Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.033913, 29.750130), ST_AsGeoJSON(ST_MakePoint(-97.033913, 29.750130))),
(1274, 'Smith Marek Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.001511, 29.637358), ST_AsGeoJSON(ST_MakePoint(-97.001511, 29.637358))),
(1275, 'Sparta Field Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.232910, 29.723412), ST_AsGeoJSON(ST_MakePoint(-97.232910, 29.723412))),
(1277, 'Zimmermann Ln, Fayette County', 'address', 'description', ST_MakePoint(-96.942070, 29.841038), ST_AsGeoJSON(ST_MakePoint(-96.942070, 29.841038))),
(1278, 'Round Top Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.744064, 30.113024), ST_AsGeoJSON(ST_MakePoint(-96.744064, 30.113024))),
(1279, 'Round Top Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.734428, 30.100958), ST_AsGeoJSON(ST_MakePoint(-96.734428, 30.100958))),
(1281, 'Albers Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.785408, 30.059515), ST_AsGeoJSON(ST_MakePoint(-96.785408, 30.059515))),
(1282, 'Hills Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.715797, 30.125071), ST_AsGeoJSON(ST_MakePoint(-96.715797, 30.125071))),
(1283, 'Wunderlich Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.614159, 29.991854), ST_AsGeoJSON(ST_MakePoint(-96.614159, 29.991854))),
(1284, 'Wunderlich Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.612572, 29.983192), ST_AsGeoJSON(ST_MakePoint(-96.612572, 29.983192))),
(1285, 'Willow Springs Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.633530, 29.954845), ST_AsGeoJSON(ST_MakePoint(-96.633530, 29.954845))),
(1286, 'Minarcik Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.589134, 29.958265), ST_AsGeoJSON(ST_MakePoint(-96.589134, 29.958265))),
(1287, 'Kovar Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.624779, 29.931026), ST_AsGeoJSON(ST_MakePoint(-96.624779, 29.931026))),
(1288, 'Rek Hill Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.629501, 29.915571), ST_AsGeoJSON(ST_MakePoint(-96.629501, 29.915571))),
(1289, 'Brushy Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.662354, 29.877438), ST_AsGeoJSON(ST_MakePoint(-96.662354, 29.877438))),
(1290, 'Jurekca Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.703804, 29.893847), ST_AsGeoJSON(ST_MakePoint(-96.703804, 29.893847))),
(1291, 'Wolff Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.655464, 30.061186), ST_AsGeoJSON(ST_MakePoint(-96.655464, 30.061186))),
(1292, 'N Nassau Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.645569, 30.037617), ST_AsGeoJSON(ST_MakePoint(-96.645569, 30.037617))),
(1293, 'Gebhard Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.666145, 30.001312), ST_AsGeoJSON(ST_MakePoint(-96.666145, 30.001312))),
(1294, 'Gebhard Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.640785, 30.008059), ST_AsGeoJSON(ST_MakePoint(-96.640785, 30.008059))),
(1295, 'Noak Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.657608, 30.031691), ST_AsGeoJSON(ST_MakePoint(-96.657608, 30.031691))),
(1296, 'Kneip Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.684494, 30.056654), ST_AsGeoJSON(ST_MakePoint(-96.684494, 30.056654))),
(1297, 'Bauer Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.769791, 29.987169), ST_AsGeoJSON(ST_MakePoint(-96.769791, 29.987169))),
(1298, 'Bauer Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.750259, 29.980183), ST_AsGeoJSON(ST_MakePoint(-96.750259, 29.980183))),
(1299, 'Biegel Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.727882, 29.872675), ST_AsGeoJSON(ST_MakePoint(-96.727882, 29.872675))),
(1301, 'Coufal Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.648018, 29.951349), ST_AsGeoJSON(ST_MakePoint(-96.648018, 29.951349))),
(1302, 'Florida Chapel Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.696213, 30.013075), ST_AsGeoJSON(ST_MakePoint(-96.696213, 30.013075))),
(1303, 'Halamicek Loop, Fayette County', 'address', 'description', ST_MakePoint(-96.694817, 29.981316), ST_AsGeoJSON(ST_MakePoint(-96.694817, 29.981316))),
(1304, 'Halamicek Loop, Fayette County', 'address', 'description', ST_MakePoint(-96.709984, 29.986668), ST_AsGeoJSON(ST_MakePoint(-96.709984, 29.986668))),
(1305, 'Halstedt Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.774040, 29.911163), ST_AsGeoJSON(ST_MakePoint(-96.774040, 29.911163))),
(1306, 'Halstedt Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.776314, 29.913155), ST_AsGeoJSON(ST_MakePoint(-96.776314, 29.913155))),
(1307, 'Hattermann Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.796333, 29.905788), ST_AsGeoJSON(ST_MakePoint(-96.796333, 29.905788))),
(1308, 'Haw Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.679878, 29.962914), ST_AsGeoJSON(ST_MakePoint(-96.679878, 29.962914))),
(1309, 'Janssen Ln, Fayette County', 'address', 'description', ST_MakePoint(-96.859009, 29.930933), ST_AsGeoJSON(ST_MakePoint(-96.859009, 29.930933))),
(1310, 'Joiner Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.788010, 29.889730), ST_AsGeoJSON(ST_MakePoint(-96.788010, 29.889730))),
(1311, 'Jurecka Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.722237, 29.895878), ST_AsGeoJSON(ST_MakePoint(-96.722237, 29.895878))),
(1312, 'Kramr Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.673958, 29.880827), ST_AsGeoJSON(ST_MakePoint(-96.673958, 29.880827))),
(1313, 'McCormick Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.795174, 29.999363), ST_AsGeoJSON(ST_MakePoint(-96.795174, 29.999363))),
(1314, 'Rocky Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.805496, 29.934692), ST_AsGeoJSON(ST_MakePoint(-96.805496, 29.934692))),
(1315, 'Rocky Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.841522, 29.913063), ST_AsGeoJSON(ST_MakePoint(-96.841522, 29.913063))),
(1316, 'Rocky Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.821503, 29.913198), ST_AsGeoJSON(ST_MakePoint(-96.821503, 29.913198))),
(1317, 'Rocky Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.831070, 29.913774), ST_AsGeoJSON(ST_MakePoint(-96.831070, 29.913774))),
(1318, 'Rohde Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.739403, 30.051666), ST_AsGeoJSON(ST_MakePoint(-96.739403, 30.051666))),
(1319, 'Roznov Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.726379, 29.981155), ST_AsGeoJSON(ST_MakePoint(-96.726379, 29.981155))),
(1320, 'Sand Rock Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.809959, 29.957270), ST_AsGeoJSON(ST_MakePoint(-96.809959, 29.957270))),
(1321, 'Shumacher Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.715393, 29.861704), ST_AsGeoJSON(ST_MakePoint(-96.715393, 29.861704))),
(1322, 'Shumacher Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.708549, 29.844414), ST_AsGeoJSON(ST_MakePoint(-96.708549, 29.844414))),
(1323, 'Schuster Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.821907, 30.043056), ST_AsGeoJSON(ST_MakePoint(-96.821907, 30.043056))),
(1324, 'Teitjen Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.781181, 29.920481), ST_AsGeoJSON(ST_MakePoint(-96.781181, 29.920481))),
(1325, 'Tobias Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.694000, 29.837164), ST_AsGeoJSON(ST_MakePoint(-96.694000, 29.837164))),
(1326, 'Waldeck Cemetery Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.773354, 30.055632), ST_AsGeoJSON(ST_MakePoint(-96.773354, 30.055632))),
(1327, 'Schoenst Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.741203, 30.099192), ST_AsGeoJSON(ST_MakePoint(-96.741203, 30.099192))),
(1328, 'Haw Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.661728, 29.977539), ST_AsGeoJSON(ST_MakePoint(-96.661728, 29.977539))),
(1329, 'W Old Lockhart Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.158577, 29.891462), ST_AsGeoJSON(ST_MakePoint(-97.158577, 29.891462))),
(1330, 'Laird Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.814827, 30.015747), ST_AsGeoJSON(ST_MakePoint(-96.814827, 30.015747))),
(1331, 'Falke Heinrich Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.929237, 29.771662), ST_AsGeoJSON(ST_MakePoint(-96.929237, 29.771662))),
(1332, 'Demel Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.880470, 29.711819), ST_AsGeoJSON(ST_MakePoint(-96.880470, 29.711819))),
(1333, 'Vivial Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.947975, 29.644331), ST_AsGeoJSON(ST_MakePoint(-96.947975, 29.644331))),
(1334, 'Camelback Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.019402, 30.016361), ST_AsGeoJSON(ST_MakePoint(-97.019402, 30.016361))),
(1335, 'Davis Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.043564, 29.850992), ST_AsGeoJSON(ST_MakePoint(-97.043564, 29.850992))),
(1336, 'Fritsch Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.786438, 29.938890), ST_AsGeoJSON(ST_MakePoint(-96.786438, 29.938890))),
(1337, 'Bittner Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.052383, 29.777975), ST_AsGeoJSON(ST_MakePoint(-97.052383, 29.777975))),
(1338, 'Boulton Creek, Fayette County', 'address', 'description', ST_MakePoint(-97.043266, 29.833757), ST_AsGeoJSON(ST_MakePoint(-97.043266, 29.833757))),
(1339, 'Branecky Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.151627, 29.683523), ST_AsGeoJSON(ST_MakePoint(-97.151627, 29.683523))),
(1340, 'Brown Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.195679, 29.760820), ST_AsGeoJSON(ST_MakePoint(-97.195679, 29.760820))),
(1341, 'Cowan Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.174759, 29.735744), ST_AsGeoJSON(ST_MakePoint(-97.174759, 29.735744))),
(1342, 'Farek Loth Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.056183, 29.715862), ST_AsGeoJSON(ST_MakePoint(-97.056183, 29.715862))),
(1343, 'Klekar Gin Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.051956, 29.668795), ST_AsGeoJSON(ST_MakePoint(-97.051956, 29.668795))),
(1344, 'Klekar Gin Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.041016, 29.667583), ST_AsGeoJSON(ST_MakePoint(-97.041016, 29.667583))),
(1345, 'Mach Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.988739, 29.813374), ST_AsGeoJSON(ST_MakePoint(-96.988739, 29.813374))),
(1347, 'W Old Lockhart Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.103561, 29.887270), ST_AsGeoJSON(ST_MakePoint(-97.103561, 29.887270))),
(1349, 'P3063 Sand Hills @ Sandy Creek', 'address', 'description', ST_MakePoint(-97.378700, 29.930490), ST_AsGeoJSON(ST_MakePoint(-97.378700, 29.930490))),
(1350, 'Country Club Drive, Fayette County', 'address', 'description', ST_MakePoint(-96.891785, 29.897743), ST_AsGeoJSON(ST_MakePoint(-96.891785, 29.897743))),
(1351, 'River Drive, Fayette County', 'address', 'description', ST_MakePoint(-96.890381, 29.896120), ST_AsGeoJSON(ST_MakePoint(-96.890381, 29.896120))),
(1354, 'Eilers St, Schulenburg', 'address', 'description', ST_MakePoint(-96.910873, 29.684460), ST_AsGeoJSON(ST_MakePoint(-96.910873, 29.684460))),
(1360, 'CH Allen Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.698143, 29.951544), ST_AsGeoJSON(ST_MakePoint(-96.698143, 29.951544))),
(1361, 'CR 256', 'address', 'description', ST_MakePoint(-97.862946, 30.702238), ST_AsGeoJSON(ST_MakePoint(-97.862946, 30.702238))),
(1363, 'Goehring Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.799767, 30.134729), ST_AsGeoJSON(ST_MakePoint(-96.799767, 30.134729))),
(1364, 'Kainer Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.972443, 29.654898), ST_AsGeoJSON(ST_MakePoint(-96.972443, 29.654898))),
(1366, '7000-blk Daffan Ln', 'address', 'description', ST_MakePoint(-97.627022, 30.320177), ST_AsGeoJSON(ST_MakePoint(-97.627022, 30.320177))),
(1367, '7900-blk Daffan Ln', 'address', 'description', ST_MakePoint(-97.620514, 30.314550), ST_AsGeoJSON(ST_MakePoint(-97.620514, 30.314550))),
(1368, '8900-blk Decker Ln', 'address', 'description', ST_MakePoint(-97.609390, 30.320089), ST_AsGeoJSON(ST_MakePoint(-97.609390, 30.320089))),
(1369, 'MLK @ Clifford', 'address', 'description', ST_MakePoint(-97.707939, 30.281923), ST_AsGeoJSON(ST_MakePoint(-97.707939, 30.281923))),
(1370, 'Berkman @ 290', 'address', 'description', ST_MakePoint(-97.688995, 30.320995), ST_AsGeoJSON(ST_MakePoint(-97.688995, 30.320995))),
(1371, 'Red River @ 12th', 'address', 'description', ST_MakePoint(-97.735596, 30.272472), ST_AsGeoJSON(ST_MakePoint(-97.735596, 30.272472))),
(1372, '10291 FM 969, Austin, TX', 'address', 'description', ST_MakePoint(-97.623116, 30.264412), ST_AsGeoJSON(ST_MakePoint(-97.623116, 30.264412))),
(1373, 'Cameron Rd &amp; Corona Dr', 'address', 'description', ST_MakePoint(-97.705025, 30.313068), ST_AsGeoJSON(ST_MakePoint(-97.705025, 30.313068))),
(1374, '10600-blk Gregg Ln', 'address', 'description', ST_MakePoint(-97.606178, 30.381409), ST_AsGeoJSON(ST_MakePoint(-97.606178, 30.381409))),
(1375, '6900-blk N FM 973', 'address', 'description', ST_MakePoint(-97.595169, 30.283392), ST_AsGeoJSON(ST_MakePoint(-97.595169, 30.283392))),
(1376, 'Blue Bluff @ Catherine', 'address', 'description', ST_MakePoint(-97.616997, 30.269400), ST_AsGeoJSON(ST_MakePoint(-97.616997, 30.269400))),
(1377, 'Blue Bluff @ FM 969', 'address', 'description', ST_MakePoint(-97.621246, 30.262726), ST_AsGeoJSON(ST_MakePoint(-97.621246, 30.262726))),
(1378, '10200-blk FM 969', 'address', 'description', ST_MakePoint(-97.623459, 30.264671), ST_AsGeoJSON(ST_MakePoint(-97.623459, 30.264671))),
(1380, 'Rosewood @ Hargrave', 'address', 'description', ST_MakePoint(-97.711288, 30.270990), ST_AsGeoJSON(ST_MakePoint(-97.711288, 30.270990))),
(1381, '10300-blk N FM 973', 'address', 'description', ST_MakePoint(-97.565536, 30.301477), ST_AsGeoJSON(ST_MakePoint(-97.565536, 30.301477))),
(1382, 'N FM 973 @ Murchinson', 'address', 'description', ST_MakePoint(-97.559921, 30.332191), ST_AsGeoJSON(ST_MakePoint(-97.559921, 30.332191))),
(1383, 'N FM 973 @ SH 130', 'address', 'description', ST_MakePoint(-97.576569, 30.288204), ST_AsGeoJSON(ST_MakePoint(-97.576569, 30.288204))),
(1384, 'CR 385', 'address', 'description', ST_MakePoint(-97.429527, 30.739199), ST_AsGeoJSON(ST_MakePoint(-97.429527, 30.739199))),
(1386, 'Fuchs Grove Rd @ Gregg Ln', 'address', 'description', ST_MakePoint(-97.553474, 30.387609), ST_AsGeoJSON(ST_MakePoint(-97.553474, 30.387609))),
(1388, 'Wayside Dr @ River Rd', 'address', 'description', ST_MakePoint(-98.107933, 29.985838), ST_AsGeoJSON(ST_MakePoint(-98.107933, 29.985838))),
(1393, 'Baca Loop Fayette County', 'address', 'description', ST_MakePoint(-97.066162, 29.680094), ST_AsGeoJSON(ST_MakePoint(-97.066162, 29.680094))),
(1404, 'West Access @ Heldenfels Concrete ', 'address', 'description', ST_MakePoint(-98.006706, 29.809183), ST_AsGeoJSON(ST_MakePoint(-98.006706, 29.809183))),
(1409, 'Redbud Trail East of Westlake Dr', 'address', 'description', ST_MakePoint(-97.797920, 30.291903), ST_AsGeoJSON(ST_MakePoint(-97.797920, 30.291903))),
(1410, 'Laurel Valley Rd at Westlake Dr', 'address', 'description', ST_MakePoint(-97.799545, 30.291838), ST_AsGeoJSON(ST_MakePoint(-97.799545, 30.291838))),
(1411, 'Laurel Valley Rd West of Westlake Dr', 'address', 'description', ST_MakePoint(-97.801224, 30.292801), ST_AsGeoJSON(ST_MakePoint(-97.801224, 30.292801))),
(1412, 'Laurel Valley Rd at Ledgeway St', 'address', 'description', ST_MakePoint(-97.805611, 30.293880), ST_AsGeoJSON(ST_MakePoint(-97.805611, 30.293880))),
(1413, 'Laurel Valley Rd West of Double Fork Rd', 'address', 'description', ST_MakePoint(-97.808762, 30.294653), ST_AsGeoJSON(ST_MakePoint(-97.808762, 30.294653))),
(1414, 'Laurel Valley Rd North of Yaupon Valley Rd', 'address', 'description', ST_MakePoint(-97.809998, 30.294134), ST_AsGeoJSON(ST_MakePoint(-97.809998, 30.294134))),
(1415, 'Yaupon Valley Rd at Allegro Ln', 'address', 'description', ST_MakePoint(-97.817253, 30.296549), ST_AsGeoJSON(ST_MakePoint(-97.817253, 30.296549))),
(1416, 'Eanes Creek at Sundown Pkwy', 'address', 'description', ST_MakePoint(-97.820404, 30.289833), ST_AsGeoJSON(ST_MakePoint(-97.820404, 30.289833))),
(1417, 'Eanes Creek at Camp Craft Rd', 'address', 'description', ST_MakePoint(-97.811913, 30.280071), ST_AsGeoJSON(ST_MakePoint(-97.811913, 30.280071))),
(1418, 'Eanes Creek at Eanes School Rd', 'address', 'description', ST_MakePoint(-97.812881, 30.281258), ST_AsGeoJSON(ST_MakePoint(-97.812881, 30.281258))),
(1419, 'Westlake Dr at Hull Cir', 'address', 'description', ST_MakePoint(-97.794174, 30.296299), ST_AsGeoJSON(ST_MakePoint(-97.794174, 30.296299))),
(1420, 'Westlake Dr at Terrace Mountain Dr', 'address', 'description', ST_MakePoint(-97.796349, 30.300865), ST_AsGeoJSON(ST_MakePoint(-97.796349, 30.300865))),
(1421, 'Bee Creek at Westlake Dr.', 'address', 'description', ST_MakePoint(-97.795525, 30.302979), ST_AsGeoJSON(ST_MakePoint(-97.795525, 30.302979))),
(1422, 'Terrace Mountain Dr at Spurlock Valley', 'address', 'description', ST_MakePoint(-97.799545, 30.302811), ST_AsGeoJSON(ST_MakePoint(-97.799545, 30.302811))),
(1423, 'Spurlock Valley', 'address', 'description', ST_MakePoint(-97.800575, 30.303293), ST_AsGeoJSON(ST_MakePoint(-97.800575, 30.303293))),
(1424, 'Bay West Blvd @ Dry Branch of Pecan Creek', 'address', 'description', ST_MakePoint(-98.400703, 30.532116), ST_AsGeoJSON(ST_MakePoint(-98.400703, 30.532116))),
(1425, 'Broken Hills Dr West of Buffalo Peak Dr', 'address', 'description', ST_MakePoint(-98.407494, 30.547190), ST_AsGeoJSON(ST_MakePoint(-98.407494, 30.547190))),
(1426, 'Douglas Dr East of Apache Tears', 'address', 'description', ST_MakePoint(-98.399536, 30.555742), ST_AsGeoJSON(ST_MakePoint(-98.399536, 30.555742))),
(1427, 'Hi Circle N @ Slickrock Creek', 'address', 'description', ST_MakePoint(-98.367409, 30.545195), ST_AsGeoJSON(ST_MakePoint(-98.367409, 30.545195))),
(1428, 'Hi Stirrup @ Slickrock Creek', 'address', 'description', ST_MakePoint(-98.367561, 30.542070), ST_AsGeoJSON(ST_MakePoint(-98.367561, 30.542070))),
(1429, 'Hi Circle S @ Slickrock Creek', 'address', 'description', ST_MakePoint(-98.366119, 30.537415), ST_AsGeoJSON(ST_MakePoint(-98.366119, 30.537415))),
(1430, 'Hi Mesa @ Slickrock Creek', 'address', 'description', ST_MakePoint(-98.368713, 30.523552), ST_AsGeoJSON(ST_MakePoint(-98.368713, 30.523552))),
(1431, 'Apache Tears ', 'address', 'description', ST_MakePoint(-98.409851, 30.554749), ST_AsGeoJSON(ST_MakePoint(-98.409851, 30.554749))),
(1432, 'Buntline Special @ Tiger Creek', 'address', 'description', ST_MakePoint(-98.336769, 30.539410), ST_AsGeoJSON(ST_MakePoint(-98.336769, 30.539410))),
(1433, 'Dew Drop @ Tiger Creek', 'address', 'description', ST_MakePoint(-98.335136, 30.540316), ST_AsGeoJSON(ST_MakePoint(-98.335136, 30.540316))),
(1434, 'Thanksgiving Mountain Rd @ Tiger Creek Tributary', 'address', 'description', ST_MakePoint(-98.334618, 30.542349), ST_AsGeoJSON(ST_MakePoint(-98.334618, 30.542349))),
(1435, 'Dew Drop @ Tiger Creek (W)', 'address', 'description', ST_MakePoint(-98.340546, 30.538282), ST_AsGeoJSON(ST_MakePoint(-98.340546, 30.538282))),
(1436, 'Mountain Dew Rd @ Tiger Creek', 'address', 'description', ST_MakePoint(-98.329834, 30.534346), ST_AsGeoJSON(ST_MakePoint(-98.329834, 30.534346))),
(1437, 'Pronghorn @ Tiger Creek', 'address', 'description', ST_MakePoint(-98.330391, 30.532995), ST_AsGeoJSON(ST_MakePoint(-98.330391, 30.532995))),
(1438, 'Edgegrove @ Bee Caves', 'address', 'description', ST_MakePoint(-97.788307, 30.271288), ST_AsGeoJSON(ST_MakePoint(-97.788307, 30.271288))),
(1439, '13400-blk FM 2769', 'address', 'description', ST_MakePoint(-97.861382, 30.445993), ST_AsGeoJSON(ST_MakePoint(-97.861382, 30.445993))),
(1440, 'E Morrow St at Chamber Way', 'address', 'description', ST_MakePoint(-97.673347, 30.648214), ST_AsGeoJSON(ST_MakePoint(-97.673347, 30.648214))),
(1441, 'Lower Park Rd at Chamber Way', 'address', 'description', ST_MakePoint(-97.672600, 30.647177), ST_AsGeoJSON(ST_MakePoint(-97.672600, 30.647177))),
(1442, '118 N Austin Ave', 'address', 'description', ST_MakePoint(-97.669640, 30.657619), ST_AsGeoJSON(ST_MakePoint(-97.669640, 30.657619))),
(1443, 'NE Inner Loop at Pecan Branch', 'address', 'description', ST_MakePoint(-97.654427, 30.665009), ST_AsGeoJSON(ST_MakePoint(-97.654427, 30.665009))),
(1445, 'Airport Rd at Pecan Branch', 'address', 'description', ST_MakePoint(-97.669922, 30.670174), ST_AsGeoJSON(ST_MakePoint(-97.669922, 30.670174))),
(1446, 'Lakeway Dr at Pecan Branch E', 'address', 'description', ST_MakePoint(-97.678024, 30.669321), ST_AsGeoJSON(ST_MakePoint(-97.678024, 30.669321))),
(1447, 'Journey Parkway', 'address', 'description', ST_MakePoint(-97.797203, 30.561832), ST_AsGeoJSON(ST_MakePoint(-97.797203, 30.561832))),
(1448, 'Northwest Blvd at Pecan Branch', 'address', 'description', ST_MakePoint(-97.685280, 30.667620), ST_AsGeoJSON(ST_MakePoint(-97.685280, 30.667620))),
(1449, 'Country Club Rd at North Fork San Gabriel', 'address', 'description', ST_MakePoint(-97.696632, 30.653574), ST_AsGeoJSON(ST_MakePoint(-97.696632, 30.653574))),
(1450, 'Golf Cart Path', 'address', 'description', ST_MakePoint(-97.696442, 30.653463), ST_AsGeoJSON(ST_MakePoint(-97.696442, 30.653463))),
(1451, '13200-blk FM 2769', 'address', 'description', ST_MakePoint(-97.850914, 30.452543), ST_AsGeoJSON(ST_MakePoint(-97.850914, 30.452543))),
(1452, 'Blue Hole Park Pedestrian Bridge', 'address', 'description', ST_MakePoint(-97.679306, 30.642992), ST_AsGeoJSON(ST_MakePoint(-97.679306, 30.642992))),
(1453, 'E 21st St at Church St', 'address', 'description', ST_MakePoint(-97.672836, 30.624292), ST_AsGeoJSON(ST_MakePoint(-97.672836, 30.624292))),
(1454, 'Maple St at West Fork Smith Branch', 'address', 'description', ST_MakePoint(-97.665604, 30.624847), ST_AsGeoJSON(ST_MakePoint(-97.665604, 30.624847))),
(1455, 'Pine St near San Jose St', 'address', 'description', ST_MakePoint(-97.667747, 30.625050), ST_AsGeoJSON(ST_MakePoint(-97.667747, 30.625050))),
(1456, '2100 Pine St', 'address', 'description', ST_MakePoint(-97.669060, 30.625511), ST_AsGeoJSON(ST_MakePoint(-97.669060, 30.625511))),
(1457, 'Greenbranch Dr at Trails End Dr', 'address', 'description', ST_MakePoint(-97.658417, 30.623985), ST_AsGeoJSON(ST_MakePoint(-97.658417, 30.623985))),
(1458, 'Greenbranch Dr at Quail Meadow Dr', 'address', 'description', ST_MakePoint(-97.658157, 30.624723), ST_AsGeoJSON(ST_MakePoint(-97.658157, 30.624723))),
(1459, 'Greenbranch Dr at Hunters Glen Dr', 'address', 'description', ST_MakePoint(-97.657806, 30.625563), ST_AsGeoJSON(ST_MakePoint(-97.657806, 30.625563))),
(1460, 'Quail Valley Dr at W Fork Smith Branch', 'address', 'description', ST_MakePoint(-97.657928, 30.626856), ST_AsGeoJSON(ST_MakePoint(-97.657928, 30.626856))),
(1461, 'DB Wood Rd at Mid Fork SG', 'address', 'description', ST_MakePoint(-97.716736, 30.647963), ST_AsGeoJSON(ST_MakePoint(-97.716736, 30.647963))),
(1462, 'Patriot Way at Mankins Branch', 'address', 'description', ST_MakePoint(-97.610146, 30.629190), ST_AsGeoJSON(ST_MakePoint(-97.610146, 30.629190))),
(1463, 'Patriot Way at Mankins Branch 2', 'address', 'description', ST_MakePoint(-97.612816, 30.625858), ST_AsGeoJSON(ST_MakePoint(-97.612816, 30.625858))),
(1464, 'S Austin Ave at Tasus Way', 'address', 'description', ST_MakePoint(-97.680878, 30.620138), ST_AsGeoJSON(ST_MakePoint(-97.680878, 30.620138))),
(1465, 'N Austin Ave at Pecan Branch', 'address', 'description', ST_MakePoint(-97.665314, 30.668755), ST_AsGeoJSON(ST_MakePoint(-97.665314, 30.668755))),
(1466, 'Stadium Dr at Pecan Branch', 'address', 'description', ST_MakePoint(-97.664528, 30.667238), ST_AsGeoJSON(ST_MakePoint(-97.664528, 30.667238))),
(1467, 'Lakeway Dr at Pecan Branch W', 'address', 'description', ST_MakePoint(-97.683746, 30.669878), ST_AsGeoJSON(ST_MakePoint(-97.683746, 30.669878))),
(1468, 'Northwest Blvd North of Hedgewood Dr', 'address', 'description', ST_MakePoint(-97.688141, 30.676853), ST_AsGeoJSON(ST_MakePoint(-97.688141, 30.676853))),
(1469, 'Flume at N Fork SG River', 'address', 'description', ST_MakePoint(-97.690567, 30.651691), ST_AsGeoJSON(ST_MakePoint(-97.690567, 30.651691))),
(1470, 'Pedestrian Bridge at SG Park', 'address', 'description', ST_MakePoint(-97.671524, 30.646799), ST_AsGeoJSON(ST_MakePoint(-97.671524, 30.646799))),
(1471, 'River Road Between Leveritts Loop &amp; Rockwood Dr', 'address', 'description', ST_MakePoint(-98.103745, 29.991608), ST_AsGeoJSON(ST_MakePoint(-98.103745, 29.991608))),
(1472, 'Golf Cart Path SW of Oak Tree Dr/Berry Creek Dr', 'address', 'description', ST_MakePoint(-97.672470, 30.705669), ST_AsGeoJSON(ST_MakePoint(-97.672470, 30.705669))),
(1473, 'Luna Trl at Logan Ranch Rd', 'address', 'description', ST_MakePoint(-97.686913, 30.694065), ST_AsGeoJSON(ST_MakePoint(-97.686913, 30.694065))),
(1474, 'Old Bridge at SG Park', 'address', 'description', ST_MakePoint(-97.664444, 30.652023), ST_AsGeoJSON(ST_MakePoint(-97.664444, 30.652023))),
(1475, 'E 6th St at Ash St', 'address', 'description', ST_MakePoint(-97.673187, 30.638376), ST_AsGeoJSON(ST_MakePoint(-97.673187, 30.638376))),
(1476, 'E 5th St at Ash St', 'address', 'description', ST_MakePoint(-97.673233, 30.639217), ST_AsGeoJSON(ST_MakePoint(-97.673233, 30.639217))),
(1477, '111 N College St', 'address', 'description', ST_MakePoint(-97.672211, 30.643299), ST_AsGeoJSON(ST_MakePoint(-97.672211, 30.643299))),
(1478, 'Blue Hole Park Rd East', 'address', 'description', ST_MakePoint(-97.679092, 30.642372), ST_AsGeoJSON(ST_MakePoint(-97.679092, 30.642372))),
(1479, 'Blue Hole Park Rd West', 'address', 'description', ST_MakePoint(-97.682266, 30.642031), ST_AsGeoJSON(ST_MakePoint(-97.682266, 30.642031))),
(1480, 'N College St at WL Walden Dr', 'address', 'description', ST_MakePoint(-97.665733, 30.650404), ST_AsGeoJSON(ST_MakePoint(-97.665733, 30.650404))),
(1481, 'E Morrow St (lower)', 'address', 'description', ST_MakePoint(-97.663879, 30.653698), ST_AsGeoJSON(ST_MakePoint(-97.663879, 30.653698))),
(1482, 'Spring Valley Rd at Starview Dr', 'address', 'description', ST_MakePoint(-97.701103, 30.654078), ST_AsGeoJSON(ST_MakePoint(-97.701103, 30.654078))),
(1484, 'Dry Creek Road', 'address', 'description', ST_MakePoint(-97.653114, 29.919506), ST_AsGeoJSON(ST_MakePoint(-97.653114, 29.919506))),
(1485, '7400-blk Elroy Rd', 'address', 'description', ST_MakePoint(-97.629898, 30.149193), ST_AsGeoJSON(ST_MakePoint(-97.629898, 30.149193))),
(1486, 'TX1018 Park Road 1A @ Copperas Creek', 'address', 'description', ST_MakePoint(-97.272743, 30.100201), ST_AsGeoJSON(ST_MakePoint(-97.272743, 30.100201))),
(1487, '9200-blk N FM 973', 'address', 'description', ST_MakePoint(-97.567200, 30.298935), ST_AsGeoJSON(ST_MakePoint(-97.567200, 30.298935))),
(1489, '12800-blk Lexington', 'address', 'description', ST_MakePoint(-97.555908, 30.349340), ST_AsGeoJSON(ST_MakePoint(-97.555908, 30.349340))),
(1493, 'RR 12 &amp; Sports Park Rd ', 'address', 'description', ST_MakePoint(-98.086433, 30.185272), ST_AsGeoJSON(ST_MakePoint(-98.086433, 30.185272))),
(1494, 'RR 12 &amp; Storm Ranch Rd ', 'address', 'description', ST_MakePoint(-98.095993, 30.102058), ST_AsGeoJSON(ST_MakePoint(-98.095993, 30.102058))),
(1495, 'W Hwy 290 @ McGregor LN ', 'address', 'description', ST_MakePoint(-98.143745, 30.206472), ST_AsGeoJSON(ST_MakePoint(-98.143745, 30.206472))),
(1498, 'R O Dr @ Bee Creek Rd', 'address', 'description', ST_MakePoint(-98.038773, 30.368221), ST_AsGeoJSON(ST_MakePoint(-98.038773, 30.368221))),
(1500, 'Scudder Ln @ RR 12', 'address', 'description', ST_MakePoint(-98.104034, 30.013184), ST_AsGeoJSON(ST_MakePoint(-98.104034, 30.013184))),
(1501, 'Cypress Crk @ RR 12', 'address', 'description', ST_MakePoint(-98.097603, 29.996849), ST_AsGeoJSON(ST_MakePoint(-98.097603, 29.996849))),
(1502, 'Goforth Rd @ Cotton Gin Rd', 'address', 'description', ST_MakePoint(-97.834625, 29.999376), ST_AsGeoJSON(ST_MakePoint(-97.834625, 29.999376))),
(1503, '300 Block of Mill Race Ln ', 'address', 'description', ST_MakePoint(-98.093407, 29.999655), ST_AsGeoJSON(ST_MakePoint(-98.093407, 29.999655))),
(1504, 'Yarrington Rd @ Hwy 21', 'address', 'description', ST_MakePoint(-97.849213, 29.915997), ST_AsGeoJSON(ST_MakePoint(-97.849213, 29.915997))),
(1506, 'West Access @ Kohlers Xing', 'address', 'description', ST_MakePoint(-97.851273, 30.027210), ST_AsGeoJSON(ST_MakePoint(-97.851273, 30.027210))),
(1507, 'FM 1626 N OF FM 967', 'address', 'description', ST_MakePoint(-97.875053, 30.099247), ST_AsGeoJSON(ST_MakePoint(-97.875053, 30.099247))),
(1508, 'Old Bastrop Hwy @ Hwy 123', 'address', 'description', ST_MakePoint(-97.942131, 29.830742), ST_AsGeoJSON(ST_MakePoint(-97.942131, 29.830742))),
(1509, 'FM 150 @ Moss Rose ln ', 'address', 'description', ST_MakePoint(-97.989655, 30.057116), ST_AsGeoJSON(ST_MakePoint(-97.989655, 30.057116))),
(1510, 'FM 1626 @ Cole Springs Rd', 'address', 'description', ST_MakePoint(-97.874641, 30.080069), ST_AsGeoJSON(ST_MakePoint(-97.874641, 30.080069))),
(1511, '2600-blk Frate Barker', 'address', 'description', ST_MakePoint(-97.852180, 30.149420), ST_AsGeoJSON(ST_MakePoint(-97.852180, 30.149420))),
(1512, 'Garlic Creek Dr @ Talley Lp', 'address', 'description', ST_MakePoint(-97.858871, 30.099506), ST_AsGeoJSON(ST_MakePoint(-97.858871, 30.099506))),
(1514, 'FM 2770 @ Buda Fire Station #1', 'address', 'description', ST_MakePoint(-97.853378, 30.074072), ST_AsGeoJSON(ST_MakePoint(-97.853378, 30.074072))),
(1515, 'Whitetail Dr@ Hunter Rd ', 'address', 'description', ST_MakePoint(-98.003174, 29.825994), ST_AsGeoJSON(ST_MakePoint(-98.003174, 29.825994))),
(1516, 'Windy Hill Rd @ East Access ', 'address', 'description', ST_MakePoint(-97.844795, 30.035791), ST_AsGeoJSON(ST_MakePoint(-97.844795, 30.035791))),
(1518, '5800 Block FM 2770', 'address', 'description', ST_MakePoint(-97.889923, 30.024014), ST_AsGeoJSON(ST_MakePoint(-97.889923, 30.024014))),
(1519, 'Waterleaf Blvd @ FM 150', 'address', 'description', ST_MakePoint(-97.845245, 29.961163), ST_AsGeoJSON(ST_MakePoint(-97.845245, 29.961163))),
(1520, 'FM 1966 @ Hwy 21', 'address', 'description', ST_MakePoint(-97.835999, 29.922729), ST_AsGeoJSON(ST_MakePoint(-97.835999, 29.922729))),
(1522, 'Wonder World Dr South of Stagecoach Trl ', 'address', 'description', ST_MakePoint(-97.959061, 29.862103), ST_AsGeoJSON(ST_MakePoint(-97.959061, 29.862103))),
(1523, 'High Rd @ Hwy 21', 'address', 'description', ST_MakePoint(-97.778000, 29.963634), ST_AsGeoJSON(ST_MakePoint(-97.778000, 29.963634))),
(1524, '6700-blk fm 1327', 'address', 'description', ST_MakePoint(-97.724808, 30.090246), ST_AsGeoJSON(ST_MakePoint(-97.724808, 30.090246))),
(1525, 'Hwy 21 @ Cotton Gin Rd ', 'address', 'description', ST_MakePoint(-97.786476, 29.957630), ST_AsGeoJSON(ST_MakePoint(-97.786476, 29.957630))),
(1526, 'Aquarena Springs Dr @Sessom Dr ', 'address', 'description', ST_MakePoint(-97.934532, 29.888977), ST_AsGeoJSON(ST_MakePoint(-97.934532, 29.888977))),
(1527, '6800-blk mc kinney Falls Pkwy', 'address', 'description', ST_MakePoint(-97.722099, 30.172237), ST_AsGeoJSON(ST_MakePoint(-97.722099, 30.172237))),
(1528, 'Moore St @ Oscar Smith St ', 'address', 'description', ST_MakePoint(-97.949593, 29.885239), ST_AsGeoJSON(ST_MakePoint(-97.949593, 29.885239))),
(1529, 'River Rd @ Cape Rd', 'address', 'description', ST_MakePoint(-97.927925, 29.869963), ST_AsGeoJSON(ST_MakePoint(-97.927925, 29.869963))),
(1530, 'FM 1826 @ Towering Cedar Dr ', 'address', 'description', ST_MakePoint(-98.002426, 30.139467), ST_AsGeoJSON(ST_MakePoint(-98.002426, 30.139467))),
(1531, 'Jackman St @ Gravel St', 'address', 'description', ST_MakePoint(-97.943306, 29.875898), ST_AsGeoJSON(ST_MakePoint(-97.943306, 29.875898))),
(1532, '300 Block LBJ Dr', 'address', 'description', ST_MakePoint(-97.939552, 29.879135), ST_AsGeoJSON(ST_MakePoint(-97.939552, 29.879135))),
(1533, 'Post Rd @ Uhland Rd', 'address', 'description', ST_MakePoint(-97.918823, 29.899097), ST_AsGeoJSON(ST_MakePoint(-97.918823, 29.899097))),
(1534, '1500 Block IH35 N', 'address', 'description', ST_MakePoint(-97.979225, 29.833261), ST_AsGeoJSON(ST_MakePoint(-97.979225, 29.833261))),
(1535, 'Hunter Rd @ Foxtail Run', 'address', 'description', ST_MakePoint(-97.969528, 29.857412), ST_AsGeoJSON(ST_MakePoint(-97.969528, 29.857412))),
(1537, 'Hunter Rd @ McCarty Ln', 'address', 'description', ST_MakePoint(-97.980110, 29.846466), ST_AsGeoJSON(ST_MakePoint(-97.980110, 29.846466))),
(1538, 'FM 1826 @ FM 967', 'address', 'description', ST_MakePoint(-98.010147, 30.131914), ST_AsGeoJSON(ST_MakePoint(-98.010147, 30.131914))),
(1539, 'Thorpe Ln @ Big HEB', 'address', 'description', ST_MakePoint(-97.925415, 29.886112), ST_AsGeoJSON(ST_MakePoint(-97.925415, 29.886112))),
(1540, 'High Rd @ GoForth Rd ', 'address', 'description', ST_MakePoint(-97.820251, 29.999285), ST_AsGeoJSON(ST_MakePoint(-97.820251, 29.999285))),
(1541, 'Cheatham St @ Rio Vista Park ', 'address', 'description', ST_MakePoint(-97.933548, 29.877554), ST_AsGeoJSON(ST_MakePoint(-97.933548, 29.877554))),
(1542, 'RR 12 @ Baptist Academy', 'address', 'description', ST_MakePoint(-97.991524, 29.903349), ST_AsGeoJSON(ST_MakePoint(-97.991524, 29.903349))),
(1543, '7800-blk Burleson rd', 'address', 'description', ST_MakePoint(-97.695152, 30.188860), ST_AsGeoJSON(ST_MakePoint(-97.695152, 30.188860))),
(1544, 'Hopkins ST @ San Antonio ST', 'address', 'description', ST_MakePoint(-97.945457, 29.882484), ST_AsGeoJSON(ST_MakePoint(-97.945457, 29.882484))),
(1545, 'HWY 21@ Gary Job CORP', 'address', 'description', ST_MakePoint(-97.890671, 29.885975), ST_AsGeoJSON(ST_MakePoint(-97.890671, 29.885975))),
(1546, 'FM 2770 @ Cement Plant Rd', 'address', 'description', ST_MakePoint(-97.857071, 30.059864), ST_AsGeoJSON(ST_MakePoint(-97.857071, 30.059864))),
(1547, 'FM 2770 @ Meadow Woods Dr', 'address', 'description', ST_MakePoint(-97.889709, 30.020615), ST_AsGeoJSON(ST_MakePoint(-97.889709, 30.020615))),
(1548, 'Post Rd @ West Access ', 'address', 'description', ST_MakePoint(-97.878143, 29.956236), ST_AsGeoJSON(ST_MakePoint(-97.878143, 29.956236))),
(1550, 'Us 183/SH 130', 'address', 'description', ST_MakePoint(-97.690643, 30.056627), ST_AsGeoJSON(ST_MakePoint(-97.690643, 30.056627))),
(1552, 'RR 12 @ Hugo Rd ', 'address', 'description', ST_MakePoint(-98.048515, 29.916479), ST_AsGeoJSON(ST_MakePoint(-98.048515, 29.916479))),
(1554, '10200-blk N 973', 'address', 'description', ST_MakePoint(-97.564491, 30.309437), ST_AsGeoJSON(ST_MakePoint(-97.564491, 30.309437))),
(1555, 'Palomino Rd @ Foster Pl', 'address', 'description', ST_MakePoint(-97.800377, 30.023178), ST_AsGeoJSON(ST_MakePoint(-97.800377, 30.023178))),
(1556, '8700-blk Lockwood', 'address', 'description', ST_MakePoint(-97.522331, 30.304361), ST_AsGeoJSON(ST_MakePoint(-97.522331, 30.304361))),
(1557, '7100-blk Ross rd ', 'address', 'description', ST_MakePoint(-97.633141, 30.169382), ST_AsGeoJSON(ST_MakePoint(-97.633141, 30.169382))),
(1558, 'HWY 80 @ River Rd ', 'address', 'description', ST_MakePoint(-97.913010, 29.880709), ST_AsGeoJSON(ST_MakePoint(-97.913010, 29.880709))),
(1559, 'RR 12 @ Wimberley Glass Works ', 'address', 'description', ST_MakePoint(-98.048561, 29.916443), ST_AsGeoJSON(ST_MakePoint(-98.048561, 29.916443))),
(1560, 'Hero Way and CR 270', 'address', 'description', ST_MakePoint(-97.830788, 30.589802), ST_AsGeoJSON(ST_MakePoint(-97.830788, 30.589802))),
(1563, 'University Dr @ CM Allen Pkwy ', 'address', 'description', ST_MakePoint(-97.936935, 29.885935), ST_AsGeoJSON(ST_MakePoint(-97.936935, 29.885935))),
(1564, 'River Rd @ Aquarena Springs Rd', 'address', 'description', ST_MakePoint(-97.900673, 29.893599), ST_AsGeoJSON(ST_MakePoint(-97.900673, 29.893599))),
(1565, 'N LBJ Dr @ W Sessom Dr', 'address', 'description', ST_MakePoint(-97.941353, 29.891516), ST_AsGeoJSON(ST_MakePoint(-97.941353, 29.891516))),
(1566, 'TX1020 Hwy 71 at Berdoll', 'address', 'description', ST_MakePoint(-97.511711, 30.166477), ST_AsGeoJSON(ST_MakePoint(-97.511711, 30.166477))),
(1567, 'Old Stagecoach Rd @ Cemetary', 'address', 'description', ST_MakePoint(-97.898697, 29.963764), ST_AsGeoJSON(ST_MakePoint(-97.898697, 29.963764))),
(1568, 'GoForth Rd N of Mondragon Ln', 'address', 'description', ST_MakePoint(-97.805763, 30.020725), ST_AsGeoJSON(ST_MakePoint(-97.805763, 30.020725))),
(1569, 'Green Meadows Ln @ Subdivision Park', 'address', 'description', ST_MakePoint(-97.815659, 30.062613), ST_AsGeoJSON(ST_MakePoint(-97.815659, 30.062613))),
(1570, 'RR 12 @ Rightwater Preserve ', 'address', 'description', ST_MakePoint(-98.089737, 30.145210), ST_AsGeoJSON(ST_MakePoint(-98.089737, 30.145210))),
(1571, 'TX1021 1704 at 969', 'address', 'description', ST_MakePoint(-97.445938, 30.211784), ST_AsGeoJSON(ST_MakePoint(-97.445938, 30.211784))),
(1572, 'Caldwell Ln @ River Timber Dr', 'address', 'description', ST_MakePoint(-97.535400, 30.219641), ST_AsGeoJSON(ST_MakePoint(-97.535400, 30.219641))),
(1573, 'TX1022 1704 @ VFW', 'address', 'description', ST_MakePoint(-97.367043, 30.335829), ST_AsGeoJSON(ST_MakePoint(-97.367043, 30.335829))),
(1575, 'COE1010 Williams St', 'address', 'description', ST_MakePoint(-97.374283, 30.343109), ST_AsGeoJSON(ST_MakePoint(-97.374283, 30.343109))),
(1576, 'RR 12 @ Little Barton Creek ', 'address', 'description', ST_MakePoint(-98.061050, 30.245073), ST_AsGeoJSON(ST_MakePoint(-98.061050, 30.245073))),
(1577, '1116 Block Red Hawk Rd', 'address', 'description', ST_MakePoint(-98.028770, 30.005936), ST_AsGeoJSON(ST_MakePoint(-98.028770, 30.005936))),
(1578, '1000 Block Lime Kiln Rd ', 'address', 'description', ST_MakePoint(-97.933418, 29.916721), ST_AsGeoJSON(ST_MakePoint(-97.933418, 29.916721))),
(1579, 'TX1023 200 Blk Hwy 95', 'address', 'description', ST_MakePoint(-97.361771, 30.333887), ST_AsGeoJSON(ST_MakePoint(-97.361771, 30.333887))),
(1580, 'P4040 Lower Elgin @ 969', 'address', 'description', ST_MakePoint(-97.427040, 30.196119), ST_AsGeoJSON(ST_MakePoint(-97.427040, 30.196119))),
(1581, 'P3064 S Pope Bend @ Lois Ln', 'address', 'description', ST_MakePoint(-97.478523, 30.135187), ST_AsGeoJSON(ST_MakePoint(-97.478523, 30.135187))),
(1583, 'Union Street', 'address', 'description', ST_MakePoint(-97.841156, 30.558001), ST_AsGeoJSON(ST_MakePoint(-97.841156, 30.558001))),
(1584, 'TX1024 1209 @ Bluebonnet Elem', 'address', 'description', ST_MakePoint(-97.428055, 30.133759), ST_AsGeoJSON(ST_MakePoint(-97.428055, 30.133759))),
(1585, '1660 West of 95', 'address', 'description', ST_MakePoint(-97.437660, 30.476223), ST_AsGeoJSON(ST_MakePoint(-97.437660, 30.476223))),
(1586, 'TX1025 812 @ Hwy 21', 'address', 'description', ST_MakePoint(-97.572433, 30.071671), ST_AsGeoJSON(ST_MakePoint(-97.572433, 30.071671))),
(1587, 'TX1026 Hwy 21 @ Mt. Olive', 'address', 'description', ST_MakePoint(-97.418625, 30.110399), ST_AsGeoJSON(ST_MakePoint(-97.418625, 30.110399))),
(1588, 'Brushy Crk &amp; Champion Park', 'address', 'description', ST_MakePoint(-97.762207, 30.511795), ST_AsGeoJSON(ST_MakePoint(-97.762207, 30.511795))),
(1589, 'Bebee RD @ Fountain Grove Dr', 'address', 'description', ST_MakePoint(-97.847046, 30.017550), ST_AsGeoJSON(ST_MakePoint(-97.847046, 30.017550))),
(1590, 'P4041 Hillcrest off 969', 'address', 'description', ST_MakePoint(-97.470131, 30.233458), ST_AsGeoJSON(ST_MakePoint(-97.470131, 30.233458))),
(1591, 'Windy Hill Rd  @ Indian Paintbrush Dr', 'address', 'description', ST_MakePoint(-97.837524, 30.031965), ST_AsGeoJSON(ST_MakePoint(-97.837524, 30.031965))),
(1592, 'TX1027 FM 535 at Maha Creek', 'address', 'description', ST_MakePoint(-97.498329, 30.079931), ST_AsGeoJSON(ST_MakePoint(-97.498329, 30.079931))),
(1594, 'Indian Creek &amp; Long Knife', 'address', 'description', ST_MakePoint(-97.634315, 30.637003), ST_AsGeoJSON(ST_MakePoint(-97.634315, 30.637003))),
(1596, '800 Block Petras Way ', 'address', 'description', ST_MakePoint(-97.753281, 30.039286), ST_AsGeoJSON(ST_MakePoint(-97.753281, 30.039286))),
(1597, 'TX1028 812 @ Old San Antonio', 'address', 'description', ST_MakePoint(-97.545784, 30.049198), ST_AsGeoJSON(ST_MakePoint(-97.545784, 30.049198))),
(1603, 'Spoke Hollow Rd @ Hidden Valley Rd ', 'address', 'description', ST_MakePoint(-98.069054, 29.984119), ST_AsGeoJSON(ST_MakePoint(-98.069054, 29.984119))),
(1604, 'P4042 Upper Elgin River Rd @ Old Austin Trl', 'address', 'description', ST_MakePoint(-97.451180, 30.242487), ST_AsGeoJSON(ST_MakePoint(-97.451180, 30.242487))),
(1606, 'CR 324 &amp; CR 342', 'address', 'description', ST_MakePoint(-97.494026, 30.740080), ST_AsGeoJSON(ST_MakePoint(-97.494026, 30.740080))),
(1607, 'TX1029 290 @ Big Sandy ', 'address', 'description', ST_MakePoint(-97.297005, 30.304695), ST_AsGeoJSON(ST_MakePoint(-97.297005, 30.304695))),
(1609, 'Brandt Rd @ Bluff Springs Rd', 'address', 'description', ST_MakePoint(-97.768532, 30.171251), ST_AsGeoJSON(ST_MakePoint(-97.768532, 30.171251))),
(1610, 'RR 12 @ Blanco River', 'address', 'description', ST_MakePoint(-98.088623, 29.993856), ST_AsGeoJSON(ST_MakePoint(-98.088623, 29.993856))),
(1611, 'Hunter Rd @ Dixon St', 'address', 'description', ST_MakePoint(-97.958199, 29.871227), ST_AsGeoJSON(ST_MakePoint(-97.958199, 29.871227))),
(1612, 'Knox St @ Patton St.', 'address', 'description', ST_MakePoint(-97.941460, 29.870222), ST_AsGeoJSON(ST_MakePoint(-97.941460, 29.870222))),
(1613, 'Lime Kiln Rd @ Hillard Rd ', 'address', 'description', ST_MakePoint(-97.935608, 29.921242), ST_AsGeoJSON(ST_MakePoint(-97.935608, 29.921242))),
(1614, 'S Mitchell St @ Gravel St', 'address', 'description', ST_MakePoint(-97.946098, 29.872530), ST_AsGeoJSON(ST_MakePoint(-97.946098, 29.872530))),
(1615, 'Cole Springs Rd @ FM 967', 'address', 'description', ST_MakePoint(-97.848961, 30.085917), ST_AsGeoJSON(ST_MakePoint(-97.848961, 30.085917))),
(1616, 'Twin Creeks @ Arroyo Doble', 'address', 'description', ST_MakePoint(-97.821754, 30.127005), ST_AsGeoJSON(ST_MakePoint(-97.821754, 30.127005))),
(1617, 'TX1030 Hwy 21 West @ Maha', 'address', 'description', ST_MakePoint(-97.505463, 30.086143), ST_AsGeoJSON(ST_MakePoint(-97.505463, 30.086143))),
(1618, 'FM 150 @ Sierra West PHASE 2&3', 'address', 'description', ST_MakePoint(-97.989937, 30.059847), ST_AsGeoJSON(ST_MakePoint(-97.989937, 30.059847))),
(1619, 'Bliss Spillar Rd @ Chaparral Rd', 'address', 'description', ST_MakePoint(-97.874512, 30.138557), ST_AsGeoJSON(ST_MakePoint(-97.874512, 30.138557))),
(1620, 'Dee Gabriel Collins Rd @ Cottonmouth School rd', 'address', 'description', ST_MakePoint(-97.701195, 30.172562), ST_AsGeoJSON(ST_MakePoint(-97.701195, 30.172562))),
(1621, '9800 S US 183', 'address', 'description', ST_MakePoint(-97.694687, 30.107519), ST_AsGeoJSON(ST_MakePoint(-97.694687, 30.107519))),
(1622, '11100-11500 Cow Creek', 'address', 'description', ST_MakePoint(-98.062798, 30.589186), ST_AsGeoJSON(ST_MakePoint(-98.062798, 30.589186))),
(1623, 'fallwell @ sh 130', 'address', 'description', ST_MakePoint(-97.621841, 30.209429), ST_AsGeoJSON(ST_MakePoint(-97.621841, 30.209429))),
(1624, 'SH 130 @ Pearce', 'address', 'description', ST_MakePoint(-97.636894, 30.176794), ST_AsGeoJSON(ST_MakePoint(-97.636894, 30.176794))),
(1626, '3000-blk Bee Cave Rd', 'address', 'description', ST_MakePoint(-97.793686, 30.271036), ST_AsGeoJSON(ST_MakePoint(-97.793686, 30.271036))),
(1627, 'Apple Blossom St @ Dacy ln', 'address', 'description', ST_MakePoint(-97.828583, 30.047428), ST_AsGeoJSON(ST_MakePoint(-97.828583, 30.047428))),
(1629, 'TX1031 FM 969 @ Colorado River', 'address', 'description', ST_MakePoint(-97.403946, 30.168530), ST_AsGeoJSON(ST_MakePoint(-97.403946, 30.168530))),
(1630, 'Wells Branch Pkwy @ Killingsworth Ln', 'address', 'description', ST_MakePoint(-97.612885, 30.417486), ST_AsGeoJSON(ST_MakePoint(-97.612885, 30.417486))),
(1634, 'Cotton Gin Rd @ Summer Sun Cv', 'address', 'description', ST_MakePoint(-97.789948, 29.960678), ST_AsGeoJSON(ST_MakePoint(-97.789948, 29.960678))),
(1635, 'Old San Antonio Rd (South of Puryear)', 'address', 'description', ST_MakePoint(-97.811577, 30.111149), ST_AsGeoJSON(ST_MakePoint(-97.811577, 30.111149))),
(1636, 'Bluff Springs Rd @ Onion Creek', 'address', 'description', ST_MakePoint(-97.769737, 30.159344), ST_AsGeoJSON(ST_MakePoint(-97.769737, 30.159344))),
(1638, 'CR 158 West of Drue Dr', 'address', 'description', ST_MakePoint(-97.845329, 29.946920), ST_AsGeoJSON(ST_MakePoint(-97.845329, 29.946920))),
(1639, 'Goforth Rd @ Sunrise Dr', 'address', 'description', ST_MakePoint(-97.829376, 30.006929), ST_AsGeoJSON(ST_MakePoint(-97.829376, 30.006929))),
(1641, 'Kyle Crossing behind 3rd coast auto', 'address', 'description', ST_MakePoint(-97.858627, 30.018225), ST_AsGeoJSON(ST_MakePoint(-97.858627, 30.018225))),
(1642, 'East William Cannon and Pleasant Valley', 'address', 'description', ST_MakePoint(-97.746414, 30.181608), ST_AsGeoJSON(ST_MakePoint(-97.746414, 30.181608))),
(1643, 'Pleasant Valley and Quicksilver Dr', 'address', 'description', ST_MakePoint(-97.752357, 30.172297), ST_AsGeoJSON(ST_MakePoint(-97.752357, 30.172297))),
(1644, 'P1018 300 Block Reids Bend', 'address', 'description', ST_MakePoint(-97.330460, 30.127987), ST_AsGeoJSON(ST_MakePoint(-97.330460, 30.127987))),
(1646, 'P1019 Al Jones St', 'address', 'description', ST_MakePoint(-97.332298, 30.120579), ST_AsGeoJSON(ST_MakePoint(-97.332298, 30.120579))),
(1647, 'P1020 Lower Wood Ln', 'address', 'description', ST_MakePoint(-97.340408, 30.123716), ST_AsGeoJSON(ST_MakePoint(-97.340408, 30.123716))),
(1648, 'P1021 Shoreline Drive', 'address', 'description', ST_MakePoint(-97.335197, 30.118780), ST_AsGeoJSON(ST_MakePoint(-97.335197, 30.118780))),
(1649, 'Fagerquest/Wolf', 'address', 'description', ST_MakePoint(-97.572929, 30.132200), ST_AsGeoJSON(ST_MakePoint(-97.572929, 30.132200))),
(1650, 'Uhland Rd @ Low Water Crossing', 'address', 'description', ST_MakePoint(-97.900597, 29.894661), ST_AsGeoJSON(ST_MakePoint(-97.900597, 29.894661))),
(1651, 'Cape Rd @ San Marcos River', 'address', 'description', ST_MakePoint(-97.930176, 29.869444), ST_AsGeoJSON(ST_MakePoint(-97.930176, 29.869444))),
(1653, '12900-blk Wright Rd', 'address', 'description', ST_MakePoint(-97.756691, 30.091007), ST_AsGeoJSON(ST_MakePoint(-97.756691, 30.091007))),
(1654, 'CR 103 @ Elm Creek', 'address', 'description', ST_MakePoint(-97.050545, 30.211090), ST_AsGeoJSON(ST_MakePoint(-97.050545, 30.211090))),
(1655, 'CR 104 @ Dead Mans Hole Creek', 'address', 'description', ST_MakePoint(-97.021927, 30.219378), ST_AsGeoJSON(ST_MakePoint(-97.021927, 30.219378))),
(1656, 'CR 104 @ Elm Creek', 'address', 'description', ST_MakePoint(-97.019073, 30.202868), ST_AsGeoJSON(ST_MakePoint(-97.019073, 30.202868))),
(1658, 'CR 108 @ Bluff Creek', 'address', 'description', ST_MakePoint(-97.059273, 30.288042), ST_AsGeoJSON(ST_MakePoint(-97.059273, 30.288042))),
(1659, 'CR 108 @ West Yegua Creek', 'address', 'description', ST_MakePoint(-97.083405, 30.305321), ST_AsGeoJSON(ST_MakePoint(-97.083405, 30.305321))),
(1661, 'CR 109 @ Mier Branch', 'address', 'description', ST_MakePoint(-97.012245, 30.260092), ST_AsGeoJSON(ST_MakePoint(-97.012245, 30.260092))),
(1662, 'CR 109 @ Schilling Branch', 'address', 'description', ST_MakePoint(-97.029968, 30.242050), ST_AsGeoJSON(ST_MakePoint(-97.029968, 30.242050))),
(1663, 'CR 113 @ Elm Creek', 'address', 'description', ST_MakePoint(-96.985680, 30.237471), ST_AsGeoJSON(ST_MakePoint(-96.985680, 30.237471))),
(1664, 'CR 113 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.957947, 30.215399), ST_AsGeoJSON(ST_MakePoint(-96.957947, 30.215399))),
(1666, 'CR 114 @ Willy Branch', 'address', 'description', ST_MakePoint(-96.929131, 30.239904), ST_AsGeoJSON(ST_MakePoint(-96.929131, 30.239904))),
(1667, 'CR 114 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.936272, 30.219763), ST_AsGeoJSON(ST_MakePoint(-96.936272, 30.219763))),
(1668, 'CR 116 @ Little Hickory Creek', 'address', 'description', ST_MakePoint(-96.894165, 30.212481), ST_AsGeoJSON(ST_MakePoint(-96.894165, 30.212481))),
(1669, 'CR 116 @ Persimmons Branch', 'address', 'description', ST_MakePoint(-96.883797, 30.203848), ST_AsGeoJSON(ST_MakePoint(-96.883797, 30.203848))),
(1671, 'CR 117 @ Big Branch', 'address', 'description', ST_MakePoint(-96.884056, 30.255596), ST_AsGeoJSON(ST_MakePoint(-96.884056, 30.255596))),
(1673, 'CR 117 @ Turkey Creek', 'address', 'description', ST_MakePoint(-96.890755, 30.274912), ST_AsGeoJSON(ST_MakePoint(-96.890755, 30.274912))),
(1674, 'CR 118 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.906158, 30.233433), ST_AsGeoJSON(ST_MakePoint(-96.906158, 30.233433))),
(1675, 'CR 118 @ Willow Branch', 'address', 'description', ST_MakePoint(-96.901031, 30.244741), ST_AsGeoJSON(ST_MakePoint(-96.901031, 30.244741))),
(1676, 'CR 119 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.777527, 30.234684), ST_AsGeoJSON(ST_MakePoint(-96.777527, 30.234684))),
(1678, 'CR 124 @ Yegua Creek', 'address', 'description', ST_MakePoint(-96.741318, 30.319473), ST_AsGeoJSON(ST_MakePoint(-96.741318, 30.319473))),
(1680, 'CR 125 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.696175, 30.288494), ST_AsGeoJSON(ST_MakePoint(-96.696175, 30.288494))),
(1682, 'CR 127 @ Flat Rock Creek', 'address', 'description', ST_MakePoint(-96.805611, 30.179604), ST_AsGeoJSON(ST_MakePoint(-96.805611, 30.179604))),
(1684, 'CR 127 @ Nails Creek', 'address', 'description', ST_MakePoint(-96.798683, 30.234751), ST_AsGeoJSON(ST_MakePoint(-96.798683, 30.234751))),
(1685, 'CR 127 @ Pin Oak Creek', 'address', 'description', ST_MakePoint(-96.805725, 30.220579), ST_AsGeoJSON(ST_MakePoint(-96.805725, 30.220579))),
(1686, 'CR 130 @ Hog Branch', 'address', 'description', ST_MakePoint(-96.760712, 30.215097), ST_AsGeoJSON(ST_MakePoint(-96.760712, 30.215097))),
(1687, 'CR 130 @ Turkey Creek', 'address', 'description', ST_MakePoint(-96.781517, 30.169985), ST_AsGeoJSON(ST_MakePoint(-96.781517, 30.169985))),
(1688, 'CR 131 @ Cedar Creek', 'address', 'description', ST_MakePoint(-96.737190, 30.233255), ST_AsGeoJSON(ST_MakePoint(-96.737190, 30.233255))),
(1689, 'CR 133 @ Stuber Creek', 'address', 'description', ST_MakePoint(-96.874001, 30.198463), ST_AsGeoJSON(ST_MakePoint(-96.874001, 30.198463))),
(1690, 'Cr 133 @ Water Hole Branch', 'address', 'description', ST_MakePoint(-96.850182, 30.196384), ST_AsGeoJSON(ST_MakePoint(-96.850182, 30.196384))),
(1691, 'CR 203 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-97.050476, 30.179405), ST_AsGeoJSON(ST_MakePoint(-97.050476, 30.179405))),
(1692, 'CR 205 @ Little Bullfrog Creek', 'address', 'description', ST_MakePoint(-96.990295, 30.175426), ST_AsGeoJSON(ST_MakePoint(-96.990295, 30.175426))),
(1693, 'CR 205 @ Knobbs Creek', 'address', 'description', ST_MakePoint(-97.038078, 30.142265), ST_AsGeoJSON(ST_MakePoint(-97.038078, 30.142265))),
(1694, 'CR 205 @ Bullfrog Creek', 'address', 'description', ST_MakePoint(-96.998543, 30.170876), ST_AsGeoJSON(ST_MakePoint(-96.998543, 30.170876))),
(1695, 'CR 205 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-97.016098, 30.156984), ST_AsGeoJSON(ST_MakePoint(-97.016098, 30.156984))),
(1696, 'CR 208 @ Bullfrog Creek', 'address', 'description', ST_MakePoint(-96.972565, 30.153500), ST_AsGeoJSON(ST_MakePoint(-96.972565, 30.153500))),
(1697, 'CR 208 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-96.996559, 30.145313), ST_AsGeoJSON(ST_MakePoint(-96.996559, 30.145313))),
(1698, 'CR 208 @ Wolf Branch', 'address', 'description', ST_MakePoint(-96.961891, 30.163271), ST_AsGeoJSON(ST_MakePoint(-96.961891, 30.163271))),
(1699, 'CR 209 @ Knobbs Creek', 'address', 'description', ST_MakePoint(-97.020515, 30.101318), ST_AsGeoJSON(ST_MakePoint(-97.020515, 30.101318))),
(1700, 'CR 210 @ Knobbs Creek', 'address', 'description', ST_MakePoint(-97.018204, 30.089941), ST_AsGeoJSON(ST_MakePoint(-97.018204, 30.089941))),
(1701, 'CR 213 @ Knobbs Creek', 'address', 'description', ST_MakePoint(-97.006798, 30.066362), ST_AsGeoJSON(ST_MakePoint(-97.006798, 30.066362))),
(1702, 'CR 213 @ Little Pin Oak Creek', 'address', 'description', ST_MakePoint(-96.999519, 30.072908), ST_AsGeoJSON(ST_MakePoint(-96.999519, 30.072908))),
(1703, 'CR 216 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-96.940231, 30.118050), ST_AsGeoJSON(ST_MakePoint(-96.940231, 30.118050))),
(1704, 'CR 216 @ Sandy Creek', 'address', 'description', ST_MakePoint(-96.938278, 30.122393), ST_AsGeoJSON(ST_MakePoint(-96.938278, 30.122393))),
(1705, 'CR 217 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-96.952034, 30.126257), ST_AsGeoJSON(ST_MakePoint(-96.952034, 30.126257))),
(1706, 'CR 217 @ Sandy Creek', 'address', 'description', ST_MakePoint(-96.939537, 30.137663), ST_AsGeoJSON(ST_MakePoint(-96.939537, 30.137663))),
(1707, 'CR 220 @ Rabbs Creek', 'address', 'description', ST_MakePoint(-96.929756, 30.109024), ST_AsGeoJSON(ST_MakePoint(-96.929756, 30.109024))),
(1708, 'CR 221 @ Pin Oak Creek', 'address', 'description', ST_MakePoint(-96.910652, 30.121639), ST_AsGeoJSON(ST_MakePoint(-96.910652, 30.121639))),
(1709, 'CR 223 @ Pin Oak Creek', 'address', 'description', ST_MakePoint(-96.914116, 30.148920), ST_AsGeoJSON(ST_MakePoint(-96.914116, 30.148920))),
(1710, 'CR 223 @ Rocky Branch', 'address', 'description', ST_MakePoint(-96.862648, 30.108444), ST_AsGeoJSON(ST_MakePoint(-96.862648, 30.108444))),
(1711, 'CR 223 @ Small Greens Creek', 'address', 'description', ST_MakePoint(-96.888893, 30.124683), ST_AsGeoJSON(ST_MakePoint(-96.888893, 30.124683))),
(1712, 'CR 226 @ Cummins Creek', 'address', 'description', ST_MakePoint(-96.880585, 30.159863), ST_AsGeoJSON(ST_MakePoint(-96.880585, 30.159863))),
(1713, 'CR 233 @ Cummins Creek', 'address', 'description', ST_MakePoint(-96.856689, 30.156799), ST_AsGeoJSON(ST_MakePoint(-96.856689, 30.156799))),
(1714, 'CR 304 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.236710, 30.423727), ST_AsGeoJSON(ST_MakePoint(-97.236710, 30.423727))),
(1715, 'CR 304 @ Mine Creek', 'address', 'description', ST_MakePoint(-97.213989, 30.360558), ST_AsGeoJSON(ST_MakePoint(-97.213989, 30.360558))),
(1716, 'CR 304 @ Willow Creek', 'address', 'description', ST_MakePoint(-97.226395, 30.376293), ST_AsGeoJSON(ST_MakePoint(-97.226395, 30.376293))),
(1717, 'CR 306 @ Middle Yegua Creek (South)', 'address', 'description', ST_MakePoint(-97.191315, 30.402718), ST_AsGeoJSON(ST_MakePoint(-97.191315, 30.402718))),
(1718, 'CR 306 @ Middle Yegua Creek (North)', 'address', 'description', ST_MakePoint(-97.222565, 30.413513), ST_AsGeoJSON(ST_MakePoint(-97.222565, 30.413513))),
(1719, 'CR 309 @ Burns Branch', 'address', 'description', ST_MakePoint(-97.148094, 30.402805), ST_AsGeoJSON(ST_MakePoint(-97.148094, 30.402805))),
(1720, 'CR 309 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.156403, 30.410339), ST_AsGeoJSON(ST_MakePoint(-97.156403, 30.410339))),
(1721, 'CR 311 @ Blue Branch', 'address', 'description', ST_MakePoint(-97.170204, 30.361956), ST_AsGeoJSON(ST_MakePoint(-97.170204, 30.361956))),
(1722, 'CR 311 @ Marshy Branch', 'address', 'description', ST_MakePoint(-97.185104, 30.361397), ST_AsGeoJSON(ST_MakePoint(-97.185104, 30.361397))),
(1723, 'CR 314 @ Cottonwood Creek', 'address', 'description', ST_MakePoint(-97.129578, 30.450672), ST_AsGeoJSON(ST_MakePoint(-97.129578, 30.450672))),
(1724, 'CR 314 @ Cross Creek', 'address', 'description', ST_MakePoint(-97.141655, 30.435314), ST_AsGeoJSON(ST_MakePoint(-97.141655, 30.435314))),
(1725, 'CR 314A @ Cross Creek', 'address', 'description', ST_MakePoint(-97.149963, 30.454733), ST_AsGeoJSON(ST_MakePoint(-97.149963, 30.454733))),
(1726, 'CR 315 @ Camp Branch', 'address', 'description', ST_MakePoint(-97.093811, 30.464424), ST_AsGeoJSON(ST_MakePoint(-97.093811, 30.464424))),
(1727, 'CR 316 @ Cross Creek', 'address', 'description', ST_MakePoint(-97.123238, 30.423174), ST_AsGeoJSON(ST_MakePoint(-97.123238, 30.423174))),
(1728, 'CR 317 @ Brushy Creek', 'address', 'description', ST_MakePoint(-97.038086, 30.437950), ST_AsGeoJSON(ST_MakePoint(-97.038086, 30.437950))),
(1729, 'CR 318 @ Camp Branch', 'address', 'description', ST_MakePoint(-97.090744, 30.470179), ST_AsGeoJSON(ST_MakePoint(-97.090744, 30.470179))),
(1730, 'CR 320 @ Brushy Creek', 'address', 'description', ST_MakePoint(-97.020164, 30.452997), ST_AsGeoJSON(ST_MakePoint(-97.020164, 30.452997))),
(1731, 'CR 320 @ Pucker Springs Branch', 'address', 'description', ST_MakePoint(-97.037086, 30.475197), ST_AsGeoJSON(ST_MakePoint(-97.037086, 30.475197))),
(1732, 'CR 320 @ Rouse Creek', 'address', 'description', ST_MakePoint(-97.050606, 30.502571), ST_AsGeoJSON(ST_MakePoint(-97.050606, 30.502571))),
(1733, 'CR 322 @ West Rocky Branch', 'address', 'description', ST_MakePoint(-97.082260, 30.360727), ST_AsGeoJSON(ST_MakePoint(-97.082260, 30.360727))),
(1734, 'CR 323 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.048912, 30.367773), ST_AsGeoJSON(ST_MakePoint(-97.048912, 30.367773))),
(1735, 'CR 326 @ West Yegua Creek', 'address', 'description', ST_MakePoint(-97.005585, 30.295628), ST_AsGeoJSON(ST_MakePoint(-97.005585, 30.295628))),
(1736, 'CR 326 @ Shaw Branch', 'address', 'description', ST_MakePoint(-97.012558, 30.395409), ST_AsGeoJSON(ST_MakePoint(-97.012558, 30.395409))),
(1737, 'CR 326 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.024666, 30.367445), ST_AsGeoJSON(ST_MakePoint(-97.024666, 30.367445))),
(1738, 'CR 329 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-96.987915, 30.353991), ST_AsGeoJSON(ST_MakePoint(-96.987915, 30.353991))),
(1739, 'CR 333 @ Willie Branch', 'address', 'description', ST_MakePoint(-97.129280, 30.320852), ST_AsGeoJSON(ST_MakePoint(-97.129280, 30.320852))),
(1740, 'CR 337 @ Coupland Branch', 'address', 'description', ST_MakePoint(-97.075485, 30.405525), ST_AsGeoJSON(ST_MakePoint(-97.075485, 30.405525))),
(1741, 'CR 343 @ Coupland Branch', 'address', 'description', ST_MakePoint(-97.102318, 30.354233), ST_AsGeoJSON(ST_MakePoint(-97.102318, 30.354233))),
(1742, 'CR 345 @ Allen Creek', 'address', 'description', ST_MakePoint(-97.016090, 30.528376), ST_AsGeoJSON(ST_MakePoint(-97.016090, 30.528376))),
(1743, 'CR 404 @ Boggy Creek', 'address', 'description', ST_MakePoint(-96.865067, 30.382130), ST_AsGeoJSON(ST_MakePoint(-96.865067, 30.382130))),
(1744, 'CR 405 @ Indian Camp Branch', 'address', 'description', ST_MakePoint(-96.989288, 30.396210), ST_AsGeoJSON(ST_MakePoint(-96.989288, 30.396210))),
(1745, 'CR 405 @ Warsaw Branch', 'address', 'description', ST_MakePoint(-96.972519, 30.395802), ST_AsGeoJSON(ST_MakePoint(-96.972519, 30.395802))),
(1746, 'CR 405 @ Pin Oak Creek', 'address', 'description', ST_MakePoint(-96.955132, 30.405678), ST_AsGeoJSON(ST_MakePoint(-96.955132, 30.405678))),
(1747, 'CR 413 @ Allen Creek', 'address', 'description', ST_MakePoint(-96.933594, 30.525551), ST_AsGeoJSON(ST_MakePoint(-96.933594, 30.525551))),
(1748, 'CR 415W @ Spring Branch', 'address', 'description', ST_MakePoint(-97.000549, 30.499523), ST_AsGeoJSON(ST_MakePoint(-97.000549, 30.499523))),
(1749, 'CR 417 @ Spring Branch', 'address', 'description', ST_MakePoint(-96.988731, 30.517321), ST_AsGeoJSON(ST_MakePoint(-96.988731, 30.517321))),
(1750, 'CR 418 @ Allen Creek', 'address', 'description', ST_MakePoint(-97.000137, 30.526342), ST_AsGeoJSON(ST_MakePoint(-97.000137, 30.526342))),
(1751, 'CR 418 @ Spring Branch', 'address', 'description', ST_MakePoint(-96.993858, 30.510744), ST_AsGeoJSON(ST_MakePoint(-96.993858, 30.510744))),
(1752, 'CR 424 @ Brushy Creek (North)', 'address', 'description', ST_MakePoint(-96.809837, 30.370800), ST_AsGeoJSON(ST_MakePoint(-96.809837, 30.370800))),
(1753, 'JCR 424 @ Brushy Creek (South)', 'address', 'description', ST_MakePoint(-96.834259, 30.346251), ST_AsGeoJSON(ST_MakePoint(-96.834259, 30.346251))),
(1754, 'CR 424 @ East Yegua Creek', 'address', 'description', ST_MakePoint(-96.788017, 30.387001), ST_AsGeoJSON(ST_MakePoint(-96.788017, 30.387001))),
(1755, 'CR 426 @ Brushy Creek', 'address', 'description', ST_MakePoint(-96.801727, 30.370295), ST_AsGeoJSON(ST_MakePoint(-96.801727, 30.370295))),
(1756, 'CR 428 @ Boggy Branch', 'address', 'description', ST_MakePoint(-96.855919, 30.355844), ST_AsGeoJSON(ST_MakePoint(-96.855919, 30.355844))),
(1757, 'CR 428 @ Brushy Creek', 'address', 'description', ST_MakePoint(-96.839722, 30.369522), ST_AsGeoJSON(ST_MakePoint(-96.839722, 30.369522))),
(1758, 'CR 430 @ East Yegua Creek', 'address', 'description', ST_MakePoint(-96.761047, 30.344315), ST_AsGeoJSON(ST_MakePoint(-96.761047, 30.344315))),
(1759, 'CR 430 @ Boggy Branch', 'address', 'description', ST_MakePoint(-96.856148, 30.354189), ST_AsGeoJSON(ST_MakePoint(-96.856148, 30.354189))),
(1760, 'CR 430 @ Brushy Creek', 'address', 'description', ST_MakePoint(-96.837189, 30.338240), ST_AsGeoJSON(ST_MakePoint(-96.837189, 30.338240))),
(1761, 'CR 436 @ Copperas Creek', 'address', 'description', ST_MakePoint(-96.909355, 30.389839), ST_AsGeoJSON(ST_MakePoint(-96.909355, 30.389839))),
(1762, 'CR 455 @ Indian Camp Branch', 'address', 'description', ST_MakePoint(-96.984497, 30.371523), ST_AsGeoJSON(ST_MakePoint(-96.984497, 30.371523))),
(1763, 'CR 455 @ Warsaw Branch', 'address', 'description', ST_MakePoint(-96.980118, 30.372948), ST_AsGeoJSON(ST_MakePoint(-96.980118, 30.372948))),
(1768, 'Deer Valley Dr. @ Willow Creek', 'address', 'description', ST_MakePoint(-97.265465, 30.371374), ST_AsGeoJSON(ST_MakePoint(-97.265465, 30.371374))),
(1769, 'Post Oak Dr. @ Tributary to Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.232536, 30.432079), ST_AsGeoJSON(ST_MakePoint(-97.232536, 30.432079))),
(1770, 'Post Oak Dr. @ Tributary to Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.226562, 30.430269), ST_AsGeoJSON(ST_MakePoint(-97.226562, 30.430269))),
(1771, 'Road B @ Two Mile Branch', 'address', 'description', ST_MakePoint(-97.124008, 30.373522), ST_AsGeoJSON(ST_MakePoint(-97.124008, 30.373522))),
(1772, 'Road C @ Two Mile Creek', 'address', 'description', ST_MakePoint(-97.122643, 30.379416), ST_AsGeoJSON(ST_MakePoint(-97.122643, 30.379416))),
(1773, 'Wilson Boyd Ln. @ Red Branch', 'address', 'description', ST_MakePoint(-97.029266, 30.389349), ST_AsGeoJSON(ST_MakePoint(-97.029266, 30.389349))),
(1774, 'FM 141 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-96.786461, 30.321545), ST_AsGeoJSON(ST_MakePoint(-96.786461, 30.321545))),
(1775, 'FM 1624 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-97.064156, 30.388115), ST_AsGeoJSON(ST_MakePoint(-97.064156, 30.388115))),
(1776, 'FM 1624 @ West Yegua Creek', 'address', 'description', ST_MakePoint(-97.050720, 30.303663), ST_AsGeoJSON(ST_MakePoint(-97.050720, 30.303663))),
(1777, 'CR 477', 'address', 'description', ST_MakePoint(-97.080772, 31.209778), ST_AsGeoJSON(ST_MakePoint(-97.080772, 31.209778))),
(1778, 'Huelsebusch Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.932274, 29.922003), ST_AsGeoJSON(ST_MakePoint(-96.932274, 29.922003))),
(1779, 'Goehring Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.824440, 30.113573), ST_AsGeoJSON(ST_MakePoint(-96.824440, 30.113573))),
(1780, 'Gregg @ fm 973', 'address', 'description', ST_MakePoint(-97.529198, 30.375914), ST_AsGeoJSON(ST_MakePoint(-97.529198, 30.375914))),
(1781, 'CR 117 @ Persimmon Branch', 'address', 'description', ST_MakePoint(-96.861954, 30.235029), ST_AsGeoJSON(ST_MakePoint(-96.861954, 30.235029))),
(1782, ' Niederwald Strasse Rd @ Camino Real', 'address', 'description', ST_MakePoint(-97.728111, 30.009392), ST_AsGeoJSON(ST_MakePoint(-97.728111, 30.009392))),
(1783, 'CR 337 @ HWY 29', 'address', 'description', ST_MakePoint(-97.456779, 30.643402), ST_AsGeoJSON(ST_MakePoint(-97.456779, 30.643402))),
(1784, 'CR 337 @ CR  124', 'address', 'description', ST_MakePoint(-97.466133, 30.666071), ST_AsGeoJSON(ST_MakePoint(-97.466133, 30.666071))),
(1785, 'River Trail Bridge MM3.3', 'address', 'description', ST_MakePoint(-97.706497, 30.662779), ST_AsGeoJSON(ST_MakePoint(-97.706497, 30.662779))),
(1786, 'River Trail Bridge under IH35', 'address', 'description', ST_MakePoint(-97.683403, 30.645309), ST_AsGeoJSON(ST_MakePoint(-97.683403, 30.645309))),
(1787, 'Lower Park Rd at Chamber Way', 'address', 'description', ST_MakePoint(-97.672668, 30.647072), ST_AsGeoJSON(ST_MakePoint(-97.672668, 30.647072))),
(1788, 'CR 356', 'address', 'description', ST_MakePoint(-97.373032, 30.734707), ST_AsGeoJSON(ST_MakePoint(-97.373032, 30.734707))),
(1789, 'CR 230', 'address', 'description', ST_MakePoint(-97.750427, 30.871168), ST_AsGeoJSON(ST_MakePoint(-97.750427, 30.871168))),
(1790, 'Ave G & 11th St', 'address', 'description', ST_MakePoint(-98.270241, 30.578327), ST_AsGeoJSON(ST_MakePoint(-98.270241, 30.578327))),
(1791, 'River Rd @ Loma Vista ', 'address', 'description', ST_MakePoint(-98.100525, 29.993076), ST_AsGeoJSON(ST_MakePoint(-98.100525, 29.993076))),
(1793, '610 Shady Hollow Dr - SW side', 'address', 'description', ST_MakePoint(-97.682587, 30.665737), ST_AsGeoJSON(ST_MakePoint(-97.682587, 30.665737))),
(1794, '811 Shady Hollow Dr - NW side', 'address', 'description', ST_MakePoint(-97.674622, 30.668791), ST_AsGeoJSON(ST_MakePoint(-97.674622, 30.668791))),
(1795, '608 Golden Oaks Rd - SE side', 'address', 'description', ST_MakePoint(-97.679573, 30.665003), ST_AsGeoJSON(ST_MakePoint(-97.679573, 30.665003))),
(1796, '709 Golden Oaks Rd', 'address', 'description', ST_MakePoint(-97.676056, 30.665386), ST_AsGeoJSON(ST_MakePoint(-97.676056, 30.665386))),
(1797, 'P2051 170 Blk Cassel Way', 'address', 'description', ST_MakePoint(-97.237305, 30.155321), ST_AsGeoJSON(ST_MakePoint(-97.237305, 30.155321))),
(1798, 'CR 309 @ Pin Oak', 'address', 'description', ST_MakePoint(-97.137146, 30.385496), ST_AsGeoJSON(ST_MakePoint(-97.137146, 30.385496))),
(1800, 'Henry Marx @ Barton Creek ', 'address', 'description', ST_MakePoint(-97.887207, 30.270620), ST_AsGeoJSON(ST_MakePoint(-97.887207, 30.270620))),
(1801, 'Big Sandy @ Round Mountain ', 'address', 'description', ST_MakePoint(-97.947975, 30.571045), ST_AsGeoJSON(ST_MakePoint(-97.947975, 30.571045))),
(1803, 'FM 1826 @ Zyle ', 'address', 'description', ST_MakePoint(-97.921150, 30.198986), ST_AsGeoJSON(ST_MakePoint(-97.921150, 30.198986))),
(1804, 'Oak Hill Cemetery Rd West of Herron Tr', 'address', 'description', ST_MakePoint(-97.263367, 30.222258), ST_AsGeoJSON(ST_MakePoint(-97.263367, 30.222258))),
(1805, 'Herron Trail', 'address', 'description', ST_MakePoint(-97.258026, 30.223463), ST_AsGeoJSON(ST_MakePoint(-97.258026, 30.223463))),
(1806, 'Oriole Loop', 'address', 'description', ST_MakePoint(-97.406296, 29.798838), ST_AsGeoJSON(ST_MakePoint(-97.406296, 29.798838))),
(1807, '391 Porter Road', 'address', 'description', ST_MakePoint(-97.259186, 30.158215), ST_AsGeoJSON(ST_MakePoint(-97.259186, 30.158215))),
(1808, 'Buck Branch', 'address', 'description', ST_MakePoint(-97.406151, 29.756336), ST_AsGeoJSON(ST_MakePoint(-97.406151, 29.756336))),
(1809, 'Sandy Fork Rd', 'address', 'description', ST_MakePoint(-97.421875, 29.769947), ST_AsGeoJSON(ST_MakePoint(-97.421875, 29.769947))),
(1810, 'FM 619 &amp; CR 415', 'address', 'description', ST_MakePoint(-97.390236, 30.643354), ST_AsGeoJSON(ST_MakePoint(-97.390236, 30.643354))),
(1811, 'WoodCreek Dr @ Cypress Point', 'address', 'description', ST_MakePoint(-98.117538, 30.021112), ST_AsGeoJSON(ST_MakePoint(-98.117538, 30.021112))),
(1812, 'CR 333 & FM 971', 'address', 'description', ST_MakePoint(-97.503838, 30.684809), ST_AsGeoJSON(ST_MakePoint(-97.503838, 30.684809))),
(1813, 'CR 314', 'address', 'description', ST_MakePoint(-97.601936, 30.794815), ST_AsGeoJSON(ST_MakePoint(-97.601936, 30.794815))),
(1814, 'FM 1826 @ Lewis Mountain ', 'address', 'description', ST_MakePoint(-97.911179, 30.206848), ST_AsGeoJSON(ST_MakePoint(-97.911179, 30.206848))),
(1816, '1100 Blk Lower Elgin Rd', 'address', 'description', ST_MakePoint(-97.409477, 30.222834), ST_AsGeoJSON(ST_MakePoint(-97.409477, 30.222834))),
(1817, 'Pine Valley Loop', 'address', 'description', ST_MakePoint(-97.303185, 29.953863), ST_AsGeoJSON(ST_MakePoint(-97.303185, 29.953863))),
(1818, 'East side of Tahitian Dr at Kaanapali', 'address', 'description', ST_MakePoint(-97.284248, 30.088430), ST_AsGeoJSON(ST_MakePoint(-97.284248, 30.088430))),
(1819, '500 Blk Lower Elgin Rd', 'address', 'description', ST_MakePoint(-97.398445, 30.277292), ST_AsGeoJSON(ST_MakePoint(-97.398445, 30.277292))),
(1820, '304 South of 535', 'address', 'description', ST_MakePoint(-97.310127, 29.931849), ST_AsGeoJSON(ST_MakePoint(-97.310127, 29.931849))),
(1821, 'CR 117 @ Trubitary to Nails Creek', 'address', 'description', ST_MakePoint(-96.847595, 30.235800), ST_AsGeoJSON(ST_MakePoint(-96.847595, 30.235800))),
(1822, '200 Blk FM 2571 ', 'address', 'description', ST_MakePoint(-97.171227, 30.013432), ST_AsGeoJSON(ST_MakePoint(-97.171227, 30.013432))),
(1823, 'CR 426', 'address', 'description', ST_MakePoint(-97.241882, 30.628513), ST_AsGeoJSON(ST_MakePoint(-97.241882, 30.628513))),
(1824, '800 Blk Stockade Ranch Rd', 'address', 'description', ST_MakePoint(-97.147392, 30.261410), ST_AsGeoJSON(ST_MakePoint(-97.147392, 30.261410))),
(1825, 'Turkey Ridge Rd Riddle Rd', 'address', 'description', ST_MakePoint(-97.539978, 30.015995), ST_AsGeoJSON(ST_MakePoint(-97.539978, 30.015995))),
(1826, 'CR 428', 'address', 'description', ST_MakePoint(-97.278870, 30.694860), ST_AsGeoJSON(ST_MakePoint(-97.278870, 30.694860))),
(1827, '1200 Blk Old McDade Rd', 'address', 'description', ST_MakePoint(-97.329803, 30.334721), ST_AsGeoJSON(ST_MakePoint(-97.329803, 30.334721))),
(1828, 'OLD PIN OAK', 'address', 'description', ST_MakePoint(-97.131813, 30.176414), ST_AsGeoJSON(ST_MakePoint(-97.131813, 30.176414))),
(1829, '200 Blk Roland Ln', 'address', 'description', ST_MakePoint(-97.878647, 29.960945), ST_AsGeoJSON(ST_MakePoint(-97.878647, 29.960945))),
(1831, '100 Blk Winfield Thicket', 'address', 'description', ST_MakePoint(-97.242683, 30.053019), ST_AsGeoJSON(ST_MakePoint(-97.242683, 30.053019))),
(1832, 'Paint Creek Bridge on Paint Creek Rd', 'address', 'description', ST_MakePoint(-97.187004, 30.277124), ST_AsGeoJSON(ST_MakePoint(-97.187004, 30.277124))),
(1833, '300 Community Center Road', 'address', 'description', ST_MakePoint(-97.379982, 29.898951), ST_AsGeoJSON(ST_MakePoint(-97.379982, 29.898951))),
(1835, 'US 290 @ Red Elm Pkwy ', 'address', 'description', ST_MakePoint(-97.433807, 30.352812), ST_AsGeoJSON(ST_MakePoint(-97.433807, 30.352812))),
(1836, 'Rek Hill Rd', 'address', 'description', ST_MakePoint(-96.639008, 29.934271), ST_AsGeoJSON(ST_MakePoint(-96.639008, 29.934271))),
(1837, 'Hwy 159 @ Darden Loop', 'address', 'description', ST_MakePoint(-96.609566, 29.963202), ST_AsGeoJSON(ST_MakePoint(-96.609566, 29.963202))),
(1839, 'FM 1291 @ Haw Creek', 'address', 'description', ST_MakePoint(-96.688789, 29.960443), ST_AsGeoJSON(ST_MakePoint(-96.688789, 29.960443))),
(1840, 'FM 1291 @ Halamicek Loop', 'address', 'description', ST_MakePoint(-96.698441, 29.975910), ST_AsGeoJSON(ST_MakePoint(-96.698441, 29.975910))),
(1841, 'Mullins Prairie Loop Southbound', 'address', 'description', ST_MakePoint(-96.792381, 29.860403), ST_AsGeoJSON(ST_MakePoint(-96.792381, 29.860403))),
(1842, 'Mullins Prairie Loop @ Loehr Rd', 'address', 'description', ST_MakePoint(-96.813881, 29.864220), ST_AsGeoJSON(ST_MakePoint(-96.813881, 29.864220))),
(1844, 'Stockade Ranch Rd', 'address', 'description', ST_MakePoint(-97.151466, 30.270452), ST_AsGeoJSON(ST_MakePoint(-97.151466, 30.270452))),
(1845, 'P1028 KoleKole Ln', 'address', 'description', ST_MakePoint(-97.298325, 30.074764), ST_AsGeoJSON(ST_MakePoint(-97.298325, 30.074764))),
(1851, 'Kitchen Lane ', 'address', 'description', ST_MakePoint(-96.741486, 29.862785), ST_AsGeoJSON(ST_MakePoint(-96.741486, 29.862785))),
(1852, 'Zapalac Rd ', 'address', 'description', ST_MakePoint(-96.749596, 29.871178), ST_AsGeoJSON(ST_MakePoint(-96.749596, 29.871178))),
(1854, 'P1029 Koele Ct', 'address', 'description', ST_MakePoint(-97.322655, 30.087278), ST_AsGeoJSON(ST_MakePoint(-97.322655, 30.087278))),
(1855, 'CR 494', 'address', 'description', ST_MakePoint(-97.259216, 30.700129), ST_AsGeoJSON(ST_MakePoint(-97.259216, 30.700129))),
(1856, '200 Blk Littig Rd', 'address', 'description', ST_MakePoint(-97.402588, 30.341646), ST_AsGeoJSON(ST_MakePoint(-97.402588, 30.341646))),
(1857, 'P1030 Kamakoa Ln ', 'address', 'description', ST_MakePoint(-97.293259, 30.093925), ST_AsGeoJSON(ST_MakePoint(-97.293259, 30.093925))),
(1858, '200 Blk Lone Star Rd', 'address', 'description', ST_MakePoint(-97.411018, 30.043024), ST_AsGeoJSON(ST_MakePoint(-97.411018, 30.043024))),
(1859, '100 Blk Big Bow', 'address', 'description', ST_MakePoint(-97.092758, 30.044622), ST_AsGeoJSON(ST_MakePoint(-97.092758, 30.044622))),
(1861, 'Gotier Trace at Alum Creek', 'address', 'description', ST_MakePoint(-97.213692, 30.104731), ST_AsGeoJSON(ST_MakePoint(-97.213692, 30.104731))),
(1863, 'Stueve Lane', 'address', 'description', ST_MakePoint(-97.690659, 29.891153), ST_AsGeoJSON(ST_MakePoint(-97.690659, 29.891153))),
(1864, 'Witter Road', 'address', 'description', ST_MakePoint(-97.623901, 29.902445), ST_AsGeoJSON(ST_MakePoint(-97.623901, 29.902445))),
(1865, 'Johnson Street', 'address', 'description', ST_MakePoint(-97.845451, 29.839888), ST_AsGeoJSON(ST_MakePoint(-97.845451, 29.839888))),
(1866, 'North Pecos', 'address', 'description', ST_MakePoint(-97.679214, 29.891785), ST_AsGeoJSON(ST_MakePoint(-97.679214, 29.891785))),
(1867, 'Reed Creek Drive', 'address', 'description', ST_MakePoint(-97.412186, 29.737156), ST_AsGeoJSON(ST_MakePoint(-97.412186, 29.737156))),
(1868, 'CR 401 @ Tributary to East Yegua Creek', 'address', 'description', ST_MakePoint(-96.891800, 30.418373), ST_AsGeoJSON(ST_MakePoint(-96.891800, 30.418373))),
(1869, 'CR 418', 'address', 'description', ST_MakePoint(-97.346680, 30.660755), ST_AsGeoJSON(ST_MakePoint(-97.346680, 30.660755))),
(1870, 'CR 463', 'address', 'description', ST_MakePoint(-97.352257, 30.438120), ST_AsGeoJSON(ST_MakePoint(-97.352257, 30.438120))),
(1871, '213 S. CM Allen Pkwy (Children', 'address', 'description', ST_MakePoint(-97.936417, 29.880699), ST_AsGeoJSON(ST_MakePoint(-97.936417, 29.880699))),
(1872, 'CR 327w @ Tributary to West Yegua Creek', 'address', 'description', ST_MakePoint(-96.969643, 30.296951), ST_AsGeoJSON(ST_MakePoint(-96.969643, 30.296951))),
(1873, '120 Bert Brown St (San Marcos Treatment Center Entrance)', 'address', 'description', ST_MakePoint(-97.926392, 29.896421), ST_AsGeoJSON(ST_MakePoint(-97.926392, 29.896421))),
(1874, '190 Pine Canyon Dr', 'address', 'description', ST_MakePoint(-97.319290, 29.956299), ST_AsGeoJSON(ST_MakePoint(-97.319290, 29.956299))),
(1875, 'Wilbarger Creek Dr', 'address', 'description', ST_MakePoint(-97.416107, 30.227524), ST_AsGeoJSON(ST_MakePoint(-97.416107, 30.227524))),
(1876, 'Copperhead Rd', 'address', 'description', ST_MakePoint(-97.024216, 30.040434), ST_AsGeoJSON(ST_MakePoint(-97.024216, 30.040434))),
(1877, 'Plum Church Rd', 'address', 'description', ST_MakePoint(-96.975609, 29.925411), ST_AsGeoJSON(ST_MakePoint(-96.975609, 29.925411))),
(1878, 'Adamcik Rd', 'address', 'description', ST_MakePoint(-96.834785, 29.749142), ST_AsGeoJSON(ST_MakePoint(-96.834785, 29.749142))),
(1880, 'Middle Creek Rd', 'address', 'description', ST_MakePoint(-96.885162, 29.759178), ST_AsGeoJSON(ST_MakePoint(-96.885162, 29.759178))),
(1881, 'Hermis Rd', 'address', 'description', ST_MakePoint(-96.938766, 29.652189), ST_AsGeoJSON(ST_MakePoint(-96.938766, 29.652189))),
(1882, 'CR 255', 'address', 'description', ST_MakePoint(-97.853767, 30.751747), ST_AsGeoJSON(ST_MakePoint(-97.853767, 30.751747))),
(1883, 'CR 257', 'address', 'description', ST_MakePoint(-97.869514, 30.698648), ST_AsGeoJSON(ST_MakePoint(-97.869514, 30.698648))),
(1884, 'CR 215', 'address', 'description', ST_MakePoint(-97.985001, 30.823446), ST_AsGeoJSON(ST_MakePoint(-97.985001, 30.823446))),
(1885, 'Longhorn Dr Culvert', 'address', 'description', ST_MakePoint(-97.226059, 30.156879), ST_AsGeoJSON(ST_MakePoint(-97.226059, 30.156879))),
(1887, 'Raven Rd', 'address', 'description', ST_MakePoint(-97.182098, 30.074966), ST_AsGeoJSON(ST_MakePoint(-97.182098, 30.074966))),
(1888, 'Agget Rd', 'address', 'description', ST_MakePoint(-97.177376, 30.078941), ST_AsGeoJSON(ST_MakePoint(-97.177376, 30.078941))),
(1891, 'Low Water Crossing Rd @ Mansfield Dam', 'address', 'description', ST_MakePoint(-97.913353, 30.388172), ST_AsGeoJSON(ST_MakePoint(-97.913353, 30.388172))),
(1892, 'Trinity Street near Hackberry', 'address', 'description', ST_MakePoint(-97.652695, 29.690315), ST_AsGeoJSON(ST_MakePoint(-97.652695, 29.690315))),
(1893, 'Hackberry Street (700 bk)', 'address', 'description', ST_MakePoint(-97.653038, 29.687967), ST_AsGeoJSON(ST_MakePoint(-97.653038, 29.687967))),
(1894, 'Goliad Street, Luling', 'address', 'description', ST_MakePoint(-97.648643, 29.685747), ST_AsGeoJSON(ST_MakePoint(-97.648643, 29.685747))),
(1895, 'Elm/Davis, Luling', 'address', 'description', ST_MakePoint(-97.639435, 29.679951), ST_AsGeoJSON(ST_MakePoint(-97.639435, 29.679951))),
(1896, 'Davis Street (FM1322) at City Limit, Luling', 'address', 'description', ST_MakePoint(-97.625168, 29.676464), ST_AsGeoJSON(ST_MakePoint(-97.625168, 29.676464))),
(1897, 'Davis at Mimosa St, Luling', 'address', 'description', ST_MakePoint(-97.662674, 29.682615), ST_AsGeoJSON(ST_MakePoint(-97.662674, 29.682615))),
(1898, 'Laurel Street at Zedler Mill, Luling', 'address', 'description', ST_MakePoint(-97.650940, 29.667702), ST_AsGeoJSON(ST_MakePoint(-97.650940, 29.667702))),
(1899, 'Club St at Bellaire St, Luling', 'address', 'description', ST_MakePoint(-97.647781, 29.666491), ST_AsGeoJSON(ST_MakePoint(-97.647781, 29.666491))),
(1900, 'CR 105 near Hwy 90, Luling', 'address', 'description', ST_MakePoint(-97.698509, 29.670853), ST_AsGeoJSON(ST_MakePoint(-97.698509, 29.670853))),
(1901, 'Whisper Street at Plum Creek', 'address', 'description', ST_MakePoint(-97.601845, 29.657335), ST_AsGeoJSON(ST_MakePoint(-97.601845, 29.657335))),
(1902, '500 Bk Southern Way, Luling', 'address', 'description', ST_MakePoint(-97.604286, 29.653362), ST_AsGeoJSON(ST_MakePoint(-97.604286, 29.653362))),
(1903, 'Trinity Street and Laurel, Luling', 'address', 'description', ST_MakePoint(-97.648315, 29.688078), ST_AsGeoJSON(ST_MakePoint(-97.648315, 29.688078))),
(1904, 'E Fannin near Poppy, Luling', 'address', 'description', ST_MakePoint(-97.641220, 29.681723), ST_AsGeoJSON(ST_MakePoint(-97.641220, 29.681723))),
(1905, 'HWY 183 at I-10, Luling', 'address', 'description', ST_MakePoint(-97.593147, 29.652784), ST_AsGeoJSON(ST_MakePoint(-97.593147, 29.652784))),
(1906, 'Hertel Road', 'address', 'description', ST_MakePoint(-96.922974, 29.705248), ST_AsGeoJSON(ST_MakePoint(-96.922974, 29.705248))),
(1907, 'Medina Vista Ln @ Big Sandy Creek', 'address', 'description', ST_MakePoint(-97.911362, 30.504423), ST_AsGeoJSON(ST_MakePoint(-97.911362, 30.504423))),
(1908, 'Medina Street', 'address', 'description', ST_MakePoint(-97.678406, 29.871357), ST_AsGeoJSON(ST_MakePoint(-97.678406, 29.871357))),
(1909, 'Lehman @ Hallie Dr', 'address', 'description', ST_MakePoint(-97.857574, 29.991690), ST_AsGeoJSON(ST_MakePoint(-97.857574, 29.991690))),
(1910, '1200 blk Roland Ln', 'address', 'description', ST_MakePoint(-97.888031, 29.968817), ST_AsGeoJSON(ST_MakePoint(-97.888031, 29.968817))),
(1911, 'Cameron Rd @ Cele Rd', 'address', 'description', ST_MakePoint(-97.523453, 30.440065), ST_AsGeoJSON(ST_MakePoint(-97.523453, 30.440065))),
(1913, 'St Andrews low area', 'address', 'description', ST_MakePoint(-97.668571, 30.714464), ST_AsGeoJSON(ST_MakePoint(-97.668571, 30.714464))),
(1914, 'Ralph Ritchie Rd @ Low Water Xing', 'address', 'description', ST_MakePoint(-97.530006, 30.361917), ST_AsGeoJSON(ST_MakePoint(-97.530006, 30.361917))),
(1916, 'Guadalupe Street', 'address', 'description', ST_MakePoint(-97.673073, 29.872948), ST_AsGeoJSON(ST_MakePoint(-97.673073, 29.872948))),
(1917, 'Navarro Creek Rd @ SH 71', 'address', 'description', ST_MakePoint(-97.582870, 30.189955), ST_AsGeoJSON(ST_MakePoint(-97.582870, 30.189955))),
(1918, 'LUCIANO FLORES BLVD @ CAPE RD  ', 'address', 'description', ST_MakePoint(-97.935715, 29.868261), ST_AsGeoJSON(ST_MakePoint(-97.935715, 29.868261))),
(1919, 'Pecos Street', 'address', 'description', ST_MakePoint(-97.679153, 29.891338), ST_AsGeoJSON(ST_MakePoint(-97.679153, 29.891338))),
(1920, '2200BLK RIVER', 'address', 'description', ST_MakePoint(-97.903717, 29.888996), ST_AsGeoJSON(ST_MakePoint(-97.903717, 29.888996))),
(1921, 'COG - Industrial Ave', 'address', 'description', ST_MakePoint(-97.677773, 30.621180), ST_AsGeoJSON(ST_MakePoint(-97.677773, 30.621180))),
(1922, 'State Park Road at Main St', 'address', 'description', ST_MakePoint(-97.669800, 29.872213), ST_AsGeoJSON(ST_MakePoint(-97.669800, 29.872213))),
(1923, 'Sandholler Road (between Taylorsville Rd and Sandy Creek Rd', 'address', 'description', ST_MakePoint(-97.558258, 29.929747), ST_AsGeoJSON(ST_MakePoint(-97.558258, 29.929747))),
(1926, 'CR 358', 'address', 'description', ST_MakePoint(-97.347923, 30.743710), ST_AsGeoJSON(ST_MakePoint(-97.347923, 30.743710))),
(1927, 'CR 490', 'address', 'description', ST_MakePoint(-97.274529, 30.430979), ST_AsGeoJSON(ST_MakePoint(-97.274529, 30.430979))),
(1928, 'CR 418', 'address', 'description', ST_MakePoint(-97.270882, 30.742809), ST_AsGeoJSON(ST_MakePoint(-97.270882, 30.742809))),
(1929, 'FM 967 @ BRANGUS RD', 'address', 'description', ST_MakePoint(-97.983673, 30.117086), ST_AsGeoJSON(ST_MakePoint(-97.983673, 30.117086))),
(1930, 'Bois D&#039;arc Rd @ Kimbro West Rd', 'address', 'description', ST_MakePoint(-97.487968, 30.380096), ST_AsGeoJSON(ST_MakePoint(-97.487968, 30.380096))),
(1931, '200 Blk The Forest Rd', 'address', 'description', ST_MakePoint(-97.568375, 30.036097), ST_AsGeoJSON(ST_MakePoint(-97.568375, 30.036097))),
(1932, 'CR 340', 'address', 'description', ST_MakePoint(-97.478989, 30.689791), ST_AsGeoJSON(ST_MakePoint(-97.478989, 30.689791))),
(1933, 'CR 469', 'address', 'description', ST_MakePoint(-97.312004, 30.470070), ST_AsGeoJSON(ST_MakePoint(-97.312004, 30.470070))),
(1934, 'CR 472', 'address', 'description', ST_MakePoint(-97.261452, 30.487789), ST_AsGeoJSON(ST_MakePoint(-97.261452, 30.487789))),
(1935, 'Old Bastrop Hwy @ Capistrano Dr', 'address', 'description', ST_MakePoint(-97.936638, 29.831541), ST_AsGeoJSON(ST_MakePoint(-97.936638, 29.831541))),
(1938, 'CR 313 @ Cross Creek', 'address', 'description', ST_MakePoint(-97.153099, 30.458855), ST_AsGeoJSON(ST_MakePoint(-97.153099, 30.458855))),
(1939, 'Dixieland RV Park ', 'address', 'description', ST_MakePoint(-96.683205, 30.144930), ST_AsGeoJSON(ST_MakePoint(-96.683205, 30.144930))),
(1940, 'Carmine Cemetery Rd', 'address', 'description', ST_MakePoint(-96.685997, 30.146284), ST_AsGeoJSON(ST_MakePoint(-96.685997, 30.146284))),
(1941, '9400-blk FM 1625 Rd', 'address', 'description', ST_MakePoint(-97.712379, 30.125433), ST_AsGeoJSON(ST_MakePoint(-97.712379, 30.125433))),
(1942, '200 Block FM 2239', 'address', 'description', ST_MakePoint(-97.067429, 30.137945), ST_AsGeoJSON(ST_MakePoint(-97.067429, 30.137945))),
(1943, 'FM 1625 @ Maha Creek', 'address', 'description', ST_MakePoint(-97.735039, 30.085224), ST_AsGeoJSON(ST_MakePoint(-97.735039, 30.085224))),
(1944, 'US 183 @ South Dry Creek', 'address', 'description', ST_MakePoint(-97.695877, 30.131126), ST_AsGeoJSON(ST_MakePoint(-97.695877, 30.131126))),
(1945, 'FM1854 at Williamson Rd', 'address', 'description', ST_MakePoint(-97.657799, 30.016268), ST_AsGeoJSON(ST_MakePoint(-97.657799, 30.016268))),
(1946, 'FM1854 at Hwy 21', 'address', 'description', ST_MakePoint(-97.674385, 30.030464), ST_AsGeoJSON(ST_MakePoint(-97.674385, 30.030464))),
(1947, '774 Old Sayers', 'address', 'description', ST_MakePoint(-97.367760, 30.285519), ST_AsGeoJSON(ST_MakePoint(-97.367760, 30.285519))),
(1948, 'N Old Stagecoach Rd- S of Rebel Rd', 'address', 'description', ST_MakePoint(-97.892090, 30.011984), ST_AsGeoJSON(ST_MakePoint(-97.892090, 30.011984))),
(1949, ' Elroy Rd @ Mcangus ', 'address', 'description', ST_MakePoint(-97.659248, 30.167299), ST_AsGeoJSON(ST_MakePoint(-97.659248, 30.167299))),
(1950, 'Pearce Ln/Kellam Rd', 'address', 'description', ST_MakePoint(-97.611130, 30.163700), ST_AsGeoJSON(ST_MakePoint(-97.611130, 30.163700))),
(1951, '8000-Blk Elroy Rd', 'address', 'description', ST_MakePoint(-97.616264, 30.141956), ST_AsGeoJSON(ST_MakePoint(-97.616264, 30.141956))),
(1952, 'Von Quintus Rd/Maha Loop Rd', 'address', 'description', ST_MakePoint(-97.684654, 30.097244), ST_AsGeoJSON(ST_MakePoint(-97.684654, 30.097244))),
(1953, 'Tom Sassman Rd/ US 183', 'address', 'description', ST_MakePoint(-97.693810, 30.088797), ST_AsGeoJSON(ST_MakePoint(-97.693810, 30.088797))),
(1954, 'Maha Rd/Schriber Rd', 'address', 'description', ST_MakePoint(-97.666214, 30.082067), ST_AsGeoJSON(ST_MakePoint(-97.666214, 30.082067))),
(1955, 'FM 153@ KARISCH RD ', 'address', 'description', ST_MakePoint(-97.071083, 30.028387), ST_AsGeoJSON(ST_MakePoint(-97.071083, 30.028387))),
(1957, 'Bois D&#039;Arc', 'address', 'description', ST_MakePoint(-97.677353, 29.886465), ST_AsGeoJSON(ST_MakePoint(-97.677353, 29.886465))),
(1958, 'Pancho/Blackjack', 'address', 'description', ST_MakePoint(-97.661598, 29.871990), ST_AsGeoJSON(ST_MakePoint(-97.661598, 29.871990))),
(1959, '1300 Park Road 1C', 'address', 'description', ST_MakePoint(-97.182175, 30.083752), ST_AsGeoJSON(ST_MakePoint(-97.182175, 30.083752))),
(1960, 'Track Road', 'address', 'description', ST_MakePoint(-97.524681, 29.928129), ST_AsGeoJSON(ST_MakePoint(-97.524681, 29.928129))),
(1961, 'HWY 21 BRIDGE N OF ROHDE RD', 'address', 'description', ST_MakePoint(-97.741821, 29.999559), ST_AsGeoJSON(ST_MakePoint(-97.741821, 29.999559))),
(1962, '12000 Old Lytton springs Road', 'address', 'description', ST_MakePoint(-97.660980, 29.946407), ST_AsGeoJSON(ST_MakePoint(-97.660980, 29.946407))),
(1965, 'Sh 71 @ Wolf Ln', 'address', 'description', ST_MakePoint(-97.541183, 30.182739), ST_AsGeoJSON(ST_MakePoint(-97.541183, 30.182739))),
(1966, 'Woodland Ct.', 'address', 'description', ST_MakePoint(-97.268494, 30.079109), ST_AsGeoJSON(ST_MakePoint(-97.268494, 30.079109))),
(1967, 'Rolling Ridge', 'address', 'description', ST_MakePoint(-97.699348, 29.941591), ST_AsGeoJSON(ST_MakePoint(-97.699348, 29.941591))),
(1968, '13700  Camino Real (FM21)', 'address', 'description', ST_MakePoint(-97.730713, 30.007318), ST_AsGeoJSON(ST_MakePoint(-97.730713, 30.007318))),
(1969, '11200 Maha Loop', 'address', 'description', ST_MakePoint(-97.661751, 30.086826), ST_AsGeoJSON(ST_MakePoint(-97.661751, 30.086826))),
(1970, 'Coulver RD @ FM 1625', 'address', 'description', ST_MakePoint(-97.711555, 30.114235), ST_AsGeoJSON(ST_MakePoint(-97.711555, 30.114235))),
(1971, 'Burklund Farms Rd @ Moore RD', 'address', 'description', ST_MakePoint(-97.649673, 30.113880), ST_AsGeoJSON(ST_MakePoint(-97.649673, 30.113880))),
(1973, 'Coulver Rd @ Coulver Cove Crt', 'address', 'description', ST_MakePoint(-97.727333, 30.117739), ST_AsGeoJSON(ST_MakePoint(-97.727333, 30.117739))),
(1974, '1060 FM 1441', 'address', 'description', ST_MakePoint(-97.245819, 30.168653), ST_AsGeoJSON(ST_MakePoint(-97.245819, 30.168653))),
(1976, 'Chalet Dr @ Swiss Dr', 'address', 'description', ST_MakePoint(-97.611244, 30.132038), ST_AsGeoJSON(ST_MakePoint(-97.611244, 30.132038))),
(1977, 'FM 713', 'address', 'description', ST_MakePoint(-97.574066, 29.856291), ST_AsGeoJSON(ST_MakePoint(-97.574066, 29.856291))),
(1978, 'CR 310 @ Pin Oak', 'address', 'description', ST_MakePoint(-97.138046, 30.379391), ST_AsGeoJSON(ST_MakePoint(-97.138046, 30.379391))),
(1979, 'CR 143 @ Tributary to West Yegua Creek', 'address', 'description', ST_MakePoint(-96.903221, 30.285662), ST_AsGeoJSON(ST_MakePoint(-96.903221, 30.285662))),
(1980, 'Dry Willow at Old Austin Trail', 'address', 'description', ST_MakePoint(-97.447853, 30.240887), ST_AsGeoJSON(ST_MakePoint(-97.447853, 30.240887))),
(1981, 'FM3158', 'address', 'description', ST_MakePoint(-97.559753, 29.809471), ST_AsGeoJSON(ST_MakePoint(-97.559753, 29.809471))),
(1983, 'Pine Shadows Rd', 'address', 'description', ST_MakePoint(-97.263367, 30.087967), ST_AsGeoJSON(ST_MakePoint(-97.263367, 30.087967))),
(1984, 'Tienert Rd', 'address', 'description', ST_MakePoint(-96.893364, 30.069202), ST_AsGeoJSON(ST_MakePoint(-96.893364, 30.069202))),
(1985, 'Race Track Road', 'address', 'description', ST_MakePoint(-96.881798, 30.009747), ST_AsGeoJSON(ST_MakePoint(-96.881798, 30.009747))),
(1986, 'Anchor Ranch Loop', 'address', 'description', ST_MakePoint(-97.182938, 29.822645), ST_AsGeoJSON(ST_MakePoint(-97.182938, 29.822645))),
(1987, 'Anchor Ranch Loop', 'address', 'description', ST_MakePoint(-97.169052, 29.765533), ST_AsGeoJSON(ST_MakePoint(-97.169052, 29.765533))),
(1988, 'Wallace Road', 'address', 'description', ST_MakePoint(-97.105148, 29.833212), ST_AsGeoJSON(ST_MakePoint(-97.105148, 29.833212))),
(1989, 'Boehnke Rd', 'address', 'description', ST_MakePoint(-97.082748, 29.860620), ST_AsGeoJSON(ST_MakePoint(-97.082748, 29.860620))),
(1990, '160 Lakeside Drive ', 'address', 'description', ST_MakePoint(-97.260963, 30.082396), ST_AsGeoJSON(ST_MakePoint(-97.260963, 30.082396))),
(1991, 'Cattlemens between Shorthorn and Herford', 'address', 'description', ST_MakePoint(-97.232414, 30.163534), ST_AsGeoJSON(ST_MakePoint(-97.232414, 30.163534))),
(1995, 'P1020 Aloha Ln', 'address', 'description', ST_MakePoint(-97.278473, 30.099625), ST_AsGeoJSON(ST_MakePoint(-97.278473, 30.099625))),
(1996, 'P1021 Kahalulu Dr', 'address', 'description', ST_MakePoint(-97.276222, 30.079685), ST_AsGeoJSON(ST_MakePoint(-97.276222, 30.079685))),
(1997, 'P1022 Upolu Ct', 'address', 'description', ST_MakePoint(-97.282806, 30.090881), ST_AsGeoJSON(ST_MakePoint(-97.282806, 30.090881))),
(1998, 'P1023 Koae Ct', 'address', 'description', ST_MakePoint(-97.292572, 30.083399), ST_AsGeoJSON(ST_MakePoint(-97.292572, 30.083399))),
(1999, 'P1024 Alele Dr', 'address', 'description', ST_MakePoint(-97.280731, 30.087898), ST_AsGeoJSON(ST_MakePoint(-97.280731, 30.087898))),
(2001, 'P1026 - Pahalawe Ln', 'address', 'description', ST_MakePoint(-97.281349, 30.088188), ST_AsGeoJSON(ST_MakePoint(-97.281349, 30.088188))),
(2002, 'P1026 East Keamuku Ct', 'address', 'description', ST_MakePoint(-97.284180, 30.092957), ST_AsGeoJSON(ST_MakePoint(-97.284180, 30.092957))),
(2003, 'P1027 Honopu Dr', 'address', 'description', ST_MakePoint(-97.279228, 30.095243), ST_AsGeoJSON(ST_MakePoint(-97.279228, 30.095243))),
(2004, 'Forest Ln', 'address', 'description', ST_MakePoint(-97.257881, 30.093979), ST_AsGeoJSON(ST_MakePoint(-97.257881, 30.093979))),
(2005, 'Pine Hill Loop', 'address', 'description', ST_MakePoint(-97.260101, 30.098480), ST_AsGeoJSON(ST_MakePoint(-97.260101, 30.098480))),
(2006, 'Lisa Ln', 'address', 'description', ST_MakePoint(-97.252975, 30.144388), ST_AsGeoJSON(ST_MakePoint(-97.252975, 30.144388))),
(2008, 'FM 1441 Betw Daisy Ln and Old Firetower TD', 'address', 'description', ST_MakePoint(-97.260147, 30.174446), ST_AsGeoJSON(ST_MakePoint(-97.260147, 30.174446))),
(2009, 'Park Road 1C Near Wilderness Ridge', 'address', 'description', ST_MakePoint(-97.211525, 30.094656), ST_AsGeoJSON(ST_MakePoint(-97.211525, 30.094656))),
(2011, 'Riverside just East of Keanehalululu Ln', 'address', 'description', ST_MakePoint(-97.327705, 30.082581), ST_AsGeoJSON(ST_MakePoint(-97.327705, 30.082581))),
(2012, 'Kaanapali at Tall Forest', 'address', 'description', ST_MakePoint(-97.270645, 30.086445), ST_AsGeoJSON(ST_MakePoint(-97.270645, 30.086445))),
(2013, '300 Blk Sayers Rd', 'address', 'description', ST_MakePoint(-97.336166, 30.156507), ST_AsGeoJSON(ST_MakePoint(-97.336166, 30.156507))),
(2014, '650 Sayers Road', 'address', 'description', ST_MakePoint(-97.348183, 30.168179), ST_AsGeoJSON(ST_MakePoint(-97.348183, 30.168179))),
(2017, 'Goforth Rd @ Bebee Rd', 'address', 'description', ST_MakePoint(-97.827393, 30.005320), ST_AsGeoJSON(ST_MakePoint(-97.827393, 30.005320))),
(2018, 'FM 1826 North of Kemp Hills Dr ', 'address', 'description', ST_MakePoint(-97.941093, 30.168150), ST_AsGeoJSON(ST_MakePoint(-97.941093, 30.168150))),
(2019, 'Riverside West of Kaala', 'address', 'description', ST_MakePoint(-97.312096, 30.076395), ST_AsGeoJSON(ST_MakePoint(-97.312096, 30.076395))),
(2021, 'CR 493 / CR 428', 'address', 'description', ST_MakePoint(-97.267235, 30.706215), ST_AsGeoJSON(ST_MakePoint(-97.267235, 30.706215))),
(2022, 'Pin Oak Branch Rd', 'address', 'description', ST_MakePoint(-96.922478, 30.069672), ST_AsGeoJSON(ST_MakePoint(-96.922478, 30.069672))),
(2023, 'Old Fentress (Clear Fork)', 'address', 'description', ST_MakePoint(-97.708794, 29.857735), ST_AsGeoJSON(ST_MakePoint(-97.708794, 29.857735))),
(2024, 'CR 243', 'address', 'description', ST_MakePoint(-97.806656, 30.793819), ST_AsGeoJSON(ST_MakePoint(-97.806656, 30.793819))),
(2026, 'N OLD BASTROP HWY @ BLIND SALAMANDER TRL', 'address', 'description', ST_MakePoint(-97.897003, 29.857264), ST_AsGeoJSON(ST_MakePoint(-97.897003, 29.857264))),
(2027, 'CR 318', 'address', 'description', ST_MakePoint(-97.544739, 30.769127), ST_AsGeoJSON(ST_MakePoint(-97.544739, 30.769127))),
(2028, 'CR 331', 'address', 'description', ST_MakePoint(-97.548813, 30.749641), ST_AsGeoJSON(ST_MakePoint(-97.548813, 30.749641))),
(2029, 'CR 348', 'address', 'description', ST_MakePoint(-97.388809, 30.695335), ST_AsGeoJSON(ST_MakePoint(-97.388809, 30.695335))),
(2030, 'CR 367', 'address', 'description', ST_MakePoint(-97.445572, 30.597361), ST_AsGeoJSON(ST_MakePoint(-97.445572, 30.597361))),
(2031, 'CR 347', 'address', 'description', ST_MakePoint(-97.428665, 30.651731), ST_AsGeoJSON(ST_MakePoint(-97.428665, 30.651731))),
(2032, 'CR 208', 'address', 'description', ST_MakePoint(-97.055229, 30.815859), ST_AsGeoJSON(ST_MakePoint(-97.055229, 30.815859))),
(2033, 'CR 258', 'address', 'description', ST_MakePoint(-96.797569, 30.941959), ST_AsGeoJSON(ST_MakePoint(-96.797569, 30.941959))),
(2034, 'CR 340', 'address', 'description', ST_MakePoint(-96.843758, 30.687832), ST_AsGeoJSON(ST_MakePoint(-96.843758, 30.687832))),
(2035, 'CR 333', 'address', 'description', ST_MakePoint(-96.707848, 30.605671), ST_AsGeoJSON(ST_MakePoint(-96.707848, 30.605671))),
(2036, 'CR 350', 'address', 'description', ST_MakePoint(-96.734222, 30.787683), ST_AsGeoJSON(ST_MakePoint(-96.734222, 30.787683))),
(2037, 'CR 351', 'address', 'description', ST_MakePoint(-96.646523, 30.763140), ST_AsGeoJSON(ST_MakePoint(-96.646523, 30.763140))),
(2038, '260 Block of Joe Cole Ln', 'address', 'description', ST_MakePoint(-97.145363, 29.964888), ST_AsGeoJSON(ST_MakePoint(-97.145363, 29.964888))),
(2039, 'FM 2001 @ GRAEF RD', 'address', 'description', ST_MakePoint(-97.760010, 30.026011), ST_AsGeoJSON(ST_MakePoint(-97.760010, 30.026011))),
(2040, 'FM 713/FM 3158', 'address', 'description', ST_MakePoint(-97.519432, 29.852539), ST_AsGeoJSON(ST_MakePoint(-97.519432, 29.852539))),
(2041, 'HWY 304/Oriole Loop', 'address', 'description', ST_MakePoint(-97.402443, 29.800175), ST_AsGeoJSON(ST_MakePoint(-97.402443, 29.800175))),
(2043, 'FM 713/HWY 304', 'address', 'description', ST_MakePoint(-97.395493, 29.827599), ST_AsGeoJSON(ST_MakePoint(-97.395493, 29.827599))),
(2044, 'WINDY HILL RD @ MATHIAS LN', 'address', 'description', ST_MakePoint(-97.805237, 30.036617), ST_AsGeoJSON(ST_MakePoint(-97.805237, 30.036617))),
(2045, 'FM 1826 @ Slaughter', 'address', 'description', ST_MakePoint(-97.894333, 30.218309), ST_AsGeoJSON(ST_MakePoint(-97.894333, 30.218309))),
(2046, 'Payne Lane/FM 2720', 'address', 'description', ST_MakePoint(-97.727036, 29.899137), ST_AsGeoJSON(ST_MakePoint(-97.727036, 29.899137))),
(2047, '21200-blk Windmill Ranch Ave @ Steeds Xing', 'address', 'description', ST_MakePoint(-97.571884, 30.490625), ST_AsGeoJSON(ST_MakePoint(-97.571884, 30.490625))),
(2048, 'Chalk Road/Sandy Fork', 'address', 'description', ST_MakePoint(-97.422211, 29.761007), ST_AsGeoJSON(ST_MakePoint(-97.422211, 29.761007))),
(2049, 'William Pettus Rd', 'address', 'description', ST_MakePoint(-97.836472, 29.889111), ST_AsGeoJSON(ST_MakePoint(-97.836472, 29.889111))),
(2050, 'William Pettus', 'address', 'description', ST_MakePoint(-97.857544, 29.910315), ST_AsGeoJSON(ST_MakePoint(-97.857544, 29.910315))),
(2053, 'Star Road', 'address', 'description', ST_MakePoint(-97.600380, 29.864157), ST_AsGeoJSON(ST_MakePoint(-97.600380, 29.864157))),
(2055, 'Tenney Creek Road', 'address', 'description', ST_MakePoint(-97.561928, 29.800514), ST_AsGeoJSON(ST_MakePoint(-97.561928, 29.800514))),
(2056, 'Sparrow Trail', 'address', 'description', ST_MakePoint(-97.561707, 29.795643), ST_AsGeoJSON(ST_MakePoint(-97.561707, 29.795643))),
(2057, '17300-blk Carlson Ln', 'address', 'description', ST_MakePoint(-97.419281, 30.383812), ST_AsGeoJSON(ST_MakePoint(-97.419281, 30.383812))),
(2061, '7600blk Colton-Bluff Springs Rd', 'address', 'description', ST_MakePoint(-97.720787, 30.155169), ST_AsGeoJSON(ST_MakePoint(-97.720787, 30.155169))),
(2062, 'FM 150 E @ DRUE DR', 'address', 'description', ST_MakePoint(-97.837845, 29.953373), ST_AsGeoJSON(ST_MakePoint(-97.837845, 29.953373))),
(2064, 'Bell Springs Rd @ Russell Ln ', 'address', 'description', ST_MakePoint(-98.118690, 30.208138), ST_AsGeoJSON(ST_MakePoint(-98.118690, 30.208138))),
(2066, '3800 BLK DACY LN', 'address', 'description', ST_MakePoint(-97.830933, 30.024515), ST_AsGeoJSON(ST_MakePoint(-97.830933, 30.024515))),
(2068, 'Colton Bluff Springs Rd at S-curves', 'address', 'description', ST_MakePoint(-97.713470, 30.152683), ST_AsGeoJSON(ST_MakePoint(-97.713470, 30.152683))),
(2069, 'Yaupon Dr/Spicewood Springs Rd', 'address', 'description', ST_MakePoint(-97.778900, 30.397100), ST_AsGeoJSON(ST_MakePoint(-97.778900, 30.397100))),
(2070, 'Bee Creek Rd @ Ridgepole ', 'address', 'description', ST_MakePoint(-98.040520, 30.356960), ST_AsGeoJSON(ST_MakePoint(-98.040520, 30.356960))),
(2071, 'Briarcliff Dr @ Cargill Dr ', 'address', 'description', ST_MakePoint(-98.054512, 30.404793), ST_AsGeoJSON(ST_MakePoint(-98.054512, 30.404793))),
(2072, '11500-blk W Sh 71', 'address', 'description', ST_MakePoint(-97.921837, 30.293596), ST_AsGeoJSON(ST_MakePoint(-97.921837, 30.293596))),
(2073, 'RR 150 W @ ONION CREEK', 'address', 'description', ST_MakePoint(-98.048790, 30.143570), ST_AsGeoJSON(ST_MakePoint(-98.048790, 30.143570))),
(2074, '200 Blk Jacobson Rd', 'address', 'description', ST_MakePoint(-97.584259, 30.111088), ST_AsGeoJSON(ST_MakePoint(-97.584259, 30.111088))),
(2077, '11500-blk FM 1826', 'address', 'description', ST_MakePoint(-97.922485, 30.196056), ST_AsGeoJSON(ST_MakePoint(-97.922485, 30.196056))),
(2078, '3400-blk Fritz Hughes Park Rd', 'address', 'description', ST_MakePoint(-97.912163, 30.382471), ST_AsGeoJSON(ST_MakePoint(-97.912163, 30.382471))),
(2079, '12300-BLK HEWITT LN', 'address', 'description', ST_MakePoint(-97.846893, 30.143377), ST_AsGeoJSON(ST_MakePoint(-97.846893, 30.143377))),
(2081, '4700-BLK WOLF LN', 'address', 'description', ST_MakePoint(-97.541977, 30.181479), ST_AsGeoJSON(ST_MakePoint(-97.541977, 30.181479))),
(2082, '15600-BLK FM 969 RD', 'address', 'description', ST_MakePoint(-97.571014, 30.249035), ST_AsGeoJSON(ST_MakePoint(-97.571014, 30.249035))),
(2083, '9700-BLK FM 969 RD', 'address', 'description', ST_MakePoint(-97.625854, 30.267378), ST_AsGeoJSON(ST_MakePoint(-97.625854, 30.267378))),
(2086, '13340-blk Old Kimbro', 'address', 'description', ST_MakePoint(-97.498825, 30.353769), ST_AsGeoJSON(ST_MakePoint(-97.498825, 30.353769))),
(2088, 'CR 114 @ West Yegua Creek', 'address', 'description', ST_MakePoint(-96.906265, 30.292053), ST_AsGeoJSON(ST_MakePoint(-96.906265, 30.292053))),
(2089, 'CR 117 @ Middle Yegua Creek', 'address', 'description', ST_MakePoint(-96.858047, 30.326771), ST_AsGeoJSON(ST_MakePoint(-96.858047, 30.326771))),
(2090, 'Flite Acres Rd @ Spoke Ln', 'address', 'description', ST_MakePoint(-98.076477, 29.986467), ST_AsGeoJSON(ST_MakePoint(-98.076477, 29.986467))),
(2091, '290 @ County Line Rd', 'address', 'description', ST_MakePoint(-97.411942, 30.352276), ST_AsGeoJSON(ST_MakePoint(-97.411942, 30.352276))),
(2092, 'East Austin @ RR Tracks', 'address', 'description', ST_MakePoint(-97.368919, 30.346672), ST_AsGeoJSON(ST_MakePoint(-97.368919, 30.346672))),
(2093, 'River Rd @ Leveritts Loop ', 'address', 'description', ST_MakePoint(-98.104233, 29.991392), ST_AsGeoJSON(ST_MakePoint(-98.104233, 29.991392))),
(2094, 'Borchert Drive near SH130', 'address', 'description', ST_MakePoint(-97.711166, 29.879524), ST_AsGeoJSON(ST_MakePoint(-97.711166, 29.879524))),
(2095, 'Clearfork St (SH130)', 'address', 'description', ST_MakePoint(-97.699493, 29.867617), ST_AsGeoJSON(ST_MakePoint(-97.699493, 29.867617))),
(2096, 'Sandy Pine Road', 'address', 'description', ST_MakePoint(-97.567635, 29.666265), ST_AsGeoJSON(ST_MakePoint(-97.567635, 29.666265))),
(2101, 'Mathias ln @ Running Bull LN ', 'address', 'description', ST_MakePoint(-97.791176, 30.010584), ST_AsGeoJSON(ST_MakePoint(-97.791176, 30.010584))),
(2102, 'CR 125 @ Cedar Creek', 'address', 'description', ST_MakePoint(-96.670250, 30.270781), ST_AsGeoJSON(ST_MakePoint(-96.670250, 30.270781))),
(2103, 'William Pettus/Low water', 'address', 'description', ST_MakePoint(-97.843056, 29.895781), ST_AsGeoJSON(ST_MakePoint(-97.843056, 29.895781))),
(2106, 'Old Bastrop Hwy Bridge ', 'address', 'description', ST_MakePoint(-97.897598, 29.857563), ST_AsGeoJSON(ST_MakePoint(-97.897598, 29.857563))),
(2107, 'Main St @ Campo Del Sol Parkway ', 'address', 'description', ST_MakePoint(-97.806145, 30.088556), ST_AsGeoJSON(ST_MakePoint(-97.806145, 30.088556))),
(2108, 'TX1032 - Park Rd 1C @ Harmon Rd', 'address', 'description', ST_MakePoint(-97.249626, 30.109261), ST_AsGeoJSON(ST_MakePoint(-97.249626, 30.109261))),
(2109, 'TX1033 Park Rd 1A @ Park Rd 1C', 'address', 'description', ST_MakePoint(-97.267860, 30.112900), ST_AsGeoJSON(ST_MakePoint(-97.267860, 30.112900))),
(2111, 'TX1034 Park Rd 1C @ Park Rd 1E', 'address', 'description', ST_MakePoint(-97.162743, 30.049189), ST_AsGeoJSON(ST_MakePoint(-97.162743, 30.049189))),
(2112, 'TX1035 Park Rd 1A @ refectory', 'address', 'description', ST_MakePoint(-97.283119, 30.109131), ST_AsGeoJSON(ST_MakePoint(-97.283119, 30.109131))),
(2113, 'Clear Creek at Roznov Rd', 'address', 'description', ST_MakePoint(-96.741402, 29.967999), ST_AsGeoJSON(ST_MakePoint(-96.741402, 29.967999))),
(2114, 'P3070 - Old San Antonio Rd @ Tributary in the 600 Blk', 'address', 'description', ST_MakePoint(-97.584282, 30.027033), ST_AsGeoJSON(ST_MakePoint(-97.584282, 30.027033))),
(2116, 'Eanes Creek @ Camp Craft', 'address', 'description', ST_MakePoint(-97.811928, 30.280056), ST_AsGeoJSON(ST_MakePoint(-97.811928, 30.280056))),
(2117, 'P2063 - Mark Young Rd @ Tributary', 'address', 'description', ST_MakePoint(-97.159309, 29.959169), ST_AsGeoJSON(ST_MakePoint(-97.159309, 29.959169))),
(2118, 'P2064 - Mark Young Rd @ Tributary', 'address', 'description', ST_MakePoint(-97.159142, 29.952700), ST_AsGeoJSON(ST_MakePoint(-97.159142, 29.952700))),
(2119, 'P2065 - Mark Young Rd', 'address', 'description', ST_MakePoint(-97.159027, 29.948175), ST_AsGeoJSON(ST_MakePoint(-97.159027, 29.948175))),
(2120, 'P3071 - 3800 FM 535', 'address', 'description', ST_MakePoint(-97.422379, 29.984707), ST_AsGeoJSON(ST_MakePoint(-97.422379, 29.984707))),
(2121, 'Krischke Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.952065, 29.728769), ST_AsGeoJSON(ST_MakePoint(-96.952065, 29.728769))),
(2122, 'Krischke Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.951340, 29.723021), ST_AsGeoJSON(ST_MakePoint(-96.951340, 29.723021))),
(2123, 'COS1006 - SE Martin Luther King Dr', 'address', 'description', ST_MakePoint(-97.152786, 30.000147), ST_AsGeoJSON(ST_MakePoint(-97.152786, 30.000147))),
(2124, 'P2068 - Crafts Prairie Rd @ Mesa Pinto Dr', 'address', 'description', ST_MakePoint(-97.250786, 30.052687), ST_AsGeoJSON(ST_MakePoint(-97.250786, 30.052687))),
(2125, 'P3072 - 300 FM 672', 'address', 'description', ST_MakePoint(-97.527908, 29.989796), ST_AsGeoJSON(ST_MakePoint(-97.527908, 29.989796))),
(2126, 'P3073 - 500 FM 672', 'address', 'description', ST_MakePoint(-97.539192, 29.976933), ST_AsGeoJSON(ST_MakePoint(-97.539192, 29.976933))),
(2127, 'Seawillow/FM1322', 'address', 'description', ST_MakePoint(-97.658287, 29.856279), ST_AsGeoJSON(ST_MakePoint(-97.658287, 29.856279))),
(2128, 'Highland Ranch/Seminole', 'address', 'description', ST_MakePoint(-97.603363, 29.982824), ST_AsGeoJSON(ST_MakePoint(-97.603363, 29.982824))),
(2129, 'FM 1854/Highland Ranch Way', 'address', 'description', ST_MakePoint(-97.594673, 29.988958), ST_AsGeoJSON(ST_MakePoint(-97.594673, 29.988958))),
(2130, 'Read St (between Moore & Academy)', 'address', 'description', ST_MakePoint(-97.951332, 29.888699), ST_AsGeoJSON(ST_MakePoint(-97.951332, 29.888699))),
(2131, 'Barth Rd/FM 672', 'address', 'description', ST_MakePoint(-97.595444, 29.927589), ST_AsGeoJSON(ST_MakePoint(-97.595444, 29.927589))),
(2132, '3810 Barth Rd', 'address', 'description', ST_MakePoint(-97.623451, 29.951242), ST_AsGeoJSON(ST_MakePoint(-97.623451, 29.951242))),
(2133, '4623 Barth Rd', 'address', 'description', ST_MakePoint(-97.632721, 29.959068), ST_AsGeoJSON(ST_MakePoint(-97.632721, 29.959068))),
(2134, '2920 Barth Rd', 'address', 'description', ST_MakePoint(-97.612572, 29.942057), ST_AsGeoJSON(ST_MakePoint(-97.612572, 29.942057))),
(2135, 'Birch St/Pecos St', 'address', 'description', ST_MakePoint(-97.679192, 29.891497), ST_AsGeoJSON(ST_MakePoint(-97.679192, 29.891497))),
(2136, 'Crooked Rd/FM 1854', 'address', 'description', ST_MakePoint(-97.605148, 29.997915), ST_AsGeoJSON(ST_MakePoint(-97.605148, 29.997915))),
(2137, 'Birch St/FM 1984', 'address', 'description', ST_MakePoint(-97.847015, 29.879375), ST_AsGeoJSON(ST_MakePoint(-97.847015, 29.879375))),
(2138, 'Birch St/Mill Rd', 'address', 'description', ST_MakePoint(-97.849808, 29.879452), ST_AsGeoJSON(ST_MakePoint(-97.849808, 29.879452))),
(2139, 'Main St @ Mesquite St, Fayette County', 'address', 'description', ST_MakePoint(-97.100632, 29.687887), ST_AsGeoJSON(ST_MakePoint(-97.100632, 29.687887))),
(2140, 'Carter Road', 'address', 'description', ST_MakePoint(-97.559654, 29.972546), ST_AsGeoJSON(ST_MakePoint(-97.559654, 29.972546))),
(2141, 'P4045 - 2500 FM 1704 south of Woody Ln', 'address', 'description', ST_MakePoint(-97.422241, 30.247625), ST_AsGeoJSON(ST_MakePoint(-97.422241, 30.247625))),
(2142, 'Political Rd/HWY 80', 'address', 'description', ST_MakePoint(-97.781769, 29.770611), ST_AsGeoJSON(ST_MakePoint(-97.781769, 29.770611))),
(2143, 'St Johns Road', 'address', 'description', ST_MakePoint(-97.566338, 29.975542), ST_AsGeoJSON(ST_MakePoint(-97.566338, 29.975542))),
(2144, 'Holz Rd - Dead End Section', 'address', 'description', ST_MakePoint(-97.726990, 29.965618), ST_AsGeoJSON(ST_MakePoint(-97.726990, 29.965618))),
(2145, 'Sandholler Road ', 'address', 'description', ST_MakePoint(-97.527969, 29.941694), ST_AsGeoJSON(ST_MakePoint(-97.527969, 29.941694))),
(2146, 'Homann Road', 'address', 'description', ST_MakePoint(-97.665466, 29.986946), ST_AsGeoJSON(ST_MakePoint(-97.665466, 29.986946))),
(2147, 'Homann Road', 'address', 'description', ST_MakePoint(-97.643227, 30.007574), ST_AsGeoJSON(ST_MakePoint(-97.643227, 30.007574))),
(2148, '800 Blk Chamberlin Rd', 'address', 'description', ST_MakePoint(-97.545647, 29.962690), ST_AsGeoJSON(ST_MakePoint(-97.545647, 29.962690))),
(2149, 'Fox Lane', 'address', 'description', ST_MakePoint(-97.571159, 29.855801), ST_AsGeoJSON(ST_MakePoint(-97.571159, 29.855801))),
(2150, 'Long Rd/Spoke Hollow Rd', 'address', 'description', ST_MakePoint(-97.749535, 29.822056), ST_AsGeoJSON(ST_MakePoint(-97.749535, 29.822056))),
(2151, 'Long Rd/Black Ankle', 'address', 'description', ST_MakePoint(-97.731094, 29.835110), ST_AsGeoJSON(ST_MakePoint(-97.731094, 29.835110))),
(2152, 'Lake Road/Fox Lane', 'address', 'description', ST_MakePoint(-97.567726, 29.830133), ST_AsGeoJSON(ST_MakePoint(-97.567726, 29.830133))),
(2153, 'Plant Road at Bugtussle', 'address', 'description', ST_MakePoint(-97.707298, 29.748299), ST_AsGeoJSON(ST_MakePoint(-97.707298, 29.748299))),
(2154, 'P2069 - Powell Rd @ Tribuary West of Kellar Rd', 'address', 'description', ST_MakePoint(-97.191025, 30.060041), ST_AsGeoJSON(ST_MakePoint(-97.191025, 30.060041))),
(2155, 'FM 2001 at Countyview', 'address', 'description', ST_MakePoint(-97.725494, 29.910358), ST_AsGeoJSON(ST_MakePoint(-97.725494, 29.910358))),
(2156, 'Wells Rd - All of Roadway', 'address', 'description', ST_MakePoint(-97.567871, 29.833914), ST_AsGeoJSON(ST_MakePoint(-97.567871, 29.833914))),
(2157, 'Taylorsville Rd at Turnback Trl', 'address', 'description', ST_MakePoint(-97.524178, 29.908163), ST_AsGeoJSON(ST_MakePoint(-97.524178, 29.908163))),
(2158, 'Wells Rd @ YOUNG LANE', 'address', 'description', ST_MakePoint(-97.576370, 29.823265), ST_AsGeoJSON(ST_MakePoint(-97.576370, 29.823265))),
(2159, '2300 Westwood Rd', 'address', 'description', ST_MakePoint(-97.711815, 29.839497), ST_AsGeoJSON(ST_MakePoint(-97.711815, 29.839497))),
(2160, '1300 Westwood Rd', 'address', 'description', ST_MakePoint(-97.709343, 29.835905), ST_AsGeoJSON(ST_MakePoint(-97.709343, 29.835905))),
(2161, 'P2074 - Big Bow (spillway) @ Indian Lake', 'address', 'description', ST_MakePoint(-97.086548, 30.044922), ST_AsGeoJSON(ST_MakePoint(-97.086548, 30.044922))),
(2162, 'P2075 - Circle Rd @ Pin Oak Creek', 'address', 'description', ST_MakePoint(-97.082230, 30.071442), ST_AsGeoJSON(ST_MakePoint(-97.082230, 30.071442))),
(2163, 'Old Colony Line Rd/Tumbleweed Trail', 'address', 'description', ST_MakePoint(-97.576111, 29.910875), ST_AsGeoJSON(ST_MakePoint(-97.576111, 29.910875))),
(2164, 'Black Ankle/Borchert Loop', 'address', 'description', ST_MakePoint(-97.737404, 29.866226), ST_AsGeoJSON(ST_MakePoint(-97.737404, 29.866226))),
(2165, 'Black Ankle/Dickerson', 'address', 'description', ST_MakePoint(-97.748184, 29.852432), ST_AsGeoJSON(ST_MakePoint(-97.748184, 29.852432))),
(2166, 'Stockade Ranch Rd', 'address', 'description', ST_MakePoint(-97.114967, 30.217712), ST_AsGeoJSON(ST_MakePoint(-97.114967, 30.217712))),
(2167, 'Sandy Fork Rd/FM 304', 'address', 'description', ST_MakePoint(-97.409401, 29.759251), ST_AsGeoJSON(ST_MakePoint(-97.409401, 29.759251))),
(2168, 'Bugtussle at 671', 'address', 'description', ST_MakePoint(-97.705688, 29.747042), ST_AsGeoJSON(ST_MakePoint(-97.705688, 29.747042))),
(2169, 'Bugtussle at Acorn Rd', 'address', 'description', ST_MakePoint(-97.721375, 29.775755), ST_AsGeoJSON(ST_MakePoint(-97.721375, 29.775755))),
(2170, 'Sandy Fork Rd/Sandy Ranch Rd', 'address', 'description', ST_MakePoint(-97.454163, 29.788380), ST_AsGeoJSON(ST_MakePoint(-97.454163, 29.788380))),
(2171, 'Lehman Ln', 'address', 'description', ST_MakePoint(-97.415581, 30.012465), ST_AsGeoJSON(ST_MakePoint(-97.415581, 30.012465))),
(2172, 'Lower Red Rock Rd', 'address', 'description', ST_MakePoint(-97.406937, 30.007839), ST_AsGeoJSON(ST_MakePoint(-97.406937, 30.007839))),
(2173, '200blk of creek rd', 'address', 'description', ST_MakePoint(-98.094276, 30.190479), ST_AsGeoJSON(ST_MakePoint(-98.094276, 30.190479))),
(2174, '200 S Lampasas', 'address', 'description', ST_MakePoint(-97.552498, 30.340311), ST_AsGeoJSON(ST_MakePoint(-97.552498, 30.340311))),
(2175, 'Alex Ln, Fayette County', 'address', 'description', ST_MakePoint(-96.888374, 29.918310), ST_AsGeoJSON(ST_MakePoint(-96.888374, 29.918310))),
(2176, '16000-blk Wells School', 'address', 'description', ST_MakePoint(-97.441307, 30.386951), ST_AsGeoJSON(ST_MakePoint(-97.441307, 30.386951))),
(2178, 'Post Oak Trl', 'address', 'description', ST_MakePoint(-97.550423, 30.104044), ST_AsGeoJSON(ST_MakePoint(-97.550423, 30.104044))),
(2179, 'Turkey Ridge Rd', 'address', 'description', ST_MakePoint(-97.537231, 30.015539), ST_AsGeoJSON(ST_MakePoint(-97.537231, 30.015539))),
(2180, 'FM 812', 'address', 'description', ST_MakePoint(-97.597824, 30.093203), ST_AsGeoJSON(ST_MakePoint(-97.597824, 30.093203))),
(2181, 'RR 12 at Fulton Ranch Rd', 'address', 'description', ST_MakePoint(-98.009010, 29.908871), ST_AsGeoJSON(ST_MakePoint(-98.009010, 29.908871))),
(2182, 'Ponderosa Rd', 'address', 'description', ST_MakePoint(-97.231033, 30.070633), ST_AsGeoJSON(ST_MakePoint(-97.231033, 30.070633))),
(2183, 'Brody Ln', 'address', 'description', ST_MakePoint(-97.237640, 30.047083), ST_AsGeoJSON(ST_MakePoint(-97.237640, 30.047083))),
(2184, 'Arbuckle Rd', 'address', 'description', ST_MakePoint(-97.379517, 30.286285), ST_AsGeoJSON(ST_MakePoint(-97.379517, 30.286285))),
(2185, 'Whitehead St', 'address', 'description', ST_MakePoint(-97.148468, 30.002733), ST_AsGeoJSON(ST_MakePoint(-97.148468, 30.002733))),
(2186, 'FM 1291 @ Ledbetter, Fayette County', 'address', 'description', ST_MakePoint(-96.792427, 30.146120), ST_AsGeoJSON(ST_MakePoint(-96.792427, 30.146120))),
(2187, 'FM 1291 @ Greens Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.799583, 30.078794), ST_AsGeoJSON(ST_MakePoint(-96.799583, 30.078794))),
(2188, 'NE 1st St @ Marburger St', 'address', 'description', ST_MakePoint(-97.147995, 30.001461), ST_AsGeoJSON(ST_MakePoint(-97.147995, 30.001461))),
(2189, 'NE 6th St', 'address', 'description', ST_MakePoint(-97.147057, 30.006235), ST_AsGeoJSON(ST_MakePoint(-97.147057, 30.006235))),
(2190, 'Faulkner Rd', 'address', 'description', ST_MakePoint(-97.139160, 30.001434), ST_AsGeoJSON(ST_MakePoint(-97.139160, 30.001434))),
(2191, 'SH 71 @ St James Church Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.990501, 29.936951), ST_AsGeoJSON(ST_MakePoint(-96.990501, 29.936951))),
(2192, 'St Hwy 71', 'address', 'description', ST_MakePoint(-97.432930, 30.122240), ST_AsGeoJSON(ST_MakePoint(-97.432930, 30.122240))),
(2193, 'W Old Lockhart Rd @ Makinson Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.054359, 29.901875), ST_AsGeoJSON(ST_MakePoint(-97.054359, 29.901875))),
(2194, 'Sand Hiils Rd', 'address', 'description', ST_MakePoint(-97.433235, 29.951818), ST_AsGeoJSON(ST_MakePoint(-97.433235, 29.951818))),
(2195, 'Red Rock Ranch Rd', 'address', 'description', ST_MakePoint(-97.406647, 29.917456), ST_AsGeoJSON(ST_MakePoint(-97.406647, 29.917456))),
(2196, '5400-blk Williamson Rd', 'address', 'description', ST_MakePoint(-97.746819, 30.058571), ST_AsGeoJSON(ST_MakePoint(-97.746819, 30.058571))),
(2197, 'NE 8th St', 'address', 'description', ST_MakePoint(-97.151398, 30.010195), ST_AsGeoJSON(ST_MakePoint(-97.151398, 30.010195))),
(2198, 'FM 2104', 'address', 'description', ST_MakePoint(-97.101898, 30.061934), ST_AsGeoJSON(ST_MakePoint(-97.101898, 30.061934))),
(2199, 'Bateman Rd', 'address', 'description', ST_MakePoint(-97.458839, 29.934719), ST_AsGeoJSON(ST_MakePoint(-97.458839, 29.934719))),
(2200, '10450 State Park Rd', 'address', 'description', ST_MakePoint(-97.736984, 29.785631), ST_AsGeoJSON(ST_MakePoint(-97.736984, 29.785631))),
(2201, 'Jacobson Rd', 'address', 'description', ST_MakePoint(-97.598267, 30.123293), ST_AsGeoJSON(ST_MakePoint(-97.598267, 30.123293))),
(2202, 'Cardinal Dr', 'address', 'description', ST_MakePoint(-97.208893, 30.187729), ST_AsGeoJSON(ST_MakePoint(-97.208893, 30.187729))),
(2203, 'Pine St', 'address', 'description', ST_MakePoint(-97.309715, 30.109520), ST_AsGeoJSON(ST_MakePoint(-97.309715, 30.109520))),
(2204, 'Eiler @ Maha Loop Rd', 'address', 'description', ST_MakePoint(-97.655663, 30.091406), ST_AsGeoJSON(ST_MakePoint(-97.655663, 30.091406))),
(2205, 'Hill St aka Dorothy Nichols Ln', 'address', 'description', ST_MakePoint(-97.134712, 29.997864), ST_AsGeoJSON(ST_MakePoint(-97.134712, 29.997864))),
(2206, 'Lamaloa Ln', 'address', 'description', ST_MakePoint(-97.318756, 30.090956), ST_AsGeoJSON(ST_MakePoint(-97.318756, 30.090956))),
(2207, 'Cleveland St', 'address', 'description', ST_MakePoint(-97.162231, 30.008085), ST_AsGeoJSON(ST_MakePoint(-97.162231, 30.008085))),
(2208, 'NW 1st St', 'address', 'description', ST_MakePoint(-97.164680, 30.008680), ST_AsGeoJSON(ST_MakePoint(-97.164680, 30.008680))),
(2209, 'FM 969', 'address', 'description', ST_MakePoint(-97.434471, 30.200489), ST_AsGeoJSON(ST_MakePoint(-97.434471, 30.200489))),
(2210, 'St Hwy 21', 'address', 'description', ST_MakePoint(-97.170166, 30.182495), ST_AsGeoJSON(ST_MakePoint(-97.170166, 30.182495))),
(2211, 'FM 1704', 'address', 'description', ST_MakePoint(-97.428207, 30.238482), ST_AsGeoJSON(ST_MakePoint(-97.428207, 30.238482))),
(2212, 'S St Hwy 95', 'address', 'description', ST_MakePoint(-97.357910, 30.321922), ST_AsGeoJSON(ST_MakePoint(-97.357910, 30.321922))),
(2213, 'FM 535', 'address', 'description', ST_MakePoint(-97.321266, 29.938860), ST_AsGeoJSON(ST_MakePoint(-97.321266, 29.938860))),
(2214, 'Shiloh Rd', 'address', 'description', ST_MakePoint(-97.367714, 30.092615), ST_AsGeoJSON(ST_MakePoint(-97.367714, 30.092615))),
(2215, 'Lone Star Rd', 'address', 'description', ST_MakePoint(-97.379707, 30.045609), ST_AsGeoJSON(ST_MakePoint(-97.379707, 30.045609))),
(2216, 'McAllister Rd', 'address', 'description', ST_MakePoint(-97.262566, 30.076195), ST_AsGeoJSON(ST_MakePoint(-97.262566, 30.076195))),
(2217, 'St Hwy 71', 'address', 'description', ST_MakePoint(-97.188927, 30.049154), ST_AsGeoJSON(ST_MakePoint(-97.188927, 30.049154))),
(2218, 'FM 812', 'address', 'description', ST_MakePoint(-97.569672, 30.069399), ST_AsGeoJSON(ST_MakePoint(-97.569672, 30.069399))),
(2219, 'N Main St', 'address', 'description', ST_MakePoint(-97.320747, 30.131464), ST_AsGeoJSON(ST_MakePoint(-97.320747, 30.131464))),
(2220, 'Edgegrove Dr @ S Crest Dr', 'address', 'description', ST_MakePoint(-97.789154, 30.272312), ST_AsGeoJSON(ST_MakePoint(-97.789154, 30.272312))),
(2221, 'Sayers Rd', 'address', 'description', ST_MakePoint(-97.329903, 30.152042), ST_AsGeoJSON(ST_MakePoint(-97.329903, 30.152042))),
(2222, 'B J Mayes Rd', 'address', 'description', ST_MakePoint(-97.321091, 30.153620), ST_AsGeoJSON(ST_MakePoint(-97.321091, 30.153620))),
(2223, 'FM 20', 'address', 'description', ST_MakePoint(-97.373215, 30.109968), ST_AsGeoJSON(ST_MakePoint(-97.373215, 30.109968))),
(2224, 'FM 20', 'address', 'description', ST_MakePoint(-97.433250, 30.004057), ST_AsGeoJSON(ST_MakePoint(-97.433250, 30.004057))),
(2227, 'FM 20', 'address', 'description', ST_MakePoint(-97.426445, 30.028053), ST_AsGeoJSON(ST_MakePoint(-97.426445, 30.028053))),
(2228, 'Piney Creek @ Piney Creek Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.946190, 30.021112), ST_AsGeoJSON(ST_MakePoint(-96.946190, 30.021112))),
(2229, 'Weyand Rd @ Cummins Creek, Fayette County', 'address', 'description', ST_MakePoint(-96.719383, 30.068624), ST_AsGeoJSON(ST_MakePoint(-96.719383, 30.068624))),
(2230, 'Jenkins Rd', 'address', 'description', ST_MakePoint(-97.498566, 30.103542), ST_AsGeoJSON(ST_MakePoint(-97.498566, 30.103542))),
(2231, 'Bordovsky Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.937241, 29.902544), ST_AsGeoJSON(ST_MakePoint(-96.937241, 29.902544))),
(2232, 'Hokanson Rd @ Burklund Farms Rd', 'address', 'description', ST_MakePoint(-97.650467, 30.110670), ST_AsGeoJSON(ST_MakePoint(-97.650467, 30.110670))),
(2233, 'Gotier Trace Rd', 'address', 'description', ST_MakePoint(-97.195282, 30.110912), ST_AsGeoJSON(ST_MakePoint(-97.195282, 30.110912))),
(2234, 'LOWER RED ROCK BRIDGE AT SH 304', 'address', 'description', ST_MakePoint(-97.357605, 30.076603), ST_AsGeoJSON(ST_MakePoint(-97.357605, 30.076603))),
(2235, '462 KELLEY RD', 'address', 'description', ST_MakePoint(-97.235603, 30.150255), ST_AsGeoJSON(ST_MakePoint(-97.235603, 30.150255))),
(2236, 'JONES ST', 'address', 'description', ST_MakePoint(-97.160217, 29.996708), ST_AsGeoJSON(ST_MakePoint(-97.160217, 29.996708))),
(2237, 'PRIM RD', 'address', 'description', ST_MakePoint(-97.124237, 29.968996), ST_AsGeoJSON(ST_MakePoint(-97.124237, 29.968996))),
(2238, 'HILLCREST DR', 'address', 'description', ST_MakePoint(-97.252853, 30.137230), ST_AsGeoJSON(ST_MakePoint(-97.252853, 30.137230))),
(2239, 'FM 609 @ Buckners St, Fayette County', 'address', 'description', ST_MakePoint(-96.932999, 29.866117), ST_AsGeoJSON(ST_MakePoint(-96.932999, 29.866117))),
(2240, 'Holub Rd @ Company Field Rd, Fayette County', 'address', 'description', ST_MakePoint(-96.861534, 29.703508), ST_AsGeoJSON(ST_MakePoint(-96.861534, 29.703508))),
(2241, 'CARINDAL DR', 'address', 'description', ST_MakePoint(-97.218605, 30.178679), ST_AsGeoJSON(ST_MakePoint(-97.218605, 30.178679))),
(2242, 'RIVERWOOD DR', 'address', 'description', ST_MakePoint(-97.329819, 30.120583), ST_AsGeoJSON(ST_MakePoint(-97.329819, 30.120583))),
(2243, 'FM 20', 'address', 'description', ST_MakePoint(-97.423286, 30.035187), ST_AsGeoJSON(ST_MakePoint(-97.423286, 30.035187))),
(2244, 'CR 152 @ Lonnie Thomas', 'address', 'description', ST_MakePoint(-97.649734, 30.667786), ST_AsGeoJSON(ST_MakePoint(-97.649734, 30.667786))),
(2246, 'PARK ROAD 1C', 'address', 'description', ST_MakePoint(-97.192421, 30.089668), ST_AsGeoJSON(ST_MakePoint(-97.192421, 30.089668))),
(2248, 'FM 2237 @ Roy Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.154053, 29.835588), ST_AsGeoJSON(ST_MakePoint(-97.154053, 29.835588))),
(2249, 'NE 7TH ST', 'address', 'description', ST_MakePoint(-97.146088, 30.006868), ST_AsGeoJSON(ST_MakePoint(-97.146088, 30.006868))),
(2250, 'Freyburg Hall Rd near Bryant RD, Fayette County', 'address', 'description', ST_MakePoint(-96.974266, 29.729185), ST_AsGeoJSON(ST_MakePoint(-96.974266, 29.729185))),
(2251, 'Freyburg Hall Rd near FM 2238, Fayette County', 'address', 'description', ST_MakePoint(-96.992538, 29.734987), ST_AsGeoJSON(ST_MakePoint(-96.992538, 29.734987))),
(2252, '3 Mile Rd off Mockingbird Rd, Fayette County', 'address', 'description', ST_MakePoint(-97.217308, 29.774277), ST_AsGeoJSON(ST_MakePoint(-97.217308, 29.774277))),
(2253, 'Ivy Switch/FM 1322', 'address', 'description', ST_MakePoint(-97.598999, 29.682400), ST_AsGeoJSON(ST_MakePoint(-97.598999, 29.682400))),
(2254, 'Skillett Rd off Valenta RD, Fayette County', 'address', 'description', ST_MakePoint(-96.953438, 29.856251), ST_AsGeoJSON(ST_MakePoint(-96.953438, 29.856251))),
(2255, 'Whisper Rd at Arrow', 'address', 'description', ST_MakePoint(-97.589333, 29.661961), ST_AsGeoJSON(ST_MakePoint(-97.589333, 29.661961))),
(2256, 'Whisper Rd at Plum Creek', 'address', 'description', ST_MakePoint(-97.601776, 29.657522), ST_AsGeoJSON(ST_MakePoint(-97.601776, 29.657522))),
(2257, 'Ivy Switch Rd - 300 Blk', 'address', 'description', ST_MakePoint(-97.591194, 29.678841), ST_AsGeoJSON(ST_MakePoint(-97.591194, 29.678841))),
(2258, 'Cattlemans Row @ Dead End', 'address', 'description', ST_MakePoint(-97.599716, 29.887192), ST_AsGeoJSON(ST_MakePoint(-97.599716, 29.887192))),
(2259, 'FM 957, Fayette County', 'address', 'description', ST_MakePoint(-96.922455, 29.665253), ST_AsGeoJSON(ST_MakePoint(-96.922455, 29.665253))),
(2261, 'Turkey Hollow Rd/Mule Creek Rd', 'address', 'description', ST_MakePoint(-97.563110, 29.658323), ST_AsGeoJSON(ST_MakePoint(-97.563110, 29.658323))),
(2263, 'Turkey Hollow Rd/Sandy Pine Rd', 'address', 'description', ST_MakePoint(-97.572250, 29.662779), ST_AsGeoJSON(ST_MakePoint(-97.572250, 29.662779))),
(2264, 'HWY 29 & CR 366', 'address', 'description', ST_MakePoint(-97.476112, 30.635134), ST_AsGeoJSON(ST_MakePoint(-97.476112, 30.635134))),
(2265, 'Old McMahan Rd at Dead End', 'address', 'description', ST_MakePoint(-97.571220, 29.868996), ST_AsGeoJSON(ST_MakePoint(-97.571220, 29.868996))),
(2266, 'Herzik Rd off Hwy 77, Fayette County', 'address', 'description', ST_MakePoint(-96.904480, 29.741043), ST_AsGeoJSON(ST_MakePoint(-96.904480, 29.741043))),
(2267, 'Old Kelley at City Limits', 'address', 'description', ST_MakePoint(-97.639168, 29.880407), ST_AsGeoJSON(ST_MakePoint(-97.639168, 29.880407))),
(2268, 'Old Kelley Westbound', 'address', 'description', ST_MakePoint(-97.626808, 29.885990), ST_AsGeoJSON(ST_MakePoint(-97.626808, 29.885990))),
(2269, '2396 Farmers Rd', 'address', 'description', ST_MakePoint(-97.805496, 29.912657), ST_AsGeoJSON(ST_MakePoint(-97.805496, 29.912657))),
(2270, 'Farmers @ Misty', 'address', 'description', ST_MakePoint(-97.799660, 29.917139), ST_AsGeoJSON(ST_MakePoint(-97.799660, 29.917139))),
(2271, 'Old McMahan at Plum Creek', 'address', 'description', ST_MakePoint(-97.615211, 29.865311), ST_AsGeoJSON(ST_MakePoint(-97.615211, 29.865311))),
(2272, 'FM 957 near FM 223, Fayette County', 'address', 'description', ST_MakePoint(-96.931511, 29.633596), ST_AsGeoJSON(ST_MakePoint(-96.931511, 29.633596))),
(2274, 'Rolling Ridge at Schuelke', 'address', 'description', ST_MakePoint(-97.708359, 29.963121), ST_AsGeoJSON(ST_MakePoint(-97.708359, 29.963121))),
(2275, '1469 Rolling Ridge', 'address', 'description', ST_MakePoint(-97.695312, 29.935474), ST_AsGeoJSON(ST_MakePoint(-97.695312, 29.935474))),
(2276, 'WOODRESS ST', 'address', 'description', ST_MakePoint(-97.148308, 30.000746), ST_AsGeoJSON(ST_MakePoint(-97.148308, 30.000746))),
(2277, 'FM 2237 @ Pin Oak Creek, Fayette County', 'address', 'description', ST_MakePoint(-97.064743, 29.805616), ST_AsGeoJSON(ST_MakePoint(-97.064743, 29.805616))),
(2278, 'Williamson Rd. and TX-21', 'address', 'description', ST_MakePoint(-97.700058, 30.025198), ST_AsGeoJSON(ST_MakePoint(-97.700058, 30.025198))),
(2279, 'Ivy Switch at County Line', 'address', 'description', ST_MakePoint(-97.536613, 29.664328), ST_AsGeoJSON(ST_MakePoint(-97.536613, 29.664328))),
(2280, 'Ivy Switch/Mule Creek Rd', 'address', 'description', ST_MakePoint(-97.552811, 29.668261), ST_AsGeoJSON(ST_MakePoint(-97.552811, 29.668261))),
(2281, 'COMMUNITY CENTER RD', 'address', 'description', ST_MakePoint(-97.356750, 29.886925), ST_AsGeoJSON(ST_MakePoint(-97.356750, 29.886925))),
(2282, 'FM 2237 @ Live Oak Creek, Fayette County', 'address', 'description', ST_MakePoint(-97.083458, 29.823456), ST_AsGeoJSON(ST_MakePoint(-97.083458, 29.823456))),
(2283, 'Rocky Rd. (off of FM 2001)', 'address', 'description', ST_MakePoint(-97.740181, 29.962292), ST_AsGeoJSON(ST_MakePoint(-97.740181, 29.962292))),
(2284, 'Mule Creek Rd at County Line', 'address', 'description', ST_MakePoint(-97.517517, 29.675482), ST_AsGeoJSON(ST_MakePoint(-97.517517, 29.675482))),
(2285, 'Fox Hollow Rd/Schuelke Rd', 'address', 'description', ST_MakePoint(-97.715981, 30.001804), ST_AsGeoJSON(ST_MakePoint(-97.715981, 30.001804))),
(2286, 'Williamson @ Old Lockhart', 'address', 'description', ST_MakePoint(-97.683716, 30.011267), ST_AsGeoJSON(ST_MakePoint(-97.683716, 30.011267))),
(2287, '4027 Dry Creek Rd', 'address', 'description', ST_MakePoint(-97.644218, 29.947021), ST_AsGeoJSON(ST_MakePoint(-97.644218, 29.947021))),
(2288, 'Southern Way (Off E. Pierce St.)', 'address', 'description', ST_MakePoint(-97.602547, 29.656261), ST_AsGeoJSON(ST_MakePoint(-97.602547, 29.656261))),
(2289, '1322 @ 1386', 'address', 'description', ST_MakePoint(-97.586739, 29.700302), ST_AsGeoJSON(ST_MakePoint(-97.586739, 29.700302))),
(2290, 'S Knezek Rd @ Mulberry Creek, Fayette County', 'address', 'description', ST_MakePoint(-97.061493, 29.668293), ST_AsGeoJSON(ST_MakePoint(-97.061493, 29.668293))),
(2291, '3345 Tenney Creek Rd', 'address', 'description', ST_MakePoint(-97.556992, 29.764776), ST_AsGeoJSON(ST_MakePoint(-97.556992, 29.764776))),
(2292, 'Highway 21 @ High Rd', 'address', 'description', ST_MakePoint(-97.778038, 29.963799), ST_AsGeoJSON(ST_MakePoint(-97.778038, 29.963799))),
(2293, 'FM 153 @ Bastrop County Line, Fayette County', 'address', 'description', ST_MakePoint(-97.061546, 30.015839), ST_AsGeoJSON(ST_MakePoint(-97.061546, 30.015839))),
(2294, 'FM 153 @ Pilchick Loop, Fayette County', 'address', 'description', ST_MakePoint(-97.037811, 30.010414), ST_AsGeoJSON(ST_MakePoint(-97.037811, 30.010414))),
(2295, 'COUNTY LINE RD', 'address', 'description', ST_MakePoint(-97.058067, 30.091393), ST_AsGeoJSON(ST_MakePoint(-97.058067, 30.091393))),
(2296, 'Hwy 21/Hwy 150', 'address', 'description', ST_MakePoint(-97.818062, 29.934612), ST_AsGeoJSON(ST_MakePoint(-97.818062, 29.934612))),
(2298, 'Old Colony Line off FM20', 'address', 'description', ST_MakePoint(-97.559090, 29.896334), ST_AsGeoJSON(ST_MakePoint(-97.559090, 29.896334))),
(2299, 'ALUM CREEK EAST', 'address', 'description', ST_MakePoint(-97.222382, 30.069551), ST_AsGeoJSON(ST_MakePoint(-97.222382, 30.069551))),
(2300, 'Hwy 21/FM 2720', 'address', 'description', ST_MakePoint(-97.796432, 29.947702), ST_AsGeoJSON(ST_MakePoint(-97.796432, 29.947702))),
(2301, '3563 SE River Rd', 'address', 'description', ST_MakePoint(-97.826012, 29.827511), ST_AsGeoJSON(ST_MakePoint(-97.826012, 29.827511))),
(2302, 'Hwy 21/FM 2001', 'address', 'description', ST_MakePoint(-97.728111, 30.009262), ST_AsGeoJSON(ST_MakePoint(-97.728111, 30.009262))),
(2303, 'FM 20 & HUMBLE LN', 'address', 'description', ST_MakePoint(-97.428169, 30.021744), ST_AsGeoJSON(ST_MakePoint(-97.428169, 30.021744))),
(2304, 'PINE VALLEY LOOP, Smithville', 'address', 'description', ST_MakePoint(-97.322014, 29.959761), ST_AsGeoJSON(ST_MakePoint(-97.322014, 29.959761))),
(2305, 'CR 227 (Old Spanish Trail) and Short St.', 'address', 'description', ST_MakePoint(-97.783607, 29.958790), ST_AsGeoJSON(ST_MakePoint(-97.783607, 29.958790))),
(2306, 'CR 227 at St Michael', 'address', 'description', ST_MakePoint(-97.790367, 29.947802), ST_AsGeoJSON(ST_MakePoint(-97.790367, 29.947802))),
(2307, 'Creekside @ Highway 86', 'address', 'description', ST_MakePoint(-97.591949, 29.775803), ST_AsGeoJSON(ST_MakePoint(-97.591949, 29.775803))),
(2308, 'Pettytown @ FM 20', 'address', 'description', ST_MakePoint(-97.550316, 29.911251), ST_AsGeoJSON(ST_MakePoint(-97.550316, 29.911251))),
(2309, 'CR105/River Park Rd.', 'address', 'description', ST_MakePoint(-97.684486, 29.692616), ST_AsGeoJSON(ST_MakePoint(-97.684486, 29.692616))),
(2310, 'Mineral Springs and FM 671', 'address', 'description', ST_MakePoint(-97.681557, 29.775585), ST_AsGeoJSON(ST_MakePoint(-97.681557, 29.775585))),
(2311, 'Hwy 142/Greenhouse Rd', 'address', 'description', ST_MakePoint(-97.833694, 29.850887), ST_AsGeoJSON(ST_MakePoint(-97.833694, 29.850887))),
(2312, 'NORMA JEAN BLVD', 'address', 'description', ST_MakePoint(-97.186440, 30.045273), ST_AsGeoJSON(ST_MakePoint(-97.186440, 30.045273))),
(2313, 'Hwy 21@ Rohde rd ', 'address', 'description', ST_MakePoint(-97.747337, 29.995295), ST_AsGeoJSON(ST_MakePoint(-97.747337, 29.995295))),
(2314, 'Hwy 21 @ E FM 150', 'address', 'description', ST_MakePoint(-97.817825, 29.934534), ST_AsGeoJSON(ST_MakePoint(-97.817825, 29.934534))),
(2315, 'OLD SAYERS RD', 'address', 'description', ST_MakePoint(-97.339493, 30.238274), ST_AsGeoJSON(ST_MakePoint(-97.339493, 30.238274))),
(2316, 'WOLF RD & MARLIN ST', 'address', 'description', ST_MakePoint(-97.205132, 30.297363), ST_AsGeoJSON(ST_MakePoint(-97.205132, 30.297363))),
(2317, 'WOLF RD & KNOBBS RD', 'address', 'description', ST_MakePoint(-97.224083, 30.315960), ST_AsGeoJSON(ST_MakePoint(-97.224083, 30.315960))),
(2318, 'Noak Rd @ Jacks Creek, Fayette County', 'address', 'description', ST_MakePoint(-96.666672, 30.037806), ST_AsGeoJSON(ST_MakePoint(-96.666672, 30.037806))),
(2319, 'Krenek Rd @ Pettys Creek, Fayette County', 'address', 'description', ST_MakePoint(-96.725288, 29.844137), ST_AsGeoJSON(ST_MakePoint(-96.725288, 29.844137))),
(2320, '409 NW River Road', 'address', 'description', ST_MakePoint(-97.851845, 29.844765), ST_AsGeoJSON(ST_MakePoint(-97.851845, 29.844765))),
(2321, 'FM 2503, Fayette County', 'address', 'description', ST_MakePoint(-96.655914, 29.880667), ST_AsGeoJSON(ST_MakePoint(-96.655914, 29.880667))),
(2322, 'Easley Rd', 'address', 'description', ST_MakePoint(-97.291084, 29.952106), ST_AsGeoJSON(ST_MakePoint(-97.291084, 29.952106))),
(2323, 'Easley Rd', 'address', 'description', ST_MakePoint(-97.275032, 29.983295), ST_AsGeoJSON(ST_MakePoint(-97.275032, 29.983295))),
(2324, 'W Travis St (Business 71) @ Colorado River, Fayette County', 'address', 'description', ST_MakePoint(-96.886971, 29.901161), ST_AsGeoJSON(ST_MakePoint(-96.886971, 29.901161))),
(2326, 'Maunalua Dr', 'address', 'description', ST_MakePoint(-97.315506, 30.089396), ST_AsGeoJSON(ST_MakePoint(-97.315506, 30.089396))),
(2327, 'Bateman Rd', 'address', 'description', ST_MakePoint(-97.441055, 29.923016), ST_AsGeoJSON(ST_MakePoint(-97.441055, 29.923016))),
(2328, '13000-blk Ballerstedt', 'address', 'description', ST_MakePoint(-97.460091, 30.349457), ST_AsGeoJSON(ST_MakePoint(-97.460091, 30.349457))),
(2329, '12000-blk Felder Ln', 'address', 'description', ST_MakePoint(-97.473145, 30.447392), ST_AsGeoJSON(ST_MakePoint(-97.473145, 30.447392))),
(2330, 'Martin Luther King @ Bunte St', 'address', 'description', ST_MakePoint(-97.147629, 29.997950), ST_AsGeoJSON(ST_MakePoint(-97.147629, 29.997950))),
(2331, 'SE 2nd St @ Bunte', 'address', 'description', ST_MakePoint(-97.147171, 29.998795), ST_AsGeoJSON(ST_MakePoint(-97.147171, 29.998795))),
(2332, 'SE 1st St @ Bunte St', 'address', 'description', ST_MakePoint(-97.146683, 29.999577), ST_AsGeoJSON(ST_MakePoint(-97.146683, 29.999577))),
(2333, 'Martin Luther King @ Miller St', 'address', 'description', ST_MakePoint(-97.149483, 29.998751), ST_AsGeoJSON(ST_MakePoint(-97.149483, 29.998751))),
(2334, '2nd Ave @ Hickory St', 'address', 'description', ST_MakePoint(-97.171509, 30.011484), ST_AsGeoJSON(ST_MakePoint(-97.171509, 30.011484))),
(2335, 'TX1002 - FM 535 @ Watterson School Rd', 'address', 'description', ST_MakePoint(-97.414001, 29.978550), ST_AsGeoJSON(ST_MakePoint(-97.414001, 29.978550))),
(2336, 'Marburger St between 5th & 6th', 'address', 'description', ST_MakePoint(-97.145821, 30.005213), ST_AsGeoJSON(ST_MakePoint(-97.145821, 30.005213))),
(2337, 'Turney St @ 4th St', 'address', 'description', ST_MakePoint(-97.150436, 30.005539), ST_AsGeoJSON(ST_MakePoint(-97.150436, 30.005539))),
(2338, 'Byrne St @ 4th St', 'address', 'description', ST_MakePoint(-97.149529, 30.005022), ST_AsGeoJSON(ST_MakePoint(-97.149529, 30.005022))),
(2339, 'Hill Rd @ SH 71', 'address', 'description', ST_MakePoint(-97.134911, 30.005501), ST_AsGeoJSON(ST_MakePoint(-97.134911, 30.005501))),
(2340, 'Crafts Prairie Rd', 'address', 'description', ST_MakePoint(-97.247444, 30.052462), ST_AsGeoJSON(ST_MakePoint(-97.247444, 30.052462))),
(2341, 'Akaloa Dr', 'address', 'description', ST_MakePoint(-97.290314, 30.080730), ST_AsGeoJSON(ST_MakePoint(-97.290314, 30.080730))),
(2342, 'Blue Jay Rd', 'address', 'description', ST_MakePoint(-97.563454, 30.006632), ST_AsGeoJSON(ST_MakePoint(-97.563454, 30.006632))),
(2343, 'Karisch Rd', 'address', 'description', ST_MakePoint(-97.069099, 30.042641), ST_AsGeoJSON(ST_MakePoint(-97.069099, 30.042641))),
(2344, 'Ponderosa Rd', 'address', 'description', ST_MakePoint(-97.220215, 30.034109), ST_AsGeoJSON(ST_MakePoint(-97.220215, 30.034109))),
(2345, 'HIDDEN SHORES RD', 'address', 'description', ST_MakePoint(-97.198914, 30.025503), ST_AsGeoJSON(ST_MakePoint(-97.198914, 30.025503))),
(2346, 'HIDDEN SHORES LOOP', 'address', 'description', ST_MakePoint(-97.200676, 30.043644), ST_AsGeoJSON(ST_MakePoint(-97.200676, 30.043644))),
(2347, 'Post Oak Trl', 'address', 'description', ST_MakePoint(-97.542580, 30.108210), ST_AsGeoJSON(ST_MakePoint(-97.542580, 30.108210))),
(2348, 'HWY 86 @ Camelback Area', 'address', 'description', ST_MakePoint(-97.576241, 29.793978), ST_AsGeoJSON(ST_MakePoint(-97.576241, 29.793978))),
(2349, 'Young La @ 2600 Blk', 'address', 'description', ST_MakePoint(-97.595177, 29.825319), ST_AsGeoJSON(ST_MakePoint(-97.595177, 29.825319))),
(2350, '1000 blk Hutto Rd', 'address', 'description', ST_MakePoint(-97.606705, 30.444635), ST_AsGeoJSON(ST_MakePoint(-97.606705, 30.444635))),
(2351, '1000 blk Immanuel Rd', 'address', 'description', ST_MakePoint(-97.617149, 30.424711), ST_AsGeoJSON(ST_MakePoint(-97.617149, 30.424711))),
(2352, 'Mammoth Cave Blvd & N Cascades Ave', 'address', 'description', ST_MakePoint(-97.615211, 30.460487), ST_AsGeoJSON(ST_MakePoint(-97.615211, 30.460487))),
(2354, '2200 blk Kelly Ln', 'address', 'description', ST_MakePoint(-97.585007, 30.467777), ST_AsGeoJSON(ST_MakePoint(-97.585007, 30.467777))),
(2355, 'FM 2571', 'address', 'description', ST_MakePoint(-97.246002, 30.009134), ST_AsGeoJSON(ST_MakePoint(-97.246002, 30.009134))),
(2356, '1700 blk E Pecan St', 'address', 'description', ST_MakePoint(-97.603508, 30.431669), ST_AsGeoJSON(ST_MakePoint(-97.603508, 30.431669))),
(2357, '3600 blk E Pflugerville Pkwy', 'address', 'description', ST_MakePoint(-97.578987, 30.442114), ST_AsGeoJSON(ST_MakePoint(-97.578987, 30.442114))),
(2358, '2500 blk E Pecan St', 'address', 'description', ST_MakePoint(-97.590706, 30.424891), ST_AsGeoJSON(ST_MakePoint(-97.590706, 30.424891))),
(2359, 'Immanuel Rd & E Pecan St', 'address', 'description', ST_MakePoint(-97.610466, 30.434956), ST_AsGeoJSON(ST_MakePoint(-97.610466, 30.434956))),
(2360, 'E Pecan St & Plumbago Dr', 'address', 'description', ST_MakePoint(-97.605682, 30.432678), ST_AsGeoJSON(ST_MakePoint(-97.605682, 30.432678))),
(2361, 'FM 685 & E Pflugerville Pkwy', 'address', 'description', ST_MakePoint(-97.602081, 30.455914), ST_AsGeoJSON(ST_MakePoint(-97.602081, 30.455914))),
(2362, '700 blk N Railroad Ave', 'address', 'description', ST_MakePoint(-97.618156, 30.445145), ST_AsGeoJSON(ST_MakePoint(-97.618156, 30.445145))),
(2363, '1400 blk Grand Avenue Pkwy', 'address', 'description', ST_MakePoint(-97.649223, 30.459835), ST_AsGeoJSON(ST_MakePoint(-97.649223, 30.459835))),
(2364, 'Kelly Ln & Vilamoura St', 'address', 'description', ST_MakePoint(-97.574684, 30.462919), ST_AsGeoJSON(ST_MakePoint(-97.574684, 30.462919))),
(2365, 'FM 685 & Pfennig Ln', 'address', 'description', ST_MakePoint(-97.604950, 30.450813), ST_AsGeoJSON(ST_MakePoint(-97.604950, 30.450813))),
(2366, 'E Pfennig Ln & E Black Locust Dr', 'address', 'description', ST_MakePoint(-97.622551, 30.454319), ST_AsGeoJSON(ST_MakePoint(-97.622551, 30.454319))),
(2367, 'SH 71 EASTBOUND', 'address', 'description', ST_MakePoint(-97.129143, 29.997698), ST_AsGeoJSON(ST_MakePoint(-97.129143, 29.997698))),
(2368, 'E SH 71', 'address', 'description', ST_MakePoint(-97.128181, 29.994781), ST_AsGeoJSON(ST_MakePoint(-97.128181, 29.994781))),
(2369, 'LOWER RED ROCK RD', 'address', 'description', ST_MakePoint(-97.380119, 30.024183), ST_AsGeoJSON(ST_MakePoint(-97.380119, 30.024183))),
(2370, 'Pettytown Rd @ FM 86', 'address', 'description', ST_MakePoint(-97.509796, 29.878870), ST_AsGeoJSON(ST_MakePoint(-97.509796, 29.878870))),
(2371, 'OTT LN', 'address', 'description', ST_MakePoint(-97.393967, 29.862024), ST_AsGeoJSON(ST_MakePoint(-97.393967, 29.862024))),
(2372, 'FM 672 near Walnut Ct', 'address', 'description', ST_MakePoint(-97.585533, 29.944307), ST_AsGeoJSON(ST_MakePoint(-97.585533, 29.944307))),
(2373, '2226 Jolley Rd', 'address', 'description', ST_MakePoint(-97.755501, 29.899748), ST_AsGeoJSON(ST_MakePoint(-97.755501, 29.899748))),
(2374, 'Schuelke Rd (4000 Blk)', 'address', 'description', ST_MakePoint(-97.712067, 29.981167), ST_AsGeoJSON(ST_MakePoint(-97.712067, 29.981167))),
(2375, 'County View Rd/FM 2720', 'address', 'description', ST_MakePoint(-97.734688, 29.906406), ST_AsGeoJSON(ST_MakePoint(-97.734688, 29.906406))),
(2376, 'Burdette Wells Rd near 183', 'address', 'description', ST_MakePoint(-97.659737, 29.781574), ST_AsGeoJSON(ST_MakePoint(-97.659737, 29.781574))),
(2377, 'Homannville Rd/FM 1185', 'address', 'description', ST_MakePoint(-97.641495, 29.966579), ST_AsGeoJSON(ST_MakePoint(-97.641495, 29.966579))),
(2378, 'Williamson Rd/Elm Grove Rd', 'address', 'description', ST_MakePoint(-97.708977, 30.036215), ST_AsGeoJSON(ST_MakePoint(-97.708977, 30.036215))),
(2379, 'FM 672/FM 1854', 'address', 'description', ST_MakePoint(-97.586800, 29.942125), ST_AsGeoJSON(ST_MakePoint(-97.586800, 29.942125))),
(2380, 'FM 713 13000 blk', 'address', 'description', ST_MakePoint(-97.416656, 29.838287), ST_AsGeoJSON(ST_MakePoint(-97.416656, 29.838287))),
(2381, 'Pebblestone Rd 1200 Blk', 'address', 'description', ST_MakePoint(-97.505363, 29.904268), ST_AsGeoJSON(ST_MakePoint(-97.505363, 29.904268))),
(2382, 'FM 713 11000 Blk', 'address', 'description', ST_MakePoint(-97.433914, 29.844151), ST_AsGeoJSON(ST_MakePoint(-97.433914, 29.844151))),
(2383, 'Harwood Rd', 'address', 'description', ST_MakePoint(-97.516251, 29.696865), ST_AsGeoJSON(ST_MakePoint(-97.516251, 29.696865))),
(2384, 'Tenney Creek Rd/Hall Rd', 'address', 'description', ST_MakePoint(-97.542747, 29.742758), ST_AsGeoJSON(ST_MakePoint(-97.542747, 29.742758))),
(2385, 'Seneca Loop', 'address', 'description', ST_MakePoint(-97.765327, 29.748589), ST_AsGeoJSON(ST_MakePoint(-97.765327, 29.748589))),
(2386, 'Tumbleweed Trail between 1600 and 1900', 'address', 'description', ST_MakePoint(-97.596581, 29.915222), ST_AsGeoJSON(ST_MakePoint(-97.596581, 29.915222))),
(2387, 'Bugtussle 300 Blk', 'address', 'description', ST_MakePoint(-97.734512, 29.766582), ST_AsGeoJSON(ST_MakePoint(-97.734512, 29.766582))),
(2388, 'Circle Rd', 'address', 'description', ST_MakePoint(-97.081940, 30.073074), ST_AsGeoJSON(ST_MakePoint(-97.081940, 30.073074))),
(2389, 'West Ridge Dr', 'address', 'description', ST_MakePoint(-97.437729, 30.100183), ST_AsGeoJSON(ST_MakePoint(-97.437729, 30.100183))),
(2390, 'FM 20 at Bee Creek Rd', 'address', 'description', ST_MakePoint(-97.501335, 29.941742), ST_AsGeoJSON(ST_MakePoint(-97.501335, 29.941742)));

alter sequence floods.crossing_id_seq restart with 2391;

-- Add a community for the tons of crossings
insert into floods.community (id, name) values (9001, 'Over 9000');

-- Add the tons of crossings to the community
insert into floods.community_crossing (id, community_id, crossing_id) values
(11, 9001, 11),
(12, 9001, 12),
(13, 9001, 13),
(14, 9001, 14),
(15, 9001, 15),
(16, 9001, 16),
(17, 9001, 17),
(18, 9001, 18),
(19, 9001, 19),
(20, 9001, 20),
(21, 9001, 21),
(22, 9001, 22),
(23, 9001, 23),
(24, 9001, 24),
(25, 9001, 25),
(26, 9001, 26),
(27, 9001, 27),
(28, 9001, 28),
(29, 9001, 29),
(30, 9001, 30),
(31, 9001, 31),
(32, 9001, 32),
(33, 9001, 33),
(34, 9001, 34),
(35, 9001, 35),
(36, 9001, 36),
(37, 9001, 37),
(38, 9001, 38),
(39, 9001, 39),
(40, 9001, 40),
(41, 9001, 41),
(42, 9001, 42),
(43, 9001, 43),
(44, 9001, 44),
(45, 9001, 45),
(46, 9001, 46),
(47, 9001, 47),
(48, 9001, 48),
(49, 9001, 49),
(50, 9001, 50),
(51, 9001, 51),
(52, 9001, 52),
(53, 9001, 53),
(54, 9001, 54),
(55, 9001, 55),
(56, 9001, 56),
(57, 9001, 57),
(58, 9001, 58),
(59, 9001, 59),
(60, 9001, 60),
(61, 9001, 61),
(62, 9001, 62),
(63, 9001, 63),
(64, 9001, 64),
(65, 9001, 65),
(66, 9001, 66),
(67, 9001, 67),
(68, 9001, 68),
(69, 9001, 69),
(70, 9001, 70),
(72, 9001, 72),
(73, 9001, 73),
(74, 9001, 74),
(75, 9001, 75),
(76, 9001, 76),
(77, 9001, 77),
(78, 9001, 78),
(79, 9001, 79),
(80, 9001, 80),
(81, 9001, 81),
(82, 9001, 82),
(83, 9001, 83),
(84, 9001, 84),
(85, 9001, 85),
(86, 9001, 86),
(87, 9001, 87),
(88, 9001, 88),
(89, 9001, 89),
(90, 9001, 90),
(91, 9001, 91),
(92, 9001, 92),
(95, 9001, 95),
(96, 9001, 96),
(97, 9001, 97),
(98, 9001, 98),
(99, 9001, 99),
(100, 9001, 100),
(101, 9001, 101),
(102, 9001, 102),
(103, 9001, 103),
(104, 9001, 104),
(105, 9001, 105),
(106, 9001, 106),
(107, 9001, 107),
(108, 9001, 108),
(109, 9001, 109),
(110, 9001, 110),
(111, 9001, 111),
(112, 9001, 112),
(113, 9001, 113),
(114, 9001, 114),
(115, 9001, 115),
(116, 9001, 116),
(117, 9001, 117),
(118, 9001, 118),
(119, 9001, 119),
(120, 9001, 120),
(121, 9001, 121),
(122, 9001, 122),
(123, 9001, 123),
(124, 9001, 124),
(126, 9001, 126),
(128, 9001, 128),
(130, 9001, 130),
(131, 9001, 131),
(132, 9001, 132),
(133, 9001, 133),
(180, 9001, 180),
(202, 9001, 202),
(203, 9001, 203),
(204, 9001, 204),
(205, 9001, 205),
(206, 9001, 206),
(207, 9001, 207),
(208, 9001, 208),
(212, 9001, 212),
(213, 9001, 213),
(214, 9001, 214),
(215, 9001, 215),
(216, 9001, 216),
(217, 9001, 217),
(218, 9001, 218),
(219, 9001, 219),
(220, 9001, 220),
(221, 9001, 221),
(222, 9001, 222),
(223, 9001, 223),
(224, 9001, 224),
(225, 9001, 225),
(226, 9001, 226),
(229, 9001, 229),
(230, 9001, 230),
(231, 9001, 231),
(232, 9001, 232),
(233, 9001, 233),
(235, 9001, 235),
(236, 9001, 236),
(237, 9001, 237),
(238, 9001, 238),
(239, 9001, 239),
(240, 9001, 240),
(241, 9001, 241),
(242, 9001, 242),
(243, 9001, 243),
(244, 9001, 244),
(246, 9001, 246),
(247, 9001, 247),
(248, 9001, 248),
(249, 9001, 249),
(250, 9001, 250),
(251, 9001, 251),
(252, 9001, 252),
(253, 9001, 253),
(254, 9001, 254),
(255, 9001, 255),
(256, 9001, 256),
(257, 9001, 257),
(258, 9001, 258),
(260, 9001, 260),
(261, 9001, 261),
(262, 9001, 262),
(265, 9001, 265),
(266, 9001, 266),
(267, 9001, 267),
(268, 9001, 268),
(269, 9001, 269),
(270, 9001, 270),
(271, 9001, 271),
(272, 9001, 272),
(274, 9001, 274),
(275, 9001, 275),
(276, 9001, 276),
(277, 9001, 277),
(278, 9001, 278),
(279, 9001, 279),
(280, 9001, 280),
(281, 9001, 281),
(282, 9001, 282),
(283, 9001, 283),
(285, 9001, 285),
(286, 9001, 286),
(287, 9001, 287),
(288, 9001, 288),
(289, 9001, 289),
(290, 9001, 290),
(291, 9001, 291),
(292, 9001, 292),
(293, 9001, 293),
(294, 9001, 294),
(295, 9001, 295),
(296, 9001, 296),
(297, 9001, 297),
(298, 9001, 298),
(299, 9001, 299),
(300, 9001, 300),
(301, 9001, 301),
(302, 9001, 302),
(303, 9001, 303),
(304, 9001, 304),
(305, 9001, 305),
(306, 9001, 306),
(308, 9001, 308),
(309, 9001, 309),
(310, 9001, 310),
(311, 9001, 311),
(312, 9001, 312),
(313, 9001, 313),
(314, 9001, 314),
(315, 9001, 315),
(316, 9001, 316),
(317, 9001, 317),
(318, 9001, 318),
(319, 9001, 319),
(320, 9001, 320),
(321, 9001, 321),
(322, 9001, 322),
(323, 9001, 323),
(324, 9001, 324),
(325, 9001, 325),
(326, 9001, 326),
(327, 9001, 327),
(328, 9001, 328),
(329, 9001, 329),
(330, 9001, 330),
(331, 9001, 331),
(332, 9001, 332),
(333, 9001, 333),
(334, 9001, 334),
(335, 9001, 335),
(336, 9001, 336),
(337, 9001, 337),
(338, 9001, 338),
(339, 9001, 339),
(340, 9001, 340),
(341, 9001, 341),
(342, 9001, 342),
(343, 9001, 343),
(344, 9001, 344),
(345, 9001, 345),
(346, 9001, 346),
(347, 9001, 347),
(348, 9001, 348),
(349, 9001, 349),
(350, 9001, 350),
(351, 9001, 351),
(352, 9001, 352),
(353, 9001, 353),
(354, 9001, 354),
(355, 9001, 355),
(356, 9001, 356),
(357, 9001, 357),
(358, 9001, 358),
(359, 9001, 359),
(360, 9001, 360),
(361, 9001, 361),
(362, 9001, 362),
(363, 9001, 363),
(364, 9001, 364),
(365, 9001, 365),
(366, 9001, 366),
(367, 9001, 367),
(368, 9001, 368),
(369, 9001, 369),
(370, 9001, 370),
(371, 9001, 371),
(372, 9001, 372),
(373, 9001, 373),
(374, 9001, 374),
(375, 9001, 375),
(376, 9001, 376),
(415, 9001, 415),
(416, 9001, 416),
(417, 9001, 417),
(418, 9001, 418),
(419, 9001, 419),
(420, 9001, 420),
(421, 9001, 421),
(422, 9001, 422),
(423, 9001, 423),
(424, 9001, 424),
(426, 9001, 426),
(427, 9001, 427),
(428, 9001, 428),
(429, 9001, 429),
(430, 9001, 430),
(431, 9001, 431),
(432, 9001, 432),
(433, 9001, 433),
(434, 9001, 434),
(435, 9001, 435),
(436, 9001, 436),
(437, 9001, 437),
(438, 9001, 438),
(439, 9001, 439),
(440, 9001, 440),
(441, 9001, 441),
(442, 9001, 442),
(443, 9001, 443),
(444, 9001, 444),
(445, 9001, 445),
(446, 9001, 446),
(447, 9001, 447),
(449, 9001, 449),
(450, 9001, 450),
(451, 9001, 451),
(452, 9001, 452),
(453, 9001, 453),
(454, 9001, 454),
(455, 9001, 455),
(456, 9001, 456),
(457, 9001, 457),
(458, 9001, 458),
(459, 9001, 459),
(460, 9001, 460),
(461, 9001, 461),
(462, 9001, 462),
(463, 9001, 463),
(465, 9001, 465),
(466, 9001, 466),
(467, 9001, 467),
(468, 9001, 468),
(469, 9001, 469),
(470, 9001, 470),
(471, 9001, 471),
(472, 9001, 472),
(473, 9001, 473),
(474, 9001, 474),
(475, 9001, 475),
(476, 9001, 476),
(477, 9001, 477),
(478, 9001, 478),
(479, 9001, 479),
(480, 9001, 480),
(481, 9001, 481),
(483, 9001, 483),
(484, 9001, 484),
(485, 9001, 485),
(486, 9001, 486),
(487, 9001, 487),
(488, 9001, 488),
(489, 9001, 489),
(490, 9001, 490),
(491, 9001, 491),
(492, 9001, 492),
(493, 9001, 493),
(494, 9001, 494),
(495, 9001, 495),
(496, 9001, 496),
(497, 9001, 497),
(498, 9001, 498),
(499, 9001, 499),
(500, 9001, 500),
(501, 9001, 501),
(502, 9001, 502),
(503, 9001, 503),
(505, 9001, 505),
(506, 9001, 506),
(507, 9001, 507),
(509, 9001, 509),
(510, 9001, 510),
(511, 9001, 511),
(512, 9001, 512),
(514, 9001, 514),
(515, 9001, 515),
(516, 9001, 516),
(517, 9001, 517),
(518, 9001, 518),
(519, 9001, 519),
(520, 9001, 520),
(521, 9001, 521),
(522, 9001, 522),
(523, 9001, 523),
(524, 9001, 524),
(525, 9001, 525),
(526, 9001, 526),
(527, 9001, 527),
(528, 9001, 528),
(529, 9001, 529),
(530, 9001, 530),
(531, 9001, 531),
(532, 9001, 532),
(533, 9001, 533),
(534, 9001, 534),
(535, 9001, 535),
(536, 9001, 536),
(537, 9001, 537),
(538, 9001, 538),
(539, 9001, 539),
(540, 9001, 540),
(541, 9001, 541),
(542, 9001, 542),
(543, 9001, 543),
(544, 9001, 544),
(545, 9001, 545),
(546, 9001, 546),
(547, 9001, 547),
(548, 9001, 548),
(549, 9001, 549),
(550, 9001, 550),
(551, 9001, 551),
(552, 9001, 552),
(553, 9001, 553),
(554, 9001, 554),
(555, 9001, 555),
(556, 9001, 556),
(557, 9001, 557),
(558, 9001, 558),
(559, 9001, 559),
(560, 9001, 560),
(561, 9001, 561),
(562, 9001, 562),
(563, 9001, 563),
(564, 9001, 564),
(565, 9001, 565),
(566, 9001, 566),
(567, 9001, 567),
(568, 9001, 568),
(569, 9001, 569),
(570, 9001, 570),
(571, 9001, 571),
(572, 9001, 572),
(573, 9001, 573),
(574, 9001, 574),
(575, 9001, 575),
(576, 9001, 576),
(577, 9001, 577),
(578, 9001, 578),
(579, 9001, 579),
(580, 9001, 580),
(581, 9001, 581),
(582, 9001, 582),
(583, 9001, 583),
(584, 9001, 584),
(585, 9001, 585),
(586, 9001, 586),
(587, 9001, 587),
(588, 9001, 588),
(589, 9001, 589),
(590, 9001, 590),
(591, 9001, 591),
(592, 9001, 592),
(593, 9001, 593),
(594, 9001, 594),
(595, 9001, 595),
(596, 9001, 596),
(597, 9001, 597),
(598, 9001, 598),
(599, 9001, 599),
(600, 9001, 600),
(601, 9001, 601),
(602, 9001, 602),
(603, 9001, 603),
(604, 9001, 604),
(605, 9001, 605),
(606, 9001, 606),
(607, 9001, 607),
(608, 9001, 608),
(609, 9001, 609),
(610, 9001, 610),
(611, 9001, 611),
(612, 9001, 612),
(613, 9001, 613),
(614, 9001, 614),
(615, 9001, 615),
(616, 9001, 616),
(617, 9001, 617),
(618, 9001, 618),
(619, 9001, 619),
(620, 9001, 620),
(621, 9001, 621),
(622, 9001, 622),
(623, 9001, 623),
(624, 9001, 624),
(625, 9001, 625),
(626, 9001, 626),
(627, 9001, 627),
(628, 9001, 628),
(629, 9001, 629),
(630, 9001, 630),
(631, 9001, 631),
(632, 9001, 632),
(633, 9001, 633),
(634, 9001, 634),
(635, 9001, 635),
(636, 9001, 636),
(637, 9001, 637),
(638, 9001, 638),
(639, 9001, 639),
(640, 9001, 640),
(643, 9001, 643),
(644, 9001, 644),
(645, 9001, 645),
(646, 9001, 646),
(647, 9001, 647),
(648, 9001, 648),
(649, 9001, 649),
(650, 9001, 650),
(652, 9001, 652),
(653, 9001, 653),
(654, 9001, 654),
(655, 9001, 655),
(656, 9001, 656),
(657, 9001, 657),
(658, 9001, 658),
(659, 9001, 659),
(660, 9001, 660),
(661, 9001, 661),
(662, 9001, 662),
(663, 9001, 663),
(664, 9001, 664),
(665, 9001, 665),
(666, 9001, 666),
(667, 9001, 667),
(668, 9001, 668),
(669, 9001, 669),
(670, 9001, 670),
(671, 9001, 671),
(672, 9001, 672),
(673, 9001, 673),
(674, 9001, 674),
(675, 9001, 675),
(676, 9001, 676),
(677, 9001, 677),
(678, 9001, 678),
(679, 9001, 679),
(680, 9001, 680),
(681, 9001, 681),
(682, 9001, 682),
(683, 9001, 683),
(684, 9001, 684),
(685, 9001, 685),
(686, 9001, 686),
(687, 9001, 687),
(689, 9001, 689),
(690, 9001, 690),
(691, 9001, 691),
(692, 9001, 692),
(699, 9001, 699),
(702, 9001, 702),
(703, 9001, 703),
(704, 9001, 704),
(705, 9001, 705),
(708, 9001, 708),
(709, 9001, 709),
(710, 9001, 710),
(712, 9001, 712),
(716, 9001, 716),
(717, 9001, 717),
(718, 9001, 718),
(719, 9001, 719),
(720, 9001, 720),
(721, 9001, 721),
(724, 9001, 724),
(725, 9001, 725),
(726, 9001, 726),
(727, 9001, 727),
(728, 9001, 728),
(729, 9001, 729),
(731, 9001, 731),
(732, 9001, 732),
(733, 9001, 733),
(734, 9001, 734),
(735, 9001, 735),
(736, 9001, 736),
(737, 9001, 737),
(739, 9001, 739),
(740, 9001, 740),
(741, 9001, 741),
(742, 9001, 742),
(743, 9001, 743),
(744, 9001, 744),
(745, 9001, 745),
(746, 9001, 746),
(749, 9001, 749),
(750, 9001, 750),
(751, 9001, 751),
(754, 9001, 754),
(755, 9001, 755),
(756, 9001, 756),
(757, 9001, 757),
(758, 9001, 758),
(759, 9001, 759),
(760, 9001, 760),
(761, 9001, 761),
(762, 9001, 762),
(763, 9001, 763),
(764, 9001, 764),
(765, 9001, 765),
(766, 9001, 766),
(767, 9001, 767),
(768, 9001, 768),
(769, 9001, 769),
(770, 9001, 770),
(771, 9001, 771),
(772, 9001, 772),
(773, 9001, 773),
(774, 9001, 774),
(775, 9001, 775),
(776, 9001, 776),
(777, 9001, 777),
(778, 9001, 778),
(779, 9001, 779),
(780, 9001, 780),
(782, 9001, 782),
(783, 9001, 783),
(784, 9001, 784),
(785, 9001, 785),
(786, 9001, 786),
(787, 9001, 787),
(788, 9001, 788),
(789, 9001, 789),
(790, 9001, 790),
(791, 9001, 791),
(792, 9001, 792),
(793, 9001, 793),
(794, 9001, 794),
(795, 9001, 795),
(796, 9001, 796),
(797, 9001, 797),
(798, 9001, 798),
(799, 9001, 799),
(800, 9001, 800),
(801, 9001, 801),
(802, 9001, 802),
(803, 9001, 803),
(804, 9001, 804),
(805, 9001, 805),
(806, 9001, 806),
(807, 9001, 807),
(808, 9001, 808),
(809, 9001, 809),
(810, 9001, 810),
(811, 9001, 811),
(812, 9001, 812),
(813, 9001, 813),
(814, 9001, 814),
(815, 9001, 815),
(816, 9001, 816),
(817, 9001, 817),
(818, 9001, 818),
(819, 9001, 819),
(820, 9001, 820),
(821, 9001, 821),
(822, 9001, 822),
(823, 9001, 823),
(824, 9001, 824),
(825, 9001, 825),
(826, 9001, 826),
(827, 9001, 827),
(828, 9001, 828),
(829, 9001, 829),
(830, 9001, 830),
(831, 9001, 831),
(832, 9001, 832),
(833, 9001, 833),
(834, 9001, 834),
(835, 9001, 835),
(836, 9001, 836),
(837, 9001, 837),
(838, 9001, 838),
(839, 9001, 839),
(840, 9001, 840),
(841, 9001, 841),
(842, 9001, 842),
(843, 9001, 843),
(844, 9001, 844),
(845, 9001, 845),
(846, 9001, 846),
(847, 9001, 847),
(848, 9001, 848),
(849, 9001, 849),
(850, 9001, 850),
(851, 9001, 851),
(852, 9001, 852),
(853, 9001, 853),
(854, 9001, 854),
(855, 9001, 855),
(856, 9001, 856),
(857, 9001, 857),
(858, 9001, 858),
(859, 9001, 859),
(860, 9001, 860),
(861, 9001, 861),
(862, 9001, 862),
(863, 9001, 863),
(864, 9001, 864),
(865, 9001, 865),
(866, 9001, 866),
(867, 9001, 867),
(868, 9001, 868),
(869, 9001, 869),
(870, 9001, 870),
(871, 9001, 871),
(872, 9001, 872),
(873, 9001, 873),
(874, 9001, 874),
(875, 9001, 875),
(876, 9001, 876),
(877, 9001, 877),
(878, 9001, 878),
(879, 9001, 879),
(880, 9001, 880),
(881, 9001, 881),
(882, 9001, 882),
(883, 9001, 883),
(884, 9001, 884),
(885, 9001, 885),
(886, 9001, 886),
(887, 9001, 887),
(888, 9001, 888),
(889, 9001, 889),
(890, 9001, 890),
(891, 9001, 891),
(892, 9001, 892),
(895, 9001, 895),
(896, 9001, 896),
(897, 9001, 897),
(898, 9001, 898),
(899, 9001, 899),
(900, 9001, 900),
(901, 9001, 901),
(902, 9001, 902),
(903, 9001, 903),
(904, 9001, 904),
(905, 9001, 905),
(908, 9001, 908),
(909, 9001, 909),
(910, 9001, 910),
(911, 9001, 911),
(912, 9001, 912),
(913, 9001, 913),
(915, 9001, 915),
(916, 9001, 916),
(917, 9001, 917),
(918, 9001, 918),
(919, 9001, 919),
(920, 9001, 920),
(921, 9001, 921),
(924, 9001, 924),
(925, 9001, 925),
(926, 9001, 926),
(927, 9001, 927),
(928, 9001, 928),
(929, 9001, 929),
(930, 9001, 930),
(931, 9001, 931),
(932, 9001, 932),
(933, 9001, 933),
(934, 9001, 934),
(937, 9001, 937),
(938, 9001, 938),
(939, 9001, 939),
(940, 9001, 940),
(941, 9001, 941),
(942, 9001, 942),
(943, 9001, 943),
(944, 9001, 944),
(945, 9001, 945),
(948, 9001, 948),
(951, 9001, 951),
(952, 9001, 952),
(954, 9001, 954),
(955, 9001, 955),
(956, 9001, 956),
(958, 9001, 958),
(959, 9001, 959),
(960, 9001, 960),
(961, 9001, 961),
(962, 9001, 962),
(963, 9001, 963),
(964, 9001, 964),
(965, 9001, 965),
(966, 9001, 966),
(967, 9001, 967),
(968, 9001, 968),
(969, 9001, 969),
(970, 9001, 970),
(971, 9001, 971),
(972, 9001, 972),
(973, 9001, 973),
(974, 9001, 974),
(975, 9001, 975),
(977, 9001, 977),
(978, 9001, 978),
(979, 9001, 979),
(980, 9001, 980),
(981, 9001, 981),
(982, 9001, 982),
(983, 9001, 983),
(1021, 9001, 1021),
(1023, 9001, 1023),
(1025, 9001, 1025),
(1029, 9001, 1029),
(1030, 9001, 1030),
(1033, 9001, 1033),
(1035, 9001, 1035),
(1036, 9001, 1036),
(1038, 9001, 1038),
(1039, 9001, 1039),
(1043, 9001, 1043),
(1044, 9001, 1044),
(1045, 9001, 1045),
(1046, 9001, 1046),
(1047, 9001, 1047),
(1048, 9001, 1048),
(1049, 9001, 1049),
(1050, 9001, 1050),
(1051, 9001, 1051),
(1052, 9001, 1052),
(1053, 9001, 1053),
(1054, 9001, 1054),
(1055, 9001, 1055),
(1056, 9001, 1056),
(1057, 9001, 1057),
(1058, 9001, 1058),
(1059, 9001, 1059),
(1060, 9001, 1060),
(1061, 9001, 1061),
(1062, 9001, 1062),
(1063, 9001, 1063),
(1064, 9001, 1064),
(1065, 9001, 1065),
(1066, 9001, 1066),
(1067, 9001, 1067),
(1069, 9001, 1069),
(1070, 9001, 1070),
(1071, 9001, 1071),
(1072, 9001, 1072),
(1073, 9001, 1073),
(1074, 9001, 1074),
(1075, 9001, 1075),
(1076, 9001, 1076),
(1077, 9001, 1077),
(1078, 9001, 1078),
(1079, 9001, 1079),
(1080, 9001, 1080),
(1081, 9001, 1081),
(1082, 9001, 1082),
(1083, 9001, 1083),
(1089, 9001, 1089),
(1090, 9001, 1090),
(1091, 9001, 1091),
(1092, 9001, 1092),
(1093, 9001, 1093),
(1094, 9001, 1094),
(1095, 9001, 1095),
(1097, 9001, 1097),
(1099, 9001, 1099),
(1100, 9001, 1100),
(1101, 9001, 1101),
(1102, 9001, 1102),
(1103, 9001, 1103),
(1104, 9001, 1104),
(1105, 9001, 1105),
(1107, 9001, 1107),
(1109, 9001, 1109),
(1110, 9001, 1110),
(1111, 9001, 1111),
(1112, 9001, 1112),
(1117, 9001, 1117),
(1118, 9001, 1118),
(1122, 9001, 1122),
(1123, 9001, 1123),
(1125, 9001, 1125),
(1127, 9001, 1127),
(1128, 9001, 1128),
(1129, 9001, 1129),
(1130, 9001, 1130),
(1131, 9001, 1131),
(1132, 9001, 1132),
(1133, 9001, 1133),
(1134, 9001, 1134),
(1137, 9001, 1137),
(1139, 9001, 1139),
(1140, 9001, 1140),
(1141, 9001, 1141),
(1142, 9001, 1142),
(1143, 9001, 1143),
(1144, 9001, 1144),
(1145, 9001, 1145),
(1146, 9001, 1146),
(1148, 9001, 1148),
(1150, 9001, 1150),
(1153, 9001, 1153),
(1154, 9001, 1154),
(1157, 9001, 1157),
(1158, 9001, 1158),
(1159, 9001, 1159),
(1160, 9001, 1160),
(1161, 9001, 1161),
(1163, 9001, 1163),
(1175, 9001, 1175),
(1177, 9001, 1177),
(1178, 9001, 1178),
(1179, 9001, 1179),
(1180, 9001, 1180),
(1182, 9001, 1182),
(1183, 9001, 1183),
(1184, 9001, 1184),
(1186, 9001, 1186),
(1187, 9001, 1187),
(1188, 9001, 1188),
(1189, 9001, 1189),
(1190, 9001, 1190),
(1191, 9001, 1191),
(1192, 9001, 1192),
(1193, 9001, 1193),
(1194, 9001, 1194),
(1195, 9001, 1195),
(1196, 9001, 1196),
(1197, 9001, 1197),
(1198, 9001, 1198),
(1199, 9001, 1199),
(1200, 9001, 1200),
(1201, 9001, 1201),
(1204, 9001, 1204),
(1206, 9001, 1206),
(1207, 9001, 1207),
(1210, 9001, 1210),
(1213, 9001, 1213),
(1214, 9001, 1214),
(1215, 9001, 1215),
(1216, 9001, 1216),
(1217, 9001, 1217),
(1218, 9001, 1218),
(1219, 9001, 1219),
(1220, 9001, 1220),
(1221, 9001, 1221),
(1222, 9001, 1222),
(1223, 9001, 1223),
(1225, 9001, 1225),
(1226, 9001, 1226),
(1227, 9001, 1227),
(1228, 9001, 1228),
(1229, 9001, 1229),
(1230, 9001, 1230),
(1231, 9001, 1231),
(1232, 9001, 1232),
(1233, 9001, 1233),
(1234, 9001, 1234),
(1235, 9001, 1235),
(1236, 9001, 1236),
(1237, 9001, 1237),
(1238, 9001, 1238),
(1239, 9001, 1239),
(1240, 9001, 1240),
(1241, 9001, 1241),
(1242, 9001, 1242),
(1243, 9001, 1243),
(1244, 9001, 1244),
(1245, 9001, 1245),
(1246, 9001, 1246),
(1247, 9001, 1247),
(1248, 9001, 1248),
(1249, 9001, 1249),
(1250, 9001, 1250),
(1251, 9001, 1251),
(1252, 9001, 1252),
(1253, 9001, 1253),
(1254, 9001, 1254),
(1255, 9001, 1255),
(1256, 9001, 1256),
(1257, 9001, 1257),
(1258, 9001, 1258),
(1260, 9001, 1260),
(1261, 9001, 1261),
(1262, 9001, 1262),
(1263, 9001, 1263),
(1264, 9001, 1264),
(1265, 9001, 1265),
(1266, 9001, 1266),
(1267, 9001, 1267),
(1268, 9001, 1268),
(1269, 9001, 1269),
(1270, 9001, 1270),
(1271, 9001, 1271),
(1272, 9001, 1272),
(1273, 9001, 1273),
(1274, 9001, 1274),
(1275, 9001, 1275),
(1277, 9001, 1277),
(1278, 9001, 1278),
(1279, 9001, 1279),
(1281, 9001, 1281),
(1282, 9001, 1282),
(1283, 9001, 1283),
(1284, 9001, 1284),
(1285, 9001, 1285),
(1286, 9001, 1286),
(1287, 9001, 1287),
(1288, 9001, 1288),
(1289, 9001, 1289),
(1290, 9001, 1290),
(1291, 9001, 1291),
(1292, 9001, 1292),
(1293, 9001, 1293),
(1294, 9001, 1294),
(1295, 9001, 1295),
(1296, 9001, 1296),
(1297, 9001, 1297),
(1298, 9001, 1298),
(1299, 9001, 1299),
(1301, 9001, 1301),
(1302, 9001, 1302),
(1303, 9001, 1303),
(1304, 9001, 1304),
(1305, 9001, 1305),
(1306, 9001, 1306),
(1307, 9001, 1307),
(1308, 9001, 1308),
(1309, 9001, 1309),
(1310, 9001, 1310),
(1311, 9001, 1311),
(1312, 9001, 1312),
(1313, 9001, 1313),
(1314, 9001, 1314),
(1315, 9001, 1315),
(1316, 9001, 1316),
(1317, 9001, 1317),
(1318, 9001, 1318),
(1319, 9001, 1319),
(1320, 9001, 1320),
(1321, 9001, 1321),
(1322, 9001, 1322),
(1323, 9001, 1323),
(1324, 9001, 1324),
(1325, 9001, 1325),
(1326, 9001, 1326),
(1327, 9001, 1327),
(1328, 9001, 1328),
(1329, 9001, 1329),
(1330, 9001, 1330),
(1331, 9001, 1331),
(1332, 9001, 1332),
(1333, 9001, 1333),
(1334, 9001, 1334),
(1335, 9001, 1335),
(1336, 9001, 1336),
(1337, 9001, 1337),
(1338, 9001, 1338),
(1339, 9001, 1339),
(1340, 9001, 1340),
(1341, 9001, 1341),
(1342, 9001, 1342),
(1343, 9001, 1343),
(1344, 9001, 1344),
(1345, 9001, 1345),
(1347, 9001, 1347),
(1349, 9001, 1349),
(1350, 9001, 1350),
(1351, 9001, 1351),
(1354, 9001, 1354),
(1360, 9001, 1360),
(1361, 9001, 1361),
(1363, 9001, 1363),
(1364, 9001, 1364),
(1366, 9001, 1366),
(1367, 9001, 1367),
(1368, 9001, 1368),
(1369, 9001, 1369),
(1370, 9001, 1370),
(1371, 9001, 1371),
(1372, 9001, 1372),
(1373, 9001, 1373),
(1374, 9001, 1374),
(1375, 9001, 1375),
(1376, 9001, 1376),
(1377, 9001, 1377),
(1378, 9001, 1378),
(1380, 9001, 1380),
(1381, 9001, 1381),
(1382, 9001, 1382),
(1383, 9001, 1383),
(1384, 9001, 1384),
(1386, 9001, 1386),
(1388, 9001, 1388),
(1393, 9001, 1393),
(1404, 9001, 1404),
(1409, 9001, 1409),
(1410, 9001, 1410),
(1411, 9001, 1411),
(1412, 9001, 1412),
(1413, 9001, 1413),
(1414, 9001, 1414),
(1415, 9001, 1415),
(1416, 9001, 1416),
(1417, 9001, 1417),
(1418, 9001, 1418),
(1419, 9001, 1419),
(1420, 9001, 1420),
(1421, 9001, 1421),
(1422, 9001, 1422),
(1423, 9001, 1423),
(1424, 9001, 1424),
(1425, 9001, 1425),
(1426, 9001, 1426),
(1427, 9001, 1427),
(1428, 9001, 1428),
(1429, 9001, 1429),
(1430, 9001, 1430),
(1431, 9001, 1431),
(1432, 9001, 1432),
(1433, 9001, 1433),
(1434, 9001, 1434),
(1435, 9001, 1435),
(1436, 9001, 1436),
(1437, 9001, 1437),
(1438, 9001, 1438),
(1439, 9001, 1439),
(1440, 9001, 1440),
(1441, 9001, 1441),
(1442, 9001, 1442),
(1443, 9001, 1443),
(1445, 9001, 1445),
(1446, 9001, 1446),
(1447, 9001, 1447),
(1448, 9001, 1448),
(1449, 9001, 1449),
(1450, 9001, 1450),
(1451, 9001, 1451),
(1452, 9001, 1452),
(1453, 9001, 1453),
(1454, 9001, 1454),
(1455, 9001, 1455),
(1456, 9001, 1456),
(1457, 9001, 1457),
(1458, 9001, 1458),
(1459, 9001, 1459),
(1460, 9001, 1460),
(1461, 9001, 1461),
(1462, 9001, 1462),
(1463, 9001, 1463),
(1464, 9001, 1464),
(1465, 9001, 1465),
(1466, 9001, 1466),
(1467, 9001, 1467),
(1468, 9001, 1468),
(1469, 9001, 1469),
(1470, 9001, 1470),
(1471, 9001, 1471),
(1472, 9001, 1472),
(1473, 9001, 1473),
(1474, 9001, 1474),
(1475, 9001, 1475),
(1476, 9001, 1476),
(1477, 9001, 1477),
(1478, 9001, 1478),
(1479, 9001, 1479),
(1480, 9001, 1480),
(1481, 9001, 1481),
(1482, 9001, 1482),
(1484, 9001, 1484),
(1485, 9001, 1485),
(1486, 9001, 1486),
(1487, 9001, 1487),
(1489, 9001, 1489),
(1493, 9001, 1493),
(1494, 9001, 1494),
(1495, 9001, 1495),
(1498, 9001, 1498),
(1500, 9001, 1500),
(1501, 9001, 1501),
(1502, 9001, 1502),
(1503, 9001, 1503),
(1504, 9001, 1504),
(1506, 9001, 1506),
(1507, 9001, 1507),
(1508, 9001, 1508),
(1509, 9001, 1509),
(1510, 9001, 1510),
(1511, 9001, 1511),
(1512, 9001, 1512),
(1514, 9001, 1514),
(1515, 9001, 1515),
(1516, 9001, 1516),
(1518, 9001, 1518),
(1519, 9001, 1519),
(1520, 9001, 1520),
(1522, 9001, 1522),
(1523, 9001, 1523),
(1524, 9001, 1524),
(1525, 9001, 1525),
(1526, 9001, 1526),
(1527, 9001, 1527),
(1528, 9001, 1528),
(1529, 9001, 1529),
(1530, 9001, 1530),
(1531, 9001, 1531),
(1532, 9001, 1532),
(1533, 9001, 1533),
(1534, 9001, 1534),
(1535, 9001, 1535),
(1537, 9001, 1537),
(1538, 9001, 1538),
(1539, 9001, 1539),
(1540, 9001, 1540),
(1541, 9001, 1541),
(1542, 9001, 1542),
(1543, 9001, 1543),
(1544, 9001, 1544),
(1545, 9001, 1545),
(1546, 9001, 1546),
(1547, 9001, 1547),
(1548, 9001, 1548),
(1550, 9001, 1550),
(1552, 9001, 1552),
(1554, 9001, 1554),
(1555, 9001, 1555),
(1556, 9001, 1556),
(1557, 9001, 1557),
(1558, 9001, 1558),
(1559, 9001, 1559),
(1560, 9001, 1560),
(1563, 9001, 1563),
(1564, 9001, 1564),
(1565, 9001, 1565),
(1566, 9001, 1566),
(1567, 9001, 1567),
(1568, 9001, 1568),
(1569, 9001, 1569),
(1570, 9001, 1570),
(1571, 9001, 1571),
(1572, 9001, 1572),
(1573, 9001, 1573),
(1575, 9001, 1575),
(1576, 9001, 1576),
(1577, 9001, 1577),
(1578, 9001, 1578),
(1579, 9001, 1579),
(1580, 9001, 1580),
(1581, 9001, 1581),
(1583, 9001, 1583),
(1584, 9001, 1584),
(1585, 9001, 1585),
(1586, 9001, 1586),
(1587, 9001, 1587),
(1588, 9001, 1588),
(1589, 9001, 1589),
(1590, 9001, 1590),
(1591, 9001, 1591),
(1592, 9001, 1592),
(1594, 9001, 1594),
(1596, 9001, 1596),
(1597, 9001, 1597),
(1603, 9001, 1603),
(1604, 9001, 1604),
(1606, 9001, 1606),
(1607, 9001, 1607),
(1609, 9001, 1609),
(1610, 9001, 1610),
(1611, 9001, 1611),
(1612, 9001, 1612),
(1613, 9001, 1613),
(1614, 9001, 1614),
(1615, 9001, 1615),
(1616, 9001, 1616),
(1617, 9001, 1617),
(1618, 9001, 1618),
(1619, 9001, 1619),
(1620, 9001, 1620),
(1621, 9001, 1621),
(1622, 9001, 1622),
(1623, 9001, 1623),
(1624, 9001, 1624),
(1626, 9001, 1626),
(1627, 9001, 1627),
(1629, 9001, 1629),
(1630, 9001, 1630),
(1634, 9001, 1634),
(1635, 9001, 1635),
(1636, 9001, 1636),
(1638, 9001, 1638),
(1639, 9001, 1639),
(1641, 9001, 1641),
(1642, 9001, 1642),
(1643, 9001, 1643),
(1644, 9001, 1644),
(1646, 9001, 1646),
(1647, 9001, 1647),
(1648, 9001, 1648),
(1649, 9001, 1649),
(1650, 9001, 1650),
(1651, 9001, 1651),
(1653, 9001, 1653),
(1654, 9001, 1654),
(1655, 9001, 1655),
(1656, 9001, 1656),
(1658, 9001, 1658),
(1659, 9001, 1659),
(1661, 9001, 1661),
(1662, 9001, 1662),
(1663, 9001, 1663),
(1664, 9001, 1664),
(1666, 9001, 1666),
(1667, 9001, 1667),
(1668, 9001, 1668),
(1669, 9001, 1669),
(1671, 9001, 1671),
(1673, 9001, 1673),
(1674, 9001, 1674),
(1675, 9001, 1675),
(1676, 9001, 1676),
(1678, 9001, 1678),
(1680, 9001, 1680),
(1682, 9001, 1682),
(1684, 9001, 1684),
(1685, 9001, 1685),
(1686, 9001, 1686),
(1687, 9001, 1687),
(1688, 9001, 1688),
(1689, 9001, 1689),
(1690, 9001, 1690),
(1691, 9001, 1691),
(1692, 9001, 1692),
(1693, 9001, 1693),
(1694, 9001, 1694),
(1695, 9001, 1695),
(1696, 9001, 1696),
(1697, 9001, 1697),
(1698, 9001, 1698),
(1699, 9001, 1699),
(1700, 9001, 1700),
(1701, 9001, 1701),
(1702, 9001, 1702),
(1703, 9001, 1703),
(1704, 9001, 1704),
(1705, 9001, 1705),
(1706, 9001, 1706),
(1707, 9001, 1707),
(1708, 9001, 1708),
(1709, 9001, 1709),
(1710, 9001, 1710),
(1711, 9001, 1711),
(1712, 9001, 1712),
(1713, 9001, 1713),
(1714, 9001, 1714),
(1715, 9001, 1715),
(1716, 9001, 1716),
(1717, 9001, 1717),
(1718, 9001, 1718),
(1719, 9001, 1719),
(1720, 9001, 1720),
(1721, 9001, 1721),
(1722, 9001, 1722),
(1723, 9001, 1723),
(1724, 9001, 1724),
(1725, 9001, 1725),
(1726, 9001, 1726),
(1727, 9001, 1727),
(1728, 9001, 1728),
(1729, 9001, 1729),
(1730, 9001, 1730),
(1731, 9001, 1731),
(1732, 9001, 1732),
(1733, 9001, 1733),
(1734, 9001, 1734),
(1735, 9001, 1735),
(1736, 9001, 1736),
(1737, 9001, 1737),
(1738, 9001, 1738),
(1739, 9001, 1739),
(1740, 9001, 1740),
(1741, 9001, 1741),
(1742, 9001, 1742),
(1743, 9001, 1743),
(1744, 9001, 1744),
(1745, 9001, 1745),
(1746, 9001, 1746),
(1747, 9001, 1747),
(1748, 9001, 1748),
(1749, 9001, 1749),
(1750, 9001, 1750),
(1751, 9001, 1751),
(1752, 9001, 1752),
(1753, 9001, 1753),
(1754, 9001, 1754),
(1755, 9001, 1755),
(1756, 9001, 1756),
(1757, 9001, 1757),
(1758, 9001, 1758),
(1759, 9001, 1759),
(1760, 9001, 1760),
(1761, 9001, 1761),
(1762, 9001, 1762),
(1763, 9001, 1763),
(1768, 9001, 1768),
(1769, 9001, 1769),
(1770, 9001, 1770),
(1771, 9001, 1771),
(1772, 9001, 1772),
(1773, 9001, 1773),
(1774, 9001, 1774),
(1775, 9001, 1775),
(1776, 9001, 1776),
(1777, 9001, 1777),
(1778, 9001, 1778),
(1779, 9001, 1779),
(1780, 9001, 1780),
(1781, 9001, 1781),
(1782, 9001, 1782),
(1783, 9001, 1783),
(1784, 9001, 1784),
(1785, 9001, 1785),
(1786, 9001, 1786),
(1787, 9001, 1787),
(1788, 9001, 1788),
(1789, 9001, 1789),
(1790, 9001, 1790),
(1791, 9001, 1791),
(1793, 9001, 1793),
(1794, 9001, 1794),
(1795, 9001, 1795),
(1796, 9001, 1796),
(1797, 9001, 1797),
(1798, 9001, 1798),
(1800, 9001, 1800),
(1801, 9001, 1801),
(1803, 9001, 1803),
(1804, 9001, 1804),
(1805, 9001, 1805),
(1806, 9001, 1806),
(1807, 9001, 1807),
(1808, 9001, 1808),
(1809, 9001, 1809),
(1810, 9001, 1810),
(1811, 9001, 1811),
(1812, 9001, 1812),
(1813, 9001, 1813),
(1814, 9001, 1814),
(1816, 9001, 1816),
(1817, 9001, 1817),
(1818, 9001, 1818),
(1819, 9001, 1819),
(1820, 9001, 1820),
(1821, 9001, 1821),
(1822, 9001, 1822),
(1823, 9001, 1823),
(1824, 9001, 1824),
(1825, 9001, 1825),
(1826, 9001, 1826),
(1827, 9001, 1827),
(1828, 9001, 1828),
(1829, 9001, 1829),
(1831, 9001, 1831),
(1832, 9001, 1832),
(1833, 9001, 1833),
(1835, 9001, 1835),
(1836, 9001, 1836),
(1837, 9001, 1837),
(1839, 9001, 1839),
(1840, 9001, 1840),
(1841, 9001, 1841),
(1842, 9001, 1842),
(1844, 9001, 1844),
(1845, 9001, 1845),
(1851, 9001, 1851),
(1852, 9001, 1852),
(1854, 9001, 1854),
(1855, 9001, 1855),
(1856, 9001, 1856),
(1857, 9001, 1857),
(1858, 9001, 1858),
(1859, 9001, 1859),
(1861, 9001, 1861),
(1863, 9001, 1863),
(1864, 9001, 1864),
(1865, 9001, 1865),
(1866, 9001, 1866),
(1867, 9001, 1867),
(1868, 9001, 1868),
(1869, 9001, 1869),
(1870, 9001, 1870),
(1871, 9001, 1871),
(1872, 9001, 1872),
(1873, 9001, 1873),
(1874, 9001, 1874),
(1875, 9001, 1875),
(1876, 9001, 1876),
(1877, 9001, 1877),
(1878, 9001, 1878),
(1880, 9001, 1880),
(1881, 9001, 1881),
(1882, 9001, 1882),
(1883, 9001, 1883),
(1884, 9001, 1884),
(1885, 9001, 1885),
(1887, 9001, 1887),
(1888, 9001, 1888),
(1891, 9001, 1891),
(1892, 9001, 1892),
(1893, 9001, 1893),
(1894, 9001, 1894),
(1895, 9001, 1895),
(1896, 9001, 1896),
(1897, 9001, 1897),
(1898, 9001, 1898),
(1899, 9001, 1899),
(1900, 9001, 1900),
(1901, 9001, 1901),
(1902, 9001, 1902),
(1903, 9001, 1903),
(1904, 9001, 1904),
(1905, 9001, 1905),
(1906, 9001, 1906),
(1907, 9001, 1907),
(1908, 9001, 1908),
(1909, 9001, 1909),
(1910, 9001, 1910),
(1911, 9001, 1911),
(1913, 9001, 1913),
(1914, 9001, 1914),
(1916, 9001, 1916),
(1917, 9001, 1917),
(1918, 9001, 1918),
(1919, 9001, 1919),
(1920, 9001, 1920),
(1921, 9001, 1921),
(1922, 9001, 1922),
(1923, 9001, 1923),
(1926, 9001, 1926),
(1927, 9001, 1927),
(1928, 9001, 1928),
(1929, 9001, 1929),
(1930, 9001, 1930),
(1931, 9001, 1931),
(1932, 9001, 1932),
(1933, 9001, 1933),
(1934, 9001, 1934),
(1935, 9001, 1935),
(1938, 9001, 1938),
(1939, 9001, 1939),
(1940, 9001, 1940),
(1941, 9001, 1941),
(1942, 9001, 1942),
(1943, 9001, 1943),
(1944, 9001, 1944),
(1945, 9001, 1945),
(1946, 9001, 1946),
(1947, 9001, 1947),
(1948, 9001, 1948),
(1949, 9001, 1949),
(1950, 9001, 1950),
(1951, 9001, 1951),
(1952, 9001, 1952),
(1953, 9001, 1953),
(1954, 9001, 1954),
(1955, 9001, 1955),
(1957, 9001, 1957),
(1958, 9001, 1958),
(1959, 9001, 1959),
(1960, 9001, 1960),
(1961, 9001, 1961),
(1962, 9001, 1962),
(1965, 9001, 1965),
(1966, 9001, 1966),
(1967, 9001, 1967),
(1968, 9001, 1968),
(1969, 9001, 1969),
(1970, 9001, 1970),
(1971, 9001, 1971),
(1973, 9001, 1973),
(1974, 9001, 1974),
(1976, 9001, 1976),
(1977, 9001, 1977),
(1978, 9001, 1978),
(1979, 9001, 1979),
(1980, 9001, 1980),
(1981, 9001, 1981),
(1983, 9001, 1983),
(1984, 9001, 1984),
(1985, 9001, 1985),
(1986, 9001, 1986),
(1987, 9001, 1987),
(1988, 9001, 1988),
(1989, 9001, 1989),
(1990, 9001, 1990),
(1991, 9001, 1991),
(1995, 9001, 1995),
(1996, 9001, 1996),
(1997, 9001, 1997),
(1998, 9001, 1998),
(1999, 9001, 1999),
(2001, 9001, 2001),
(2002, 9001, 2002),
(2003, 9001, 2003),
(2004, 9001, 2004),
(2005, 9001, 2005),
(2006, 9001, 2006),
(2008, 9001, 2008),
(2009, 9001, 2009),
(2011, 9001, 2011),
(2012, 9001, 2012),
(2013, 9001, 2013),
(2014, 9001, 2014),
(2017, 9001, 2017),
(2018, 9001, 2018),
(2019, 9001, 2019),
(2021, 9001, 2021),
(2022, 9001, 2022),
(2023, 9001, 2023),
(2024, 9001, 2024),
(2026, 9001, 2026),
(2027, 9001, 2027),
(2028, 9001, 2028),
(2029, 9001, 2029),
(2030, 9001, 2030),
(2031, 9001, 2031),
(2032, 9001, 2032),
(2033, 9001, 2033),
(2034, 9001, 2034),
(2035, 9001, 2035),
(2036, 9001, 2036),
(2037, 9001, 2037),
(2038, 9001, 2038),
(2039, 9001, 2039),
(2040, 9001, 2040),
(2041, 9001, 2041),
(2043, 9001, 2043),
(2044, 9001, 2044),
(2045, 9001, 2045),
(2046, 9001, 2046),
(2047, 9001, 2047),
(2048, 9001, 2048),
(2049, 9001, 2049),
(2050, 9001, 2050),
(2053, 9001, 2053),
(2055, 9001, 2055),
(2056, 9001, 2056),
(2057, 9001, 2057),
(2061, 9001, 2061),
(2062, 9001, 2062),
(2064, 9001, 2064),
(2066, 9001, 2066),
(2068, 9001, 2068),
(2069, 9001, 2069),
(2070, 9001, 2070),
(2071, 9001, 2071),
(2072, 9001, 2072),
(2073, 9001, 2073),
(2074, 9001, 2074),
(2077, 9001, 2077),
(2078, 9001, 2078),
(2079, 9001, 2079),
(2081, 9001, 2081),
(2082, 9001, 2082),
(2083, 9001, 2083),
(2086, 9001, 2086),
(2088, 9001, 2088),
(2089, 9001, 2089),
(2090, 9001, 2090),
(2091, 9001, 2091),
(2092, 9001, 2092),
(2093, 9001, 2093),
(2094, 9001, 2094),
(2095, 9001, 2095),
(2096, 9001, 2096),
(2101, 9001, 2101),
(2102, 9001, 2102),
(2103, 9001, 2103),
(2106, 9001, 2106),
(2107, 9001, 2107),
(2108, 9001, 2108),
(2109, 9001, 2109),
(2111, 9001, 2111),
(2112, 9001, 2112),
(2113, 9001, 2113),
(2114, 9001, 2114),
(2116, 9001, 2116),
(2117, 9001, 2117),
(2118, 9001, 2118),
(2119, 9001, 2119),
(2120, 9001, 2120),
(2121, 9001, 2121),
(2122, 9001, 2122),
(2123, 9001, 2123),
(2124, 9001, 2124),
(2125, 9001, 2125),
(2126, 9001, 2126),
(2127, 9001, 2127),
(2128, 9001, 2128),
(2129, 9001, 2129),
(2130, 9001, 2130),
(2131, 9001, 2131),
(2132, 9001, 2132),
(2133, 9001, 2133),
(2134, 9001, 2134),
(2135, 9001, 2135),
(2136, 9001, 2136),
(2137, 9001, 2137),
(2138, 9001, 2138),
(2139, 9001, 2139),
(2140, 9001, 2140),
(2141, 9001, 2141),
(2142, 9001, 2142),
(2143, 9001, 2143),
(2144, 9001, 2144),
(2145, 9001, 2145),
(2146, 9001, 2146),
(2147, 9001, 2147),
(2148, 9001, 2148),
(2149, 9001, 2149),
(2150, 9001, 2150),
(2151, 9001, 2151),
(2152, 9001, 2152),
(2153, 9001, 2153),
(2154, 9001, 2154),
(2155, 9001, 2155),
(2156, 9001, 2156),
(2157, 9001, 2157),
(2158, 9001, 2158),
(2159, 9001, 2159),
(2160, 9001, 2160),
(2161, 9001, 2161),
(2162, 9001, 2162),
(2163, 9001, 2163),
(2164, 9001, 2164),
(2165, 9001, 2165),
(2166, 9001, 2166),
(2167, 9001, 2167),
(2168, 9001, 2168),
(2169, 9001, 2169),
(2170, 9001, 2170),
(2171, 9001, 2171),
(2172, 9001, 2172),
(2173, 9001, 2173),
(2174, 9001, 2174),
(2175, 9001, 2175),
(2176, 9001, 2176),
(2178, 9001, 2178),
(2179, 9001, 2179),
(2180, 9001, 2180),
(2181, 9001, 2181),
(2182, 9001, 2182),
(2183, 9001, 2183),
(2184, 9001, 2184),
(2185, 9001, 2185),
(2186, 9001, 2186),
(2187, 9001, 2187),
(2188, 9001, 2188),
(2189, 9001, 2189),
(2190, 9001, 2190),
(2191, 9001, 2191),
(2192, 9001, 2192),
(2193, 9001, 2193),
(2194, 9001, 2194),
(2195, 9001, 2195),
(2196, 9001, 2196),
(2197, 9001, 2197),
(2198, 9001, 2198),
(2199, 9001, 2199),
(2200, 9001, 2200),
(2201, 9001, 2201),
(2202, 9001, 2202),
(2203, 9001, 2203),
(2204, 9001, 2204),
(2205, 9001, 2205),
(2206, 9001, 2206),
(2207, 9001, 2207),
(2208, 9001, 2208),
(2209, 9001, 2209),
(2210, 9001, 2210),
(2211, 9001, 2211),
(2212, 9001, 2212),
(2213, 9001, 2213),
(2214, 9001, 2214),
(2215, 9001, 2215),
(2216, 9001, 2216),
(2217, 9001, 2217),
(2218, 9001, 2218),
(2219, 9001, 2219),
(2220, 9001, 2220),
(2221, 9001, 2221),
(2222, 9001, 2222),
(2223, 9001, 2223),
(2224, 9001, 2224),
(2227, 9001, 2227),
(2228, 9001, 2228),
(2229, 9001, 2229),
(2230, 9001, 2230),
(2231, 9001, 2231),
(2232, 9001, 2232),
(2233, 9001, 2233),
(2234, 9001, 2234),
(2235, 9001, 2235),
(2236, 9001, 2236),
(2237, 9001, 2237),
(2238, 9001, 2238),
(2239, 9001, 2239),
(2240, 9001, 2240),
(2241, 9001, 2241),
(2242, 9001, 2242),
(2243, 9001, 2243),
(2244, 9001, 2244),
(2246, 9001, 2246),
(2248, 9001, 2248),
(2249, 9001, 2249),
(2250, 9001, 2250),
(2251, 9001, 2251),
(2252, 9001, 2252),
(2253, 9001, 2253),
(2254, 9001, 2254),
(2255, 9001, 2255),
(2256, 9001, 2256),
(2257, 9001, 2257),
(2258, 9001, 2258),
(2259, 9001, 2259),
(2261, 9001, 2261),
(2263, 9001, 2263),
(2264, 9001, 2264),
(2265, 9001, 2265),
(2266, 9001, 2266),
(2267, 9001, 2267),
(2268, 9001, 2268),
(2269, 9001, 2269),
(2270, 9001, 2270),
(2271, 9001, 2271),
(2272, 9001, 2272),
(2274, 9001, 2274),
(2275, 9001, 2275),
(2276, 9001, 2276),
(2277, 9001, 2277),
(2278, 9001, 2278),
(2279, 9001, 2279),
(2280, 9001, 2280),
(2281, 9001, 2281),
(2282, 9001, 2282),
(2283, 9001, 2283),
(2284, 9001, 2284),
(2285, 9001, 2285),
(2286, 9001, 2286),
(2287, 9001, 2287),
(2288, 9001, 2288),
(2289, 9001, 2289),
(2290, 9001, 2290),
(2291, 9001, 2291),
(2292, 9001, 2292),
(2293, 9001, 2293),
(2294, 9001, 2294),
(2295, 9001, 2295),
(2296, 9001, 2296),
(2298, 9001, 2298),
(2299, 9001, 2299),
(2300, 9001, 2300),
(2301, 9001, 2301),
(2302, 9001, 2302),
(2303, 9001, 2303),
(2304, 9001, 2304),
(2305, 9001, 2305),
(2306, 9001, 2306),
(2307, 9001, 2307),
(2308, 9001, 2308),
(2309, 9001, 2309),
(2310, 9001, 2310),
(2311, 9001, 2311),
(2312, 9001, 2312),
(2313, 9001, 2313),
(2314, 9001, 2314),
(2315, 9001, 2315),
(2316, 9001, 2316),
(2317, 9001, 2317),
(2318, 9001, 2318),
(2319, 9001, 2319),
(2320, 9001, 2320),
(2321, 9001, 2321),
(2322, 9001, 2322),
(2323, 9001, 2323),
(2324, 9001, 2324),
(2326, 9001, 2326),
(2327, 9001, 2327),
(2328, 9001, 2328),
(2329, 9001, 2329),
(2330, 9001, 2330),
(2331, 9001, 2331),
(2332, 9001, 2332),
(2333, 9001, 2333),
(2334, 9001, 2334),
(2335, 9001, 2335),
(2336, 9001, 2336),
(2337, 9001, 2337),
(2338, 9001, 2338),
(2339, 9001, 2339),
(2340, 9001, 2340),
(2341, 9001, 2341),
(2342, 9001, 2342),
(2343, 9001, 2343),
(2344, 9001, 2344),
(2345, 9001, 2345),
(2346, 9001, 2346),
(2347, 9001, 2347),
(2348, 9001, 2348),
(2349, 9001, 2349),
(2350, 9001, 2350),
(2351, 9001, 2351),
(2352, 9001, 2352),
(2354, 9001, 2354),
(2355, 9001, 2355),
(2356, 9001, 2356),
(2357, 9001, 2357),
(2358, 9001, 2358),
(2359, 9001, 2359),
(2360, 9001, 2360),
(2361, 9001, 2361),
(2362, 9001, 2362),
(2363, 9001, 2363),
(2364, 9001, 2364),
(2365, 9001, 2365),
(2366, 9001, 2366),
(2367, 9001, 2367),
(2368, 9001, 2368),
(2369, 9001, 2369),
(2370, 9001, 2370),
(2371, 9001, 2371),
(2372, 9001, 2372),
(2373, 9001, 2373),
(2374, 9001, 2374),
(2375, 9001, 2375),
(2376, 9001, 2376),
(2377, 9001, 2377),
(2378, 9001, 2378),
(2379, 9001, 2379),
(2380, 9001, 2380),
(2381, 9001, 2381),
(2382, 9001, 2382),
(2383, 9001, 2383),
(2384, 9001, 2384),
(2385, 9001, 2385),
(2386, 9001, 2386),
(2387, 9001, 2387),
(2388, 9001, 2388),
(2389, 9001, 2389),
(2390, 9001, 2390);
alter sequence floods.community_crossing_id_seq restart with 2391;

-- Add status updates for the tons of crossings
insert into floods.status_update (id, status_id, creator_id, crossing_id, notes, created_at) values
(1001, 1, 1, 11, 'notes', '2017-09-03T09:27:57Z'),
(1002, 1, 1, 12, 'notes', '2017-09-03T09:27:57Z'),
(1003, 1, 1, 13, 'notes', '2017-09-03T09:27:57Z'),
(1004, 1, 1, 14, 'notes', '2017-09-03T09:27:57Z'),
(1005, 1, 1, 15, 'notes', '2017-09-03T09:27:57Z'),
(1006, 1, 1, 16, 'notes', '2017-09-03T09:27:57Z'),
(1007, 1, 1, 17, 'notes', '2017-09-03T09:27:57Z'),
(1008, 1, 1, 18, 'notes', '2017-09-03T09:27:57Z'),
(1009, 1, 1, 19, 'notes', '2017-09-03T09:27:57Z'),
(1010, 1, 1, 20, 'notes', '2017-09-03T09:27:57Z'),
(1011, 1, 1, 21, 'notes', '2017-09-03T09:27:57Z'),
(1012, 1, 1, 22, 'notes', '2017-09-03T09:27:57Z'),
(1013, 1, 1, 23, 'notes', '2017-09-03T09:27:57Z'),
(1014, 1, 1, 24, 'notes', '2017-09-03T09:27:57Z'),
(1015, 1, 1, 25, 'notes', '2017-09-03T09:27:57Z'),
(1016, 1, 1, 26, 'notes', '2017-09-03T09:27:57Z'),
(1017, 1, 1, 27, 'notes', '2017-09-03T09:27:57Z'),
(1018, 1, 1, 28, 'notes', '2017-09-03T09:27:57Z'),
(1019, 1, 1, 29, 'notes', '2017-09-03T09:27:57Z'),
(1020, 1, 1, 30, 'notes', '2017-09-03T09:27:57Z'),
(1021, 1, 1, 31, 'notes', '2017-09-03T09:27:57Z'),
(1022, 1, 1, 32, 'notes', '2017-09-03T09:27:57Z'),
(1023, 1, 1, 33, 'notes', '2017-09-03T09:27:57Z'),
(1024, 1, 1, 34, 'notes', '2017-09-03T09:27:57Z'),
(1025, 1, 1, 35, 'notes', '2017-09-03T09:27:57Z'),
(1026, 1, 1, 36, 'notes', '2017-09-03T09:27:57Z'),
(1027, 1, 1, 37, 'notes', '2017-09-03T09:27:57Z'),
(1028, 1, 1, 38, 'notes', '2017-09-03T09:27:57Z'),
(1029, 1, 1, 39, 'notes', '2017-09-03T09:27:57Z'),
(1030, 1, 1, 40, 'notes', '2017-09-03T09:27:57Z'),
(1031, 1, 1, 41, 'notes', '2017-09-03T09:27:57Z'),
(1032, 1, 1, 42, 'notes', '2017-09-03T09:27:57Z'),
(1033, 1, 1, 43, 'notes', '2017-09-03T09:27:57Z'),
(1034, 1, 1, 44, 'notes', '2017-09-03T09:27:57Z'),
(1035, 1, 1, 45, 'notes', '2017-09-03T09:27:57Z'),
(1036, 1, 1, 46, 'notes', '2017-09-03T09:27:57Z'),
(1037, 1, 1, 47, 'notes', '2017-09-03T09:27:57Z'),
(1038, 1, 1, 48, 'notes', '2017-09-03T09:27:57Z'),
(1039, 1, 1, 49, 'notes', '2017-09-03T09:27:57Z'),
(1040, 1, 1, 50, 'notes', '2017-09-03T09:27:57Z'),
(1041, 1, 1, 51, 'notes', '2017-09-03T09:27:57Z'),
(1042, 1, 1, 52, 'notes', '2017-09-03T09:27:57Z'),
(1043, 1, 1, 53, 'notes', '2017-09-03T09:27:57Z'),
(1044, 1, 1, 54, 'notes', '2017-09-03T09:27:57Z'),
(1045, 1, 1, 55, 'notes', '2017-09-03T09:27:57Z'),
(1046, 1, 1, 56, 'notes', '2017-09-03T09:27:57Z'),
(1047, 1, 1, 57, 'notes', '2017-09-03T09:27:57Z'),
(1048, 1, 1, 58, 'notes', '2017-09-03T09:27:57Z'),
(1049, 1, 1, 59, 'notes', '2017-09-03T09:27:57Z'),
(1050, 1, 1, 60, 'notes', '2017-09-03T09:27:57Z'),
(1051, 1, 1, 61, 'notes', '2017-09-03T09:27:57Z'),
(1052, 1, 1, 62, 'notes', '2017-09-03T09:27:57Z'),
(1053, 1, 1, 63, 'notes', '2017-09-03T09:27:57Z'),
(1054, 1, 1, 64, 'notes', '2017-09-03T09:27:57Z'),
(1055, 1, 1, 65, 'notes', '2017-09-03T09:27:57Z'),
(1056, 1, 1, 66, 'notes', '2017-09-03T09:27:57Z'),
(1057, 1, 1, 67, 'notes', '2017-09-03T09:27:57Z'),
(1058, 1, 1, 68, 'notes', '2017-09-03T09:27:57Z'),
(1059, 1, 1, 69, 'notes', '2017-09-03T09:27:57Z'),
(1060, 1, 1, 70, 'notes', '2017-09-03T09:27:57Z'),
(1062, 1, 1, 72, 'notes', '2017-09-03T09:27:57Z'),
(1063, 1, 1, 73, 'notes', '2017-09-03T09:27:57Z'),
(1064, 1, 1, 74, 'notes', '2017-09-03T09:27:57Z'),
(1065, 1, 1, 75, 'notes', '2017-09-03T09:27:57Z'),
(1066, 1, 1, 76, 'notes', '2017-09-03T09:27:57Z'),
(1067, 1, 1, 77, 'notes', '2017-09-03T09:27:57Z'),
(1068, 1, 1, 78, 'notes', '2017-09-03T09:27:57Z'),
(1069, 1, 1, 79, 'notes', '2017-09-03T09:27:57Z'),
(1070, 1, 1, 80, 'notes', '2017-09-03T09:27:57Z'),
(1071, 1, 1, 81, 'notes', '2017-09-03T09:27:57Z'),
(1072, 1, 1, 82, 'notes', '2017-09-03T09:27:57Z'),
(1073, 1, 1, 83, 'notes', '2017-09-03T09:27:57Z'),
(1074, 1, 1, 84, 'notes', '2017-09-03T09:27:57Z'),
(1075, 1, 1, 85, 'notes', '2017-09-03T09:27:57Z'),
(1076, 1, 1, 86, 'notes', '2017-09-03T09:27:57Z'),
(1077, 1, 1, 87, 'notes', '2017-09-03T09:27:57Z'),
(1078, 1, 1, 88, 'notes', '2017-09-03T09:27:57Z'),
(1079, 1, 1, 89, 'notes', '2017-09-03T09:27:57Z'),
(1080, 1, 1, 90, 'notes', '2017-09-03T09:27:57Z'),
(1081, 1, 1, 91, 'notes', '2017-09-03T09:27:57Z'),
(1082, 1, 1, 92, 'notes', '2017-09-03T09:27:57Z'),
(1085, 1, 1, 95, 'notes', '2017-09-03T09:27:57Z'),
(1086, 1, 1, 96, 'notes', '2017-09-03T09:27:57Z'),
(1087, 1, 1, 97, 'notes', '2017-09-03T09:27:57Z'),
(1088, 1, 1, 98, 'notes', '2017-09-03T09:27:57Z'),
(1089, 1, 1, 99, 'notes', '2017-09-03T09:27:57Z'),
(1090, 1, 1, 100, 'notes', '2017-09-03T09:27:57Z'),
(1091, 1, 1, 101, 'notes', '2017-09-03T09:27:57Z'),
(1092, 1, 1, 102, 'notes', '2017-09-03T09:27:57Z'),
(1093, 1, 1, 103, 'notes', '2017-09-03T09:27:57Z'),
(1094, 1, 1, 104, 'notes', '2017-09-03T09:27:57Z'),
(1095, 1, 1, 105, 'notes', '2017-09-03T09:27:57Z'),
(1096, 2, 1, 106, 'notes', '2017-09-03T09:27:57Z'),
(1097, 1, 1, 107, 'notes', '2017-09-03T09:27:57Z'),
(1098, 1, 1, 108, 'notes', '2017-09-03T09:27:57Z'),
(1099, 2, 1, 109, 'notes', '2017-09-03T09:27:57Z'),
(1100, 1, 1, 110, 'notes', '2017-09-03T09:27:57Z'),
(1101, 1, 1, 111, 'notes', '2017-09-03T09:27:57Z'),
(1102, 1, 1, 112, 'notes', '2017-09-03T09:27:57Z'),
(1103, 1, 1, 113, 'notes', '2017-09-03T09:27:57Z'),
(1104, 1, 1, 114, 'notes', '2017-09-03T09:27:57Z'),
(1105, 1, 1, 115, 'notes', '2017-09-03T09:27:57Z'),
(1106, 1, 1, 116, 'notes', '2017-09-03T09:27:57Z'),
(1107, 1, 1, 117, 'notes', '2017-09-03T09:27:57Z'),
(1108, 1, 1, 118, 'notes', '2017-09-03T09:27:57Z'),
(1109, 1, 1, 119, 'notes', '2017-09-03T09:27:57Z'),
(1110, 1, 1, 120, 'notes', '2017-09-03T09:27:57Z'),
(1111, 1, 1, 121, 'notes', '2017-09-03T09:27:57Z'),
(1112, 1, 1, 122, 'notes', '2017-09-03T09:27:57Z'),
(1113, 1, 1, 123, 'notes', '2017-09-03T09:27:57Z'),
(1114, 1, 1, 124, 'notes', '2017-09-03T09:27:57Z'),
(1116, 1, 1, 126, 'notes', '2017-09-03T09:27:57Z'),
(1118, 1, 1, 128, 'notes', '2017-09-03T09:27:57Z'),
(1120, 1, 1, 130, 'notes', '2017-09-03T09:27:57Z'),
(1121, 1, 1, 131, 'notes', '2017-09-03T09:27:57Z'),
(1122, 1, 1, 132, 'notes', '2017-09-03T09:27:57Z'),
(1123, 1, 1, 133, 'notes', '2017-09-03T09:27:57Z'),
(1170, 1, 1, 180, 'notes', '2017-09-03T09:27:57Z'),
(1192, 1, 1, 202, 'notes', '2017-09-03T09:27:57Z'),
(1193, 2, 1, 203, 'notes', '2017-09-03T09:27:57Z'),
(1194, 1, 1, 204, 'notes', '2017-09-03T09:27:57Z'),
(1195, 1, 1, 205, 'notes', '2017-09-03T09:27:57Z'),
(1196, 1, 1, 206, 'notes', '2017-09-03T09:27:57Z'),
(1197, 1, 1, 207, 'notes', '2017-09-03T09:27:57Z'),
(1198, 1, 1, 208, 'notes', '2017-09-03T09:27:57Z'),
(1202, 1, 1, 212, 'notes', '2017-09-03T09:27:57Z'),
(1203, 1, 1, 213, 'notes', '2017-09-03T09:27:57Z'),
(1204, 1, 1, 214, 'notes', '2017-09-03T09:27:57Z'),
(1205, 1, 1, 215, 'notes', '2017-09-03T09:27:57Z'),
(1206, 2, 1, 216, 'notes', '2017-09-03T09:27:57Z'),
(1207, 1, 1, 217, 'notes', '2017-09-03T09:27:57Z'),
(1208, 1, 1, 218, 'notes', '2017-09-03T09:27:57Z'),
(1209, 1, 1, 219, 'notes', '2017-09-03T09:27:57Z'),
(1210, 1, 1, 220, 'notes', '2017-09-03T09:27:57Z'),
(1211, 1, 1, 221, 'notes', '2017-09-03T09:27:57Z'),
(1212, 1, 1, 222, 'notes', '2017-09-03T09:27:57Z'),
(1213, 1, 1, 223, 'notes', '2017-09-03T09:27:57Z'),
(1214, 1, 1, 224, 'notes', '2017-09-03T09:27:57Z'),
(1215, 1, 1, 225, 'notes', '2017-09-03T09:27:57Z'),
(1216, 1, 1, 226, 'notes', '2017-09-03T09:27:57Z'),
(1219, 1, 1, 229, 'notes', '2017-09-03T09:27:57Z'),
(1220, 1, 1, 230, 'notes', '2017-09-03T09:27:57Z'),
(1221, 1, 1, 231, 'notes', '2017-09-03T09:27:57Z'),
(1222, 1, 1, 232, 'notes', '2017-09-03T09:27:57Z'),
(1223, 1, 1, 233, 'notes', '2017-09-03T09:27:57Z'),
(1225, 1, 1, 235, 'notes', '2017-09-03T09:27:57Z'),
(1226, 1, 1, 236, 'notes', '2017-09-03T09:27:57Z'),
(1227, 1, 1, 237, 'notes', '2017-09-03T09:27:57Z'),
(1228, 1, 1, 238, 'notes', '2017-09-03T09:27:57Z'),
(1229, 1, 1, 239, 'notes', '2017-09-03T09:27:57Z'),
(1230, 1, 1, 240, 'notes', '2017-09-03T09:27:57Z'),
(1231, 1, 1, 241, 'notes', '2017-09-03T09:27:57Z'),
(1232, 1, 1, 242, 'notes', '2017-09-03T09:27:57Z'),
(1233, 2, 1, 243, 'notes', '2017-09-03T09:27:57Z'),
(1234, 1, 1, 244, 'notes', '2017-09-03T09:27:57Z'),
(1236, 1, 1, 246, 'notes', '2017-09-03T09:27:57Z'),
(1237, 1, 1, 247, 'notes', '2017-09-03T09:27:57Z'),
(1238, 1, 1, 248, 'notes', '2017-09-03T09:27:57Z'),
(1239, 1, 1, 249, 'notes', '2017-09-03T09:27:57Z'),
(1240, 1, 1, 250, 'notes', '2017-09-03T09:27:57Z'),
(1241, 1, 1, 251, 'notes', '2017-09-03T09:27:57Z'),
(1242, 1, 1, 252, 'notes', '2017-09-03T09:27:57Z'),
(1243, 1, 1, 253, 'notes', '2017-09-03T09:27:57Z'),
(1244, 1, 1, 254, 'notes', '2017-09-03T09:27:57Z'),
(1245, 1, 1, 255, 'notes', '2017-09-03T09:27:57Z'),
(1246, 1, 1, 256, 'notes', '2017-09-03T09:27:57Z'),
(1247, 1, 1, 257, 'notes', '2017-09-03T09:27:57Z'),
(1248, 1, 1, 258, 'notes', '2017-09-03T09:27:57Z'),
(1250, 1, 1, 260, 'notes', '2017-09-03T09:27:57Z'),
(1251, 1, 1, 261, 'notes', '2017-09-03T09:27:57Z'),
(1252, 1, 1, 262, 'notes', '2017-09-03T09:27:57Z'),
(1255, 1, 1, 265, 'notes', '2017-09-03T09:27:57Z'),
(1256, 1, 1, 266, 'notes', '2017-09-03T09:27:57Z'),
(1257, 1, 1, 267, 'notes', '2017-09-03T09:27:57Z'),
(1258, 1, 1, 268, 'notes', '2017-09-03T09:27:57Z'),
(1259, 1, 1, 269, 'notes', '2017-09-03T09:27:57Z'),
(1260, 1, 1, 270, 'notes', '2017-09-03T09:27:57Z'),
(1261, 1, 1, 271, 'notes', '2017-09-03T09:27:57Z'),
(1262, 1, 1, 272, 'notes', '2017-09-03T09:27:57Z'),
(1264, 1, 1, 274, 'notes', '2017-09-03T09:27:57Z'),
(1265, 1, 1, 275, 'notes', '2017-09-03T09:27:57Z'),
(1266, 1, 1, 276, 'notes', '2017-09-03T09:27:57Z'),
(1267, 1, 1, 277, 'notes', '2017-09-03T09:27:57Z'),
(1268, 1, 1, 278, 'notes', '2017-09-03T09:27:57Z'),
(1269, 1, 1, 279, 'notes', '2017-09-03T09:27:57Z'),
(1270, 1, 1, 280, 'notes', '2017-09-03T09:27:57Z'),
(1271, 1, 1, 281, 'notes', '2017-09-03T09:27:57Z'),
(1272, 2, 1, 282, 'notes', '2017-09-03T09:27:57Z'),
(1273, 1, 1, 283, 'notes', '2017-09-03T09:27:57Z'),
(1275, 1, 1, 285, 'notes', '2017-09-03T09:27:57Z'),
(1276, 1, 1, 286, 'notes', '2017-09-03T09:27:57Z'),
(1277, 1, 1, 287, 'notes', '2017-09-03T09:27:57Z'),
(1278, 1, 1, 288, 'notes', '2017-09-03T09:27:57Z'),
(1279, 1, 1, 289, 'notes', '2017-09-03T09:27:57Z'),
(1280, 1, 1, 290, 'notes', '2017-09-03T09:27:57Z'),
(1281, 1, 1, 291, 'notes', '2017-09-03T09:27:57Z'),
(1282, 1, 1, 292, 'notes', '2017-09-03T09:27:57Z'),
(1283, 1, 1, 293, 'notes', '2017-09-03T09:27:57Z'),
(1284, 1, 1, 294, 'notes', '2017-09-03T09:27:57Z'),
(1285, 1, 1, 295, 'notes', '2017-09-03T09:27:57Z'),
(1286, 1, 1, 296, 'notes', '2017-09-03T09:27:57Z'),
(1287, 2, 1, 297, 'notes', '2017-09-03T09:27:57Z'),
(1288, 1, 1, 298, 'notes', '2017-09-03T09:27:57Z'),
(1289, 1, 1, 299, 'notes', '2017-09-03T09:27:57Z'),
(1290, 1, 1, 300, 'notes', '2017-09-03T09:27:57Z'),
(1291, 1, 1, 301, 'notes', '2017-09-03T09:27:57Z'),
(1292, 1, 1, 302, 'notes', '2017-09-03T09:27:57Z'),
(1293, 1, 1, 303, 'notes', '2017-09-03T09:27:57Z'),
(1294, 1, 1, 304, 'notes', '2017-09-03T09:27:57Z'),
(1295, 1, 1, 305, 'notes', '2017-09-03T09:27:57Z'),
(1296, 1, 1, 306, 'notes', '2017-09-03T09:27:57Z'),
(1298, 1, 1, 308, 'notes', '2017-09-03T09:27:57Z'),
(1299, 1, 1, 309, 'notes', '2017-09-03T09:27:57Z'),
(1300, 1, 1, 310, 'notes', '2017-09-03T09:27:57Z'),
(1301, 1, 1, 311, 'notes', '2017-09-03T09:27:57Z'),
(1302, 1, 1, 312, 'notes', '2017-09-03T09:27:57Z'),
(1303, 1, 1, 313, 'notes', '2017-09-03T09:27:57Z'),
(1304, 1, 1, 314, 'notes', '2017-09-03T09:27:57Z'),
(1305, 1, 1, 315, 'notes', '2017-09-03T09:27:57Z'),
(1306, 1, 1, 316, 'notes', '2017-09-03T09:27:57Z'),
(1307, 1, 1, 317, 'notes', '2017-09-03T09:27:57Z'),
(1308, 1, 1, 318, 'notes', '2017-09-03T09:27:57Z'),
(1309, 1, 1, 319, 'notes', '2017-09-03T09:27:57Z'),
(1310, 1, 1, 320, 'notes', '2017-09-03T09:27:57Z'),
(1311, 1, 1, 321, 'notes', '2017-09-03T09:27:57Z'),
(1312, 1, 1, 322, 'notes', '2017-09-03T09:27:57Z'),
(1313, 1, 1, 323, 'notes', '2017-09-03T09:27:57Z'),
(1314, 1, 1, 324, 'notes', '2017-09-03T09:27:57Z'),
(1315, 1, 1, 325, 'notes', '2017-09-03T09:27:57Z'),
(1316, 1, 1, 326, 'notes', '2017-09-03T09:27:57Z'),
(1317, 1, 1, 327, 'notes', '2017-09-03T09:27:57Z'),
(1318, 1, 1, 328, 'notes', '2017-09-03T09:27:57Z'),
(1319, 1, 1, 329, 'notes', '2017-09-03T09:27:57Z'),
(1320, 1, 1, 330, 'notes', '2017-09-03T09:27:57Z'),
(1321, 1, 1, 331, 'notes', '2017-09-03T09:27:57Z'),
(1322, 1, 1, 332, 'notes', '2017-09-03T09:27:57Z'),
(1323, 1, 1, 333, 'notes', '2017-09-03T09:27:57Z'),
(1324, 1, 1, 334, 'notes', '2017-09-03T09:27:57Z'),
(1325, 1, 1, 335, 'notes', '2017-09-03T09:27:57Z'),
(1326, 1, 1, 336, 'notes', '2017-09-03T09:27:57Z'),
(1327, 1, 1, 337, 'notes', '2017-09-03T09:27:57Z'),
(1328, 2, 1, 338, 'notes', '2017-09-03T09:27:57Z'),
(1329, 1, 1, 339, 'notes', '2017-09-03T09:27:57Z'),
(1330, 1, 1, 340, 'notes', '2017-09-03T09:27:57Z'),
(1331, 1, 1, 341, 'notes', '2017-09-03T09:27:57Z'),
(1332, 1, 1, 342, 'notes', '2017-09-03T09:27:57Z'),
(1333, 1, 1, 343, 'notes', '2017-09-03T09:27:57Z'),
(1334, 1, 1, 344, 'notes', '2017-09-03T09:27:57Z'),
(1335, 1, 1, 345, 'notes', '2017-09-03T09:27:57Z'),
(1336, 1, 1, 346, 'notes', '2017-09-03T09:27:57Z'),
(1337, 1, 1, 347, 'notes', '2017-09-03T09:27:57Z'),
(1338, 1, 1, 348, 'notes', '2017-09-03T09:27:57Z'),
(1339, 1, 1, 349, 'notes', '2017-09-03T09:27:57Z'),
(1340, 1, 1, 350, 'notes', '2017-09-03T09:27:57Z'),
(1341, 1, 1, 351, 'notes', '2017-09-03T09:27:57Z'),
(1342, 1, 1, 352, 'notes', '2017-09-03T09:27:57Z'),
(1343, 1, 1, 353, 'notes', '2017-09-03T09:27:57Z'),
(1344, 1, 1, 354, 'notes', '2017-09-03T09:27:57Z'),
(1345, 1, 1, 355, 'notes', '2017-09-03T09:27:57Z'),
(1346, 1, 1, 356, 'notes', '2017-09-03T09:27:57Z'),
(1347, 1, 1, 357, 'notes', '2017-09-03T09:27:57Z'),
(1348, 1, 1, 358, 'notes', '2017-09-03T09:27:57Z'),
(1349, 1, 1, 359, 'notes', '2017-09-03T09:27:57Z'),
(1350, 1, 1, 360, 'notes', '2017-09-03T09:27:57Z'),
(1351, 1, 1, 361, 'notes', '2017-09-03T09:27:57Z'),
(1352, 1, 1, 362, 'notes', '2017-09-03T09:27:57Z'),
(1353, 1, 1, 363, 'notes', '2017-09-03T09:27:57Z'),
(1354, 2, 1, 364, 'notes', '2017-09-03T09:27:57Z'),
(1355, 1, 1, 365, 'notes', '2017-09-03T09:27:57Z'),
(1356, 1, 1, 366, 'notes', '2017-09-03T09:27:57Z'),
(1357, 1, 1, 367, 'notes', '2017-09-03T09:27:57Z'),
(1358, 1, 1, 368, 'notes', '2017-09-03T09:27:57Z'),
(1359, 1, 1, 369, 'notes', '2017-09-03T09:27:57Z'),
(1360, 1, 1, 370, 'notes', '2017-09-03T09:27:57Z'),
(1361, 1, 1, 371, 'notes', '2017-09-03T09:27:57Z'),
(1362, 1, 1, 372, 'notes', '2017-09-03T09:27:57Z'),
(1363, 1, 1, 373, 'notes', '2017-09-03T09:27:57Z'),
(1364, 1, 1, 374, 'notes', '2017-09-03T09:27:57Z'),
(1365, 1, 1, 375, 'notes', '2017-09-03T09:27:57Z'),
(1366, 1, 1, 376, 'notes', '2017-09-03T09:27:57Z'),
(1405, 1, 1, 415, 'notes', '2017-09-03T09:27:57Z'),
(1406, 1, 1, 416, 'notes', '2017-09-03T09:27:57Z'),
(1407, 1, 1, 417, 'notes', '2017-09-03T09:27:57Z'),
(1408, 1, 1, 418, 'notes', '2017-09-03T09:27:57Z'),
(1409, 1, 1, 419, 'notes', '2017-09-03T09:27:57Z'),
(1410, 1, 1, 420, 'notes', '2017-09-03T09:27:57Z'),
(1411, 1, 1, 421, 'notes', '2017-09-03T09:27:57Z'),
(1412, 1, 1, 422, 'notes', '2017-09-03T09:27:57Z'),
(1413, 1, 1, 423, 'notes', '2017-09-03T09:27:57Z'),
(1414, 1, 1, 424, 'notes', '2017-09-03T09:27:57Z'),
(1416, 1, 1, 426, 'notes', '2017-09-03T09:27:57Z'),
(1417, 1, 1, 427, 'notes', '2017-09-03T09:27:57Z'),
(1418, 1, 1, 428, 'notes', '2017-09-03T09:27:57Z'),
(1419, 1, 1, 429, 'notes', '2017-09-03T09:27:57Z'),
(1420, 1, 1, 430, 'notes', '2017-09-03T09:27:57Z'),
(1421, 1, 1, 431, 'notes', '2017-09-03T09:27:57Z'),
(1422, 1, 1, 432, 'notes', '2017-09-03T09:27:57Z'),
(1423, 1, 1, 433, 'notes', '2017-09-03T09:27:57Z'),
(1424, 1, 1, 434, 'notes', '2017-09-03T09:27:57Z'),
(1425, 1, 1, 435, 'notes', '2017-09-03T09:27:57Z'),
(1426, 1, 1, 436, 'notes', '2017-09-03T09:27:57Z'),
(1427, 1, 1, 437, 'notes', '2017-09-03T09:27:57Z'),
(1428, 1, 1, 438, 'notes', '2017-09-03T09:27:57Z'),
(1429, 1, 1, 439, 'notes', '2017-09-03T09:27:57Z'),
(1430, 1, 1, 440, 'notes', '2017-09-03T09:27:57Z'),
(1431, 1, 1, 441, 'notes', '2017-09-03T09:27:57Z'),
(1432, 1, 1, 442, 'notes', '2017-09-03T09:27:57Z'),
(1433, 1, 1, 443, 'notes', '2017-09-03T09:27:57Z'),
(1434, 1, 1, 444, 'notes', '2017-09-03T09:27:57Z'),
(1435, 1, 1, 445, 'notes', '2017-09-03T09:27:57Z'),
(1436, 1, 1, 446, 'notes', '2017-09-03T09:27:57Z'),
(1437, 1, 1, 447, 'notes', '2017-09-03T09:27:57Z'),
(1439, 1, 1, 449, 'notes', '2017-09-03T09:27:57Z'),
(1440, 1, 1, 450, 'notes', '2017-09-03T09:27:57Z'),
(1441, 1, 1, 451, 'notes', '2017-09-03T09:27:57Z'),
(1442, 2, 1, 452, 'notes', '2017-09-03T09:27:57Z'),
(1443, 1, 1, 453, 'notes', '2017-09-03T09:27:57Z'),
(1444, 1, 1, 454, 'notes', '2017-09-03T09:27:57Z'),
(1445, 1, 1, 455, 'notes', '2017-09-03T09:27:57Z'),
(1446, 1, 1, 456, 'notes', '2017-09-03T09:27:57Z'),
(1447, 1, 1, 457, 'notes', '2017-09-03T09:27:57Z'),
(1448, 1, 1, 458, 'notes', '2017-09-03T09:27:57Z'),
(1449, 1, 1, 459, 'notes', '2017-09-03T09:27:57Z'),
(1450, 1, 1, 460, 'notes', '2017-09-03T09:27:57Z'),
(1451, 1, 1, 461, 'notes', '2017-09-03T09:27:57Z'),
(1452, 1, 1, 462, 'notes', '2017-09-03T09:27:57Z'),
(1453, 1, 1, 463, 'notes', '2017-09-03T09:27:57Z'),
(1455, 2, 1, 465, 'notes', '2017-09-03T09:27:57Z'),
(1456, 1, 1, 466, 'notes', '2017-09-03T09:27:57Z'),
(1457, 1, 1, 467, 'notes', '2017-09-03T09:27:57Z'),
(1458, 1, 1, 468, 'notes', '2017-09-03T09:27:57Z'),
(1459, 1, 1, 469, 'notes', '2017-09-03T09:27:57Z'),
(1460, 1, 1, 470, 'notes', '2017-09-03T09:27:57Z'),
(1461, 1, 1, 471, 'notes', '2017-09-03T09:27:57Z'),
(1462, 1, 1, 472, 'notes', '2017-09-03T09:27:57Z'),
(1463, 1, 1, 473, 'notes', '2017-09-03T09:27:57Z'),
(1464, 1, 1, 474, 'notes', '2017-09-03T09:27:57Z'),
(1465, 1, 1, 475, 'notes', '2017-09-03T09:27:57Z'),
(1466, 1, 1, 476, 'notes', '2017-09-03T09:27:57Z'),
(1467, 1, 1, 477, 'notes', '2017-09-03T09:27:57Z'),
(1468, 1, 1, 478, 'notes', '2017-09-03T09:27:57Z'),
(1469, 1, 1, 479, 'notes', '2017-09-03T09:27:57Z'),
(1470, 1, 1, 480, 'notes', '2017-09-03T09:27:57Z'),
(1471, 1, 1, 481, 'notes', '2017-09-03T09:27:57Z'),
(1473, 1, 1, 483, 'notes', '2017-09-03T09:27:57Z'),
(1474, 1, 1, 484, 'notes', '2017-09-03T09:27:57Z'),
(1475, 1, 1, 485, 'notes', '2017-09-03T09:27:57Z'),
(1476, 1, 1, 486, 'notes', '2017-09-03T09:27:57Z'),
(1477, 2, 1, 487, 'notes', '2017-09-03T09:27:57Z'),
(1478, 2, 1, 488, 'notes', '2017-09-03T09:27:57Z'),
(1479, 2, 1, 489, 'notes', '2017-09-03T09:27:57Z'),
(1480, 1, 1, 490, 'notes', '2017-09-03T09:27:57Z'),
(1481, 1, 1, 491, 'notes', '2017-09-03T09:27:57Z'),
(1482, 1, 1, 492, 'notes', '2017-09-03T09:27:57Z'),
(1483, 1, 1, 493, 'notes', '2017-09-03T09:27:57Z'),
(1484, 1, 1, 494, 'notes', '2017-09-03T09:27:57Z'),
(1485, 1, 1, 495, 'notes', '2017-09-03T09:27:57Z'),
(1486, 1, 1, 496, 'notes', '2017-09-03T09:27:57Z'),
(1487, 1, 1, 497, 'notes', '2017-09-03T09:27:57Z'),
(1488, 1, 1, 498, 'notes', '2017-09-03T09:27:57Z'),
(1489, 1, 1, 499, 'notes', '2017-09-03T09:27:57Z'),
(1490, 1, 1, 500, 'notes', '2017-09-03T09:27:57Z'),
(1491, 1, 1, 501, 'notes', '2017-09-03T09:27:57Z'),
(1492, 1, 1, 502, 'notes', '2017-09-03T09:27:57Z'),
(1493, 1, 1, 503, 'notes', '2017-09-03T09:27:57Z'),
(1495, 1, 1, 505, 'notes', '2017-09-03T09:27:57Z'),
(1496, 2, 1, 506, 'notes', '2017-09-03T09:27:57Z'),
(1497, 2, 1, 507, 'notes', '2017-09-03T09:27:57Z'),
(1499, 1, 1, 509, 'notes', '2017-09-03T09:27:57Z'),
(1500, 2, 1, 510, 'notes', '2017-09-03T09:27:57Z'),
(1501, 1, 1, 511, 'notes', '2017-09-03T09:27:57Z'),
(1502, 1, 1, 512, 'notes', '2017-09-03T09:27:57Z'),
(1504, 2, 1, 514, 'notes', '2017-09-03T09:27:57Z'),
(1505, 1, 1, 515, 'notes', '2017-09-03T09:27:57Z'),
(1506, 2, 1, 516, 'notes', '2017-09-03T09:27:57Z'),
(1507, 1, 1, 517, 'notes', '2017-09-03T09:27:57Z'),
(1508, 1, 1, 518, 'notes', '2017-09-03T09:27:57Z'),
(1509, 1, 1, 519, 'notes', '2017-09-03T09:27:57Z'),
(1510, 1, 1, 520, 'notes', '2017-09-03T09:27:57Z'),
(1511, 1, 1, 521, 'notes', '2017-09-03T09:27:57Z'),
(1512, 1, 1, 522, 'notes', '2017-09-03T09:27:57Z'),
(1513, 1, 1, 523, 'notes', '2017-09-03T09:27:57Z'),
(1514, 1, 1, 524, 'notes', '2017-09-03T09:27:57Z'),
(1515, 1, 1, 525, 'notes', '2017-09-03T09:27:57Z'),
(1516, 1, 1, 526, 'notes', '2017-09-03T09:27:57Z'),
(1517, 1, 1, 527, 'notes', '2017-09-03T09:27:57Z'),
(1518, 1, 1, 528, 'notes', '2017-09-03T09:27:57Z'),
(1519, 1, 1, 529, 'notes', '2017-09-03T09:27:57Z'),
(1520, 1, 1, 530, 'notes', '2017-09-03T09:27:57Z'),
(1521, 2, 1, 531, 'notes', '2017-09-03T09:27:57Z'),
(1522, 1, 1, 532, 'notes', '2017-09-03T09:27:57Z'),
(1523, 1, 1, 533, 'notes', '2017-09-03T09:27:57Z'),
(1524, 1, 1, 534, 'notes', '2017-09-03T09:27:57Z'),
(1525, 2, 1, 535, 'notes', '2017-09-03T09:27:57Z'),
(1526, 2, 1, 536, 'notes', '2017-09-03T09:27:57Z'),
(1527, 1, 1, 537, 'notes', '2017-09-03T09:27:57Z'),
(1528, 1, 1, 538, 'notes', '2017-09-03T09:27:57Z'),
(1529, 1, 1, 539, 'notes', '2017-09-03T09:27:57Z'),
(1530, 1, 1, 540, 'notes', '2017-09-03T09:27:57Z'),
(1531, 1, 1, 541, 'notes', '2017-09-03T09:27:57Z'),
(1532, 1, 1, 542, 'notes', '2017-09-03T09:27:57Z'),
(1533, 1, 1, 543, 'notes', '2017-09-03T09:27:57Z'),
(1534, 1, 1, 544, 'notes', '2017-09-03T09:27:57Z'),
(1535, 1, 1, 545, 'notes', '2017-09-03T09:27:57Z'),
(1536, 1, 1, 546, 'notes', '2017-09-03T09:27:57Z'),
(1537, 1, 1, 547, 'notes', '2017-09-03T09:27:57Z'),
(1538, 1, 1, 548, 'notes', '2017-09-03T09:27:57Z'),
(1539, 1, 1, 549, 'notes', '2017-09-03T09:27:57Z'),
(1540, 1, 1, 550, 'notes', '2017-09-03T09:27:57Z'),
(1541, 1, 1, 551, 'notes', '2017-09-03T09:27:57Z'),
(1542, 1, 1, 552, 'notes', '2017-09-03T09:27:57Z'),
(1543, 1, 1, 553, 'notes', '2017-09-03T09:27:57Z'),
(1544, 1, 1, 554, 'notes', '2017-09-03T09:27:57Z'),
(1545, 1, 1, 555, 'notes', '2017-09-03T09:27:57Z'),
(1546, 1, 1, 556, 'notes', '2017-09-03T09:27:57Z'),
(1547, 1, 1, 557, 'notes', '2017-09-03T09:27:57Z'),
(1548, 1, 1, 558, 'notes', '2017-09-03T09:27:57Z'),
(1549, 1, 1, 559, 'notes', '2017-09-03T09:27:57Z'),
(1550, 2, 1, 560, 'notes', '2017-09-03T09:27:57Z'),
(1551, 1, 1, 561, 'notes', '2017-09-03T09:27:57Z'),
(1552, 1, 1, 562, 'notes', '2017-09-03T09:27:57Z'),
(1553, 1, 1, 563, 'notes', '2017-09-03T09:27:57Z'),
(1554, 1, 1, 564, 'notes', '2017-09-03T09:27:57Z'),
(1555, 1, 1, 565, 'notes', '2017-09-03T09:27:57Z'),
(1556, 1, 1, 566, 'notes', '2017-09-03T09:27:57Z'),
(1557, 1, 1, 567, 'notes', '2017-09-03T09:27:57Z'),
(1558, 1, 1, 568, 'notes', '2017-09-03T09:27:57Z'),
(1559, 1, 1, 569, 'notes', '2017-09-03T09:27:57Z'),
(1560, 1, 1, 570, 'notes', '2017-09-03T09:27:57Z'),
(1561, 1, 1, 571, 'notes', '2017-09-03T09:27:57Z'),
(1562, 1, 1, 572, 'notes', '2017-09-03T09:27:57Z'),
(1563, 1, 1, 573, 'notes', '2017-09-03T09:27:57Z'),
(1564, 1, 1, 574, 'notes', '2017-09-03T09:27:57Z'),
(1565, 1, 1, 575, 'notes', '2017-09-03T09:27:57Z'),
(1566, 1, 1, 576, 'notes', '2017-09-03T09:27:57Z'),
(1567, 1, 1, 577, 'notes', '2017-09-03T09:27:57Z'),
(1568, 1, 1, 578, 'notes', '2017-09-03T09:27:57Z'),
(1569, 1, 1, 579, 'notes', '2017-09-03T09:27:57Z'),
(1570, 1, 1, 580, 'notes', '2017-09-03T09:27:57Z'),
(1571, 1, 1, 581, 'notes', '2017-09-03T09:27:57Z'),
(1572, 1, 1, 582, 'notes', '2017-09-03T09:27:57Z'),
(1573, 1, 1, 583, 'notes', '2017-09-03T09:27:57Z'),
(1574, 1, 1, 584, 'notes', '2017-09-03T09:27:57Z'),
(1575, 1, 1, 585, 'notes', '2017-09-03T09:27:57Z'),
(1576, 1, 1, 586, 'notes', '2017-09-03T09:27:57Z'),
(1577, 1, 1, 587, 'notes', '2017-09-03T09:27:57Z'),
(1578, 1, 1, 588, 'notes', '2017-09-03T09:27:57Z'),
(1579, 1, 1, 589, 'notes', '2017-09-03T09:27:57Z'),
(1580, 1, 1, 590, 'notes', '2017-09-03T09:27:57Z'),
(1581, 1, 1, 591, 'notes', '2017-09-03T09:27:57Z'),
(1582, 1, 1, 592, 'notes', '2017-09-03T09:27:57Z'),
(1583, 1, 1, 593, 'notes', '2017-09-03T09:27:57Z'),
(1584, 1, 1, 594, 'notes', '2017-09-03T09:27:57Z'),
(1585, 1, 1, 595, 'notes', '2017-09-03T09:27:57Z'),
(1586, 1, 1, 596, 'notes', '2017-09-03T09:27:57Z'),
(1587, 1, 1, 597, 'notes', '2017-09-03T09:27:57Z'),
(1588, 1, 1, 598, 'notes', '2017-09-03T09:27:57Z'),
(1589, 1, 1, 599, 'notes', '2017-09-03T09:27:57Z'),
(1590, 1, 1, 600, 'notes', '2017-09-03T09:27:57Z'),
(1591, 1, 1, 601, 'notes', '2017-09-03T09:27:57Z'),
(1592, 1, 1, 602, 'notes', '2017-09-03T09:27:57Z'),
(1593, 1, 1, 603, 'notes', '2017-09-03T09:27:57Z'),
(1594, 1, 1, 604, 'notes', '2017-09-03T09:27:57Z'),
(1595, 1, 1, 605, 'notes', '2017-09-03T09:27:57Z'),
(1596, 1, 1, 606, 'notes', '2017-09-03T09:27:57Z'),
(1597, 1, 1, 607, 'notes', '2017-09-03T09:27:57Z'),
(1598, 1, 1, 608, 'notes', '2017-09-03T09:27:57Z'),
(1599, 1, 1, 609, 'notes', '2017-09-03T09:27:57Z'),
(1600, 1, 1, 610, 'notes', '2017-09-03T09:27:57Z'),
(1601, 1, 1, 611, 'notes', '2017-09-03T09:27:57Z'),
(1602, 1, 1, 612, 'notes', '2017-09-03T09:27:57Z'),
(1603, 1, 1, 613, 'notes', '2017-09-03T09:27:57Z'),
(1604, 1, 1, 614, 'notes', '2017-09-03T09:27:57Z'),
(1605, 1, 1, 615, 'notes', '2017-09-03T09:27:57Z'),
(1606, 1, 1, 616, 'notes', '2017-09-03T09:27:57Z'),
(1607, 1, 1, 617, 'notes', '2017-09-03T09:27:57Z'),
(1608, 1, 1, 618, 'notes', '2017-09-03T09:27:57Z'),
(1609, 1, 1, 619, 'notes', '2017-09-03T09:27:57Z'),
(1610, 1, 1, 620, 'notes', '2017-09-03T09:27:57Z'),
(1611, 1, 1, 621, 'notes', '2017-09-03T09:27:57Z'),
(1612, 2, 1, 622, 'notes', '2017-09-03T09:27:57Z'),
(1613, 1, 1, 623, 'notes', '2017-09-03T09:27:57Z'),
(1614, 1, 1, 624, 'notes', '2017-09-03T09:27:57Z'),
(1615, 1, 1, 625, 'notes', '2017-09-03T09:27:57Z'),
(1616, 1, 1, 626, 'notes', '2017-09-03T09:27:57Z'),
(1617, 1, 1, 627, 'notes', '2017-09-03T09:27:57Z'),
(1618, 1, 1, 628, 'notes', '2017-09-03T09:27:57Z'),
(1619, 1, 1, 629, 'notes', '2017-09-03T09:27:57Z'),
(1620, 1, 1, 630, 'notes', '2017-09-03T09:27:57Z'),
(1621, 1, 1, 631, 'notes', '2017-09-03T09:27:57Z'),
(1622, 1, 1, 632, 'notes', '2017-09-03T09:27:57Z'),
(1623, 1, 1, 633, 'notes', '2017-09-03T09:27:57Z'),
(1624, 1, 1, 634, 'notes', '2017-09-03T09:27:57Z'),
(1625, 1, 1, 635, 'notes', '2017-09-03T09:27:57Z'),
(1626, 1, 1, 636, 'notes', '2017-09-03T09:27:57Z'),
(1627, 1, 1, 637, 'notes', '2017-09-03T09:27:57Z'),
(1628, 1, 1, 638, 'notes', '2017-09-03T09:27:57Z'),
(1629, 1, 1, 639, 'notes', '2017-09-03T09:27:57Z'),
(1630, 2, 1, 640, 'notes', '2017-09-03T09:27:57Z'),
(1633, 1, 1, 643, 'notes', '2017-09-03T09:27:57Z'),
(1634, 1, 1, 644, 'notes', '2017-09-03T09:27:57Z'),
(1635, 1, 1, 645, 'notes', '2017-09-03T09:27:57Z'),
(1636, 1, 1, 646, 'notes', '2017-09-03T09:27:57Z'),
(1637, 1, 1, 647, 'notes', '2017-09-03T09:27:57Z'),
(1638, 1, 1, 648, 'notes', '2017-09-03T09:27:57Z'),
(1639, 1, 1, 649, 'notes', '2017-09-03T09:27:57Z'),
(1640, 1, 1, 650, 'notes', '2017-09-03T09:27:57Z'),
(1642, 1, 1, 652, 'notes', '2017-09-03T09:27:57Z'),
(1643, 1, 1, 653, 'notes', '2017-09-03T09:27:57Z'),
(1644, 1, 1, 654, 'notes', '2017-09-03T09:27:57Z'),
(1645, 1, 1, 655, 'notes', '2017-09-03T09:27:57Z'),
(1646, 1, 1, 656, 'notes', '2017-09-03T09:27:57Z'),
(1647, 1, 1, 657, 'notes', '2017-09-03T09:27:57Z'),
(1648, 1, 1, 658, 'notes', '2017-09-03T09:27:57Z'),
(1649, 1, 1, 659, 'notes', '2017-09-03T09:27:57Z'),
(1650, 1, 1, 660, 'notes', '2017-09-03T09:27:57Z'),
(1651, 1, 1, 661, 'notes', '2017-09-03T09:27:57Z'),
(1652, 1, 1, 662, 'notes', '2017-09-03T09:27:57Z'),
(1653, 1, 1, 663, 'notes', '2017-09-03T09:27:57Z'),
(1654, 1, 1, 664, 'notes', '2017-09-03T09:27:57Z'),
(1655, 1, 1, 665, 'notes', '2017-09-03T09:27:57Z'),
(1656, 1, 1, 666, 'notes', '2017-09-03T09:27:57Z'),
(1657, 1, 1, 667, 'notes', '2017-09-03T09:27:57Z'),
(1658, 1, 1, 668, 'notes', '2017-09-03T09:27:57Z'),
(1659, 1, 1, 669, 'notes', '2017-09-03T09:27:57Z'),
(1660, 1, 1, 670, 'notes', '2017-09-03T09:27:57Z'),
(1661, 1, 1, 671, 'notes', '2017-09-03T09:27:57Z'),
(1662, 1, 1, 672, 'notes', '2017-09-03T09:27:57Z'),
(1663, 1, 1, 673, 'notes', '2017-09-03T09:27:57Z'),
(1664, 1, 1, 674, 'notes', '2017-09-03T09:27:57Z'),
(1665, 2, 1, 675, 'notes', '2017-09-03T09:27:57Z'),
(1666, 1, 1, 676, 'notes', '2017-09-03T09:27:57Z'),
(1667, 1, 1, 677, 'notes', '2017-09-03T09:27:57Z'),
(1668, 1, 1, 678, 'notes', '2017-09-03T09:27:57Z'),
(1669, 1, 1, 679, 'notes', '2017-09-03T09:27:57Z'),
(1670, 1, 1, 680, 'notes', '2017-09-03T09:27:57Z'),
(1671, 1, 1, 681, 'notes', '2017-09-03T09:27:57Z'),
(1672, 1, 1, 682, 'notes', '2017-09-03T09:27:57Z'),
(1673, 1, 1, 683, 'notes', '2017-09-03T09:27:57Z'),
(1674, 1, 1, 684, 'notes', '2017-09-03T09:27:57Z'),
(1675, 1, 1, 685, 'notes', '2017-09-03T09:27:57Z'),
(1676, 1, 1, 686, 'notes', '2017-09-03T09:27:57Z'),
(1677, 1, 1, 687, 'notes', '2017-09-03T09:27:57Z'),
(1679, 1, 1, 689, 'notes', '2017-09-03T09:27:57Z'),
(1680, 1, 1, 690, 'notes', '2017-09-03T09:27:57Z'),
(1681, 1, 1, 691, 'notes', '2017-09-03T09:27:57Z'),
(1682, 1, 1, 692, 'notes', '2017-09-03T09:27:57Z'),
(1689, 1, 1, 699, 'notes', '2017-09-03T09:27:57Z'),
(1692, 1, 1, 702, 'notes', '2017-09-03T09:27:57Z'),
(1693, 1, 1, 703, 'notes', '2017-09-03T09:27:57Z'),
(1694, 1, 1, 704, 'notes', '2017-09-03T09:27:57Z'),
(1695, 1, 1, 705, 'notes', '2017-09-03T09:27:57Z'),
(1698, 1, 1, 708, 'notes', '2017-09-03T09:27:57Z'),
(1699, 1, 1, 709, 'notes', '2017-09-03T09:27:57Z'),
(1700, 1, 1, 710, 'notes', '2017-09-03T09:27:57Z'),
(1702, 1, 1, 712, 'notes', '2017-09-03T09:27:57Z'),
(1706, 1, 1, 716, 'notes', '2017-09-03T09:27:57Z'),
(1707, 1, 1, 717, 'notes', '2017-09-03T09:27:57Z'),
(1708, 1, 1, 718, 'notes', '2017-09-03T09:27:57Z'),
(1709, 2, 1, 719, 'notes', '2017-09-03T09:27:57Z'),
(1710, 1, 1, 720, 'notes', '2017-09-03T09:27:57Z'),
(1711, 1, 1, 721, 'notes', '2017-09-03T09:27:57Z'),
(1714, 2, 1, 724, 'notes', '2017-09-03T09:27:57Z'),
(1715, 1, 1, 725, 'notes', '2017-09-03T09:27:57Z'),
(1716, 1, 1, 726, 'notes', '2017-09-03T09:27:57Z'),
(1717, 1, 1, 727, 'notes', '2017-09-03T09:27:57Z'),
(1718, 1, 1, 728, 'notes', '2017-09-03T09:27:57Z'),
(1719, 1, 1, 729, 'notes', '2017-09-03T09:27:57Z'),
(1721, 2, 1, 731, 'notes', '2017-09-03T09:27:57Z'),
(1722, 1, 1, 732, 'notes', '2017-09-03T09:27:57Z'),
(1723, 1, 1, 733, 'notes', '2017-09-03T09:27:57Z'),
(1724, 2, 1, 734, 'notes', '2017-09-03T09:27:57Z'),
(1725, 1, 1, 735, 'notes', '2017-09-03T09:27:57Z'),
(1726, 1, 1, 736, 'notes', '2017-09-03T09:27:57Z'),
(1727, 2, 1, 737, 'notes', '2017-09-03T09:27:57Z'),
(1729, 2, 1, 739, 'notes', '2017-09-03T09:27:57Z'),
(1730, 2, 1, 740, 'notes', '2017-09-03T09:27:57Z'),
(1731, 2, 1, 741, 'notes', '2017-09-03T09:27:57Z'),
(1732, 2, 1, 742, 'notes', '2017-09-03T09:27:57Z'),
(1733, 2, 1, 743, 'notes', '2017-09-03T09:27:57Z'),
(1734, 1, 1, 744, 'notes', '2017-09-03T09:27:57Z'),
(1735, 1, 1, 745, 'notes', '2017-09-03T09:27:57Z'),
(1736, 1, 1, 746, 'notes', '2017-09-03T09:27:57Z'),
(1739, 2, 1, 749, 'notes', '2017-09-03T09:27:57Z'),
(1740, 2, 1, 750, 'notes', '2017-09-03T09:27:57Z'),
(1741, 2, 1, 751, 'notes', '2017-09-03T09:27:57Z'),
(1744, 2, 1, 754, 'notes', '2017-09-03T09:27:57Z'),
(1745, 2, 1, 755, 'notes', '2017-09-03T09:27:57Z'),
(1746, 2, 1, 756, 'notes', '2017-09-03T09:27:57Z'),
(1747, 1, 1, 757, 'notes', '2017-09-03T09:27:57Z'),
(1748, 2, 1, 758, 'notes', '2017-09-03T09:27:57Z'),
(1749, 1, 1, 759, 'notes', '2017-09-03T09:27:57Z'),
(1750, 1, 1, 760, 'notes', '2017-09-03T09:27:57Z'),
(1751, 1, 1, 761, 'notes', '2017-09-03T09:27:57Z'),
(1752, 1, 1, 762, 'notes', '2017-09-03T09:27:57Z'),
(1753, 1, 1, 763, 'notes', '2017-09-03T09:27:57Z'),
(1754, 1, 1, 764, 'notes', '2017-09-03T09:27:57Z'),
(1755, 1, 1, 765, 'notes', '2017-09-03T09:27:57Z'),
(1756, 1, 1, 766, 'notes', '2017-09-03T09:27:57Z'),
(1757, 1, 1, 767, 'notes', '2017-09-03T09:27:57Z'),
(1758, 1, 1, 768, 'notes', '2017-09-03T09:27:57Z'),
(1759, 1, 1, 769, 'notes', '2017-09-03T09:27:57Z'),
(1760, 1, 1, 770, 'notes', '2017-09-03T09:27:57Z'),
(1761, 1, 1, 771, 'notes', '2017-09-03T09:27:57Z'),
(1762, 2, 1, 772, 'notes', '2017-09-03T09:27:57Z'),
(1763, 1, 1, 773, 'notes', '2017-09-03T09:27:57Z'),
(1764, 1, 1, 774, 'notes', '2017-09-03T09:27:57Z'),
(1765, 1, 1, 775, 'notes', '2017-09-03T09:27:57Z'),
(1766, 1, 1, 776, 'notes', '2017-09-03T09:27:57Z'),
(1767, 1, 1, 777, 'notes', '2017-09-03T09:27:57Z'),
(1768, 1, 1, 778, 'notes', '2017-09-03T09:27:57Z'),
(1769, 1, 1, 779, 'notes', '2017-09-03T09:27:57Z'),
(1770, 1, 1, 780, 'notes', '2017-09-03T09:27:57Z'),
(1772, 1, 1, 782, 'notes', '2017-09-03T09:27:57Z'),
(1773, 1, 1, 783, 'notes', '2017-09-03T09:27:57Z'),
(1774, 1, 1, 784, 'notes', '2017-09-03T09:27:57Z'),
(1775, 1, 1, 785, 'notes', '2017-09-03T09:27:57Z'),
(1776, 1, 1, 786, 'notes', '2017-09-03T09:27:57Z'),
(1777, 1, 1, 787, 'notes', '2017-09-03T09:27:57Z'),
(1778, 1, 1, 788, 'notes', '2017-09-03T09:27:57Z'),
(1779, 2, 1, 789, 'notes', '2017-09-03T09:27:57Z'),
(1780, 1, 1, 790, 'notes', '2017-09-03T09:27:57Z'),
(1781, 1, 1, 791, 'notes', '2017-09-03T09:27:57Z'),
(1782, 2, 1, 792, 'notes', '2017-09-03T09:27:57Z'),
(1783, 1, 1, 793, 'notes', '2017-09-03T09:27:57Z'),
(1784, 1, 1, 794, 'notes', '2017-09-03T09:27:57Z'),
(1785, 2, 1, 795, 'notes', '2017-09-03T09:27:57Z'),
(1786, 1, 1, 796, 'notes', '2017-09-03T09:27:57Z'),
(1787, 1, 1, 797, 'notes', '2017-09-03T09:27:57Z'),
(1788, 1, 1, 798, 'notes', '2017-09-03T09:27:57Z'),
(1789, 1, 1, 799, 'notes', '2017-09-03T09:27:57Z'),
(1790, 1, 1, 800, 'notes', '2017-09-03T09:27:57Z'),
(1791, 1, 1, 801, 'notes', '2017-09-03T09:27:57Z'),
(1792, 1, 1, 802, 'notes', '2017-09-03T09:27:57Z'),
(1793, 1, 1, 803, 'notes', '2017-09-03T09:27:57Z'),
(1794, 1, 1, 804, 'notes', '2017-09-03T09:27:57Z'),
(1795, 1, 1, 805, 'notes', '2017-09-03T09:27:57Z'),
(1796, 1, 1, 806, 'notes', '2017-09-03T09:27:57Z'),
(1797, 1, 1, 807, 'notes', '2017-09-03T09:27:57Z'),
(1798, 1, 1, 808, 'notes', '2017-09-03T09:27:57Z'),
(1799, 1, 1, 809, 'notes', '2017-09-03T09:27:57Z'),
(1800, 1, 1, 810, 'notes', '2017-09-03T09:27:57Z'),
(1801, 1, 1, 811, 'notes', '2017-09-03T09:27:57Z'),
(1802, 1, 1, 812, 'notes', '2017-09-03T09:27:57Z'),
(1803, 1, 1, 813, 'notes', '2017-09-03T09:27:57Z'),
(1804, 1, 1, 814, 'notes', '2017-09-03T09:27:57Z'),
(1805, 1, 1, 815, 'notes', '2017-09-03T09:27:57Z'),
(1806, 1, 1, 816, 'notes', '2017-09-03T09:27:57Z'),
(1807, 1, 1, 817, 'notes', '2017-09-03T09:27:57Z'),
(1808, 1, 1, 818, 'notes', '2017-09-03T09:27:57Z'),
(1809, 1, 1, 819, 'notes', '2017-09-03T09:27:57Z'),
(1810, 1, 1, 820, 'notes', '2017-09-03T09:27:57Z'),
(1811, 1, 1, 821, 'notes', '2017-09-03T09:27:57Z'),
(1812, 1, 1, 822, 'notes', '2017-09-03T09:27:57Z'),
(1813, 1, 1, 823, 'notes', '2017-09-03T09:27:57Z'),
(1814, 1, 1, 824, 'notes', '2017-09-03T09:27:57Z'),
(1815, 1, 1, 825, 'notes', '2017-09-03T09:27:57Z'),
(1816, 1, 1, 826, 'notes', '2017-09-03T09:27:57Z'),
(1817, 1, 1, 827, 'notes', '2017-09-03T09:27:57Z'),
(1818, 1, 1, 828, 'notes', '2017-09-03T09:27:57Z'),
(1819, 1, 1, 829, 'notes', '2017-09-03T09:27:57Z'),
(1820, 1, 1, 830, 'notes', '2017-09-03T09:27:57Z'),
(1821, 1, 1, 831, 'notes', '2017-09-03T09:27:57Z'),
(1822, 1, 1, 832, 'notes', '2017-09-03T09:27:57Z'),
(1823, 1, 1, 833, 'notes', '2017-09-03T09:27:57Z'),
(1824, 1, 1, 834, 'notes', '2017-09-03T09:27:57Z'),
(1825, 1, 1, 835, 'notes', '2017-09-03T09:27:57Z'),
(1826, 1, 1, 836, 'notes', '2017-09-03T09:27:57Z'),
(1827, 1, 1, 837, 'notes', '2017-09-03T09:27:57Z'),
(1828, 1, 1, 838, 'notes', '2017-09-03T09:27:57Z'),
(1829, 1, 1, 839, 'notes', '2017-09-03T09:27:57Z'),
(1830, 2, 1, 840, 'notes', '2017-09-03T09:27:57Z'),
(1831, 1, 1, 841, 'notes', '2017-09-03T09:27:57Z'),
(1832, 1, 1, 842, 'notes', '2017-09-03T09:27:57Z'),
(1833, 1, 1, 843, 'notes', '2017-09-03T09:27:57Z'),
(1834, 1, 1, 844, 'notes', '2017-09-03T09:27:57Z'),
(1835, 1, 1, 845, 'notes', '2017-09-03T09:27:57Z'),
(1836, 1, 1, 846, 'notes', '2017-09-03T09:27:57Z'),
(1837, 1, 1, 847, 'notes', '2017-09-03T09:27:57Z'),
(1838, 1, 1, 848, 'notes', '2017-09-03T09:27:57Z'),
(1839, 1, 1, 849, 'notes', '2017-09-03T09:27:57Z'),
(1840, 1, 1, 850, 'notes', '2017-09-03T09:27:57Z'),
(1841, 1, 1, 851, 'notes', '2017-09-03T09:27:57Z'),
(1842, 1, 1, 852, 'notes', '2017-09-03T09:27:57Z'),
(1843, 2, 1, 853, 'notes', '2017-09-03T09:27:57Z'),
(1844, 1, 1, 854, 'notes', '2017-09-03T09:27:57Z'),
(1845, 1, 1, 855, 'notes', '2017-09-03T09:27:57Z'),
(1846, 1, 1, 856, 'notes', '2017-09-03T09:27:57Z'),
(1847, 1, 1, 857, 'notes', '2017-09-03T09:27:57Z'),
(1848, 1, 1, 858, 'notes', '2017-09-03T09:27:57Z'),
(1849, 1, 1, 859, 'notes', '2017-09-03T09:27:57Z'),
(1850, 1, 1, 860, 'notes', '2017-09-03T09:27:57Z'),
(1851, 1, 1, 861, 'notes', '2017-09-03T09:27:57Z'),
(1852, 1, 1, 862, 'notes', '2017-09-03T09:27:57Z'),
(1853, 1, 1, 863, 'notes', '2017-09-03T09:27:57Z'),
(1854, 1, 1, 864, 'notes', '2017-09-03T09:27:57Z'),
(1855, 1, 1, 865, 'notes', '2017-09-03T09:27:57Z'),
(1856, 1, 1, 866, 'notes', '2017-09-03T09:27:57Z'),
(1857, 2, 1, 867, 'notes', '2017-09-03T09:27:57Z'),
(1858, 2, 1, 868, 'notes', '2017-09-03T09:27:57Z'),
(1859, 1, 1, 869, 'notes', '2017-09-03T09:27:57Z'),
(1860, 1, 1, 870, 'notes', '2017-09-03T09:27:57Z'),
(1861, 1, 1, 871, 'notes', '2017-09-03T09:27:57Z'),
(1862, 1, 1, 872, 'notes', '2017-09-03T09:27:57Z'),
(1863, 1, 1, 873, 'notes', '2017-09-03T09:27:57Z'),
(1864, 1, 1, 874, 'notes', '2017-09-03T09:27:57Z'),
(1865, 1, 1, 875, 'notes', '2017-09-03T09:27:57Z'),
(1866, 1, 1, 876, 'notes', '2017-09-03T09:27:57Z'),
(1867, 1, 1, 877, 'notes', '2017-09-03T09:27:57Z'),
(1868, 1, 1, 878, 'notes', '2017-09-03T09:27:57Z'),
(1869, 1, 1, 879, 'notes', '2017-09-03T09:27:57Z'),
(1870, 1, 1, 880, 'notes', '2017-09-03T09:27:57Z'),
(1871, 1, 1, 881, 'notes', '2017-09-03T09:27:57Z'),
(1872, 1, 1, 882, 'notes', '2017-09-03T09:27:57Z'),
(1873, 1, 1, 883, 'notes', '2017-09-03T09:27:57Z'),
(1874, 1, 1, 884, 'notes', '2017-09-03T09:27:57Z'),
(1875, 1, 1, 885, 'notes', '2017-09-03T09:27:57Z'),
(1876, 1, 1, 886, 'notes', '2017-09-03T09:27:57Z'),
(1877, 1, 1, 887, 'notes', '2017-09-03T09:27:57Z'),
(1878, 1, 1, 888, 'notes', '2017-09-03T09:27:57Z'),
(1879, 2, 1, 889, 'notes', '2017-09-03T09:27:57Z'),
(1880, 2, 1, 890, 'notes', '2017-09-03T09:27:57Z'),
(1881, 2, 1, 891, 'notes', '2017-09-03T09:27:57Z'),
(1882, 2, 1, 892, 'notes', '2017-09-03T09:27:57Z'),
(1885, 1, 1, 895, 'notes', '2017-09-03T09:27:57Z'),
(1886, 1, 1, 896, 'notes', '2017-09-03T09:27:57Z'),
(1887, 1, 1, 897, 'notes', '2017-09-03T09:27:57Z'),
(1888, 1, 1, 898, 'notes', '2017-09-03T09:27:57Z'),
(1889, 1, 1, 899, 'notes', '2017-09-03T09:27:57Z'),
(1890, 2, 1, 900, 'notes', '2017-09-03T09:27:57Z'),
(1891, 1, 1, 901, 'notes', '2017-09-03T09:27:57Z'),
(1892, 1, 1, 902, 'notes', '2017-09-03T09:27:57Z'),
(1893, 1, 1, 903, 'notes', '2017-09-03T09:27:57Z'),
(1894, 1, 1, 904, 'notes', '2017-09-03T09:27:57Z'),
(1895, 1, 1, 905, 'notes', '2017-09-03T09:27:57Z'),
(1898, 1, 1, 908, 'notes', '2017-09-03T09:27:57Z'),
(1899, 1, 1, 909, 'notes', '2017-09-03T09:27:57Z'),
(1900, 1, 1, 910, 'notes', '2017-09-03T09:27:57Z'),
(1901, 2, 1, 911, 'notes', '2017-09-03T09:27:57Z'),
(1902, 1, 1, 912, 'notes', '2017-09-03T09:27:57Z'),
(1903, 1, 1, 913, 'notes', '2017-09-03T09:27:57Z'),
(1905, 1, 1, 915, 'notes', '2017-09-03T09:27:57Z'),
(1906, 1, 1, 916, 'notes', '2017-09-03T09:27:57Z'),
(1907, 1, 1, 917, 'notes', '2017-09-03T09:27:57Z'),
(1908, 2, 1, 918, 'notes', '2017-09-03T09:27:57Z'),
(1909, 1, 1, 919, 'notes', '2017-09-03T09:27:57Z'),
(1910, 1, 1, 920, 'notes', '2017-09-03T09:27:57Z'),
(1911, 1, 1, 921, 'notes', '2017-09-03T09:27:57Z'),
(1914, 1, 1, 924, 'notes', '2017-09-03T09:27:57Z'),
(1915, 2, 1, 925, 'notes', '2017-09-03T09:27:57Z'),
(1916, 1, 1, 926, 'notes', '2017-09-03T09:27:57Z'),
(1917, 1, 1, 927, 'notes', '2017-09-03T09:27:57Z'),
(1918, 1, 1, 928, 'notes', '2017-09-03T09:27:57Z'),
(1919, 2, 1, 929, 'notes', '2017-09-03T09:27:57Z'),
(1920, 1, 1, 930, 'notes', '2017-09-03T09:27:57Z'),
(1921, 1, 1, 931, 'notes', '2017-09-03T09:27:57Z'),
(1922, 1, 1, 932, 'notes', '2017-09-03T09:27:57Z'),
(1923, 1, 1, 933, 'notes', '2017-09-03T09:27:57Z'),
(1924, 1, 1, 934, 'notes', '2017-09-03T09:27:57Z'),
(1927, 1, 1, 937, 'notes', '2017-09-03T09:27:57Z'),
(1928, 1, 1, 938, 'notes', '2017-09-03T09:27:57Z'),
(1929, 1, 1, 939, 'notes', '2017-09-03T09:27:57Z'),
(1930, 1, 1, 940, 'notes', '2017-09-03T09:27:57Z'),
(1931, 1, 1, 941, 'notes', '2017-09-03T09:27:57Z'),
(1932, 1, 1, 942, 'notes', '2017-09-03T09:27:57Z'),
(1933, 1, 1, 943, 'notes', '2017-09-03T09:27:57Z'),
(1934, 1, 1, 944, 'notes', '2017-09-03T09:27:57Z'),
(1935, 1, 1, 945, 'notes', '2017-09-03T09:27:57Z'),
(1938, 1, 1, 948, 'notes', '2017-09-03T09:27:57Z'),
(1941, 1, 1, 951, 'notes', '2017-09-03T09:27:57Z'),
(1942, 1, 1, 952, 'notes', '2017-09-03T09:27:57Z'),
(1944, 1, 1, 954, 'notes', '2017-09-03T09:27:57Z'),
(1945, 1, 1, 955, 'notes', '2017-09-03T09:27:57Z'),
(1946, 1, 1, 956, 'notes', '2017-09-03T09:27:57Z'),
(1948, 1, 1, 958, 'notes', '2017-09-03T09:27:57Z'),
(1949, 1, 1, 959, 'notes', '2017-09-03T09:27:57Z'),
(1950, 1, 1, 960, 'notes', '2017-09-03T09:27:57Z'),
(1951, 1, 1, 961, 'notes', '2017-09-03T09:27:57Z'),
(1952, 1, 1, 962, 'notes', '2017-09-03T09:27:57Z'),
(1953, 1, 1, 963, 'notes', '2017-09-03T09:27:57Z'),
(1954, 1, 1, 964, 'notes', '2017-09-03T09:27:57Z'),
(1955, 1, 1, 965, 'notes', '2017-09-03T09:27:57Z'),
(1956, 1, 1, 966, 'notes', '2017-09-03T09:27:57Z'),
(1957, 1, 1, 967, 'notes', '2017-09-03T09:27:57Z'),
(1958, 1, 1, 968, 'notes', '2017-09-03T09:27:57Z'),
(1959, 1, 1, 969, 'notes', '2017-09-03T09:27:57Z'),
(1960, 1, 1, 970, 'notes', '2017-09-03T09:27:57Z'),
(1961, 1, 1, 971, 'notes', '2017-09-03T09:27:57Z'),
(1962, 1, 1, 972, 'notes', '2017-09-03T09:27:57Z'),
(1963, 1, 1, 973, 'notes', '2017-09-03T09:27:57Z'),
(1964, 1, 1, 974, 'notes', '2017-09-03T09:27:57Z'),
(1965, 1, 1, 975, 'notes', '2017-09-03T09:27:57Z'),
(1967, 1, 1, 977, 'notes', '2017-09-03T09:27:57Z'),
(1968, 1, 1, 978, 'notes', '2017-09-03T09:27:57Z'),
(1969, 1, 1, 979, 'notes', '2017-09-03T09:27:57Z'),
(1970, 1, 1, 980, 'notes', '2017-09-03T09:27:57Z'),
(1971, 1, 1, 981, 'notes', '2017-09-03T09:27:57Z'),
(1972, 1, 1, 982, 'notes', '2017-09-03T09:27:57Z'),
(1973, 1, 1, 983, 'notes', '2017-09-03T09:27:57Z'),
(2011, 1, 1, 1021, 'notes', '2017-09-03T09:27:57Z'),
(2013, 1, 1, 1023, 'notes', '2017-09-03T09:27:57Z'),
(2015, 1, 1, 1025, 'notes', '2017-09-03T09:27:57Z'),
(2019, 1, 1, 1029, 'notes', '2017-09-03T09:27:57Z'),
(2020, 1, 1, 1030, 'notes', '2017-09-03T09:27:57Z'),
(2023, 1, 1, 1033, 'notes', '2017-09-03T09:27:57Z'),
(2025, 1, 1, 1035, 'notes', '2017-09-03T09:27:57Z'),
(2026, 1, 1, 1036, 'notes', '2017-09-03T09:27:57Z'),
(2028, 2, 1, 1038, 'notes', '2017-09-03T09:27:57Z'),
(2029, 1, 1, 1039, 'notes', '2017-09-03T09:27:57Z'),
(2033, 1, 1, 1043, 'notes', '2017-09-03T09:27:57Z'),
(2034, 1, 1, 1044, 'notes', '2017-09-03T09:27:57Z'),
(2035, 1, 1, 1045, 'notes', '2017-09-03T09:27:57Z'),
(2036, 1, 1, 1046, 'notes', '2017-09-03T09:27:57Z'),
(2037, 1, 1, 1047, 'notes', '2017-09-03T09:27:57Z'),
(2038, 1, 1, 1048, 'notes', '2017-09-03T09:27:57Z'),
(2039, 1, 1, 1049, 'notes', '2017-09-03T09:27:57Z'),
(2040, 1, 1, 1050, 'notes', '2017-09-03T09:27:57Z'),
(2041, 1, 1, 1051, 'notes', '2017-09-03T09:27:57Z'),
(2042, 1, 1, 1052, 'notes', '2017-09-03T09:27:57Z'),
(2043, 2, 1, 1053, 'notes', '2017-09-03T09:27:57Z'),
(2044, 1, 1, 1054, 'notes', '2017-09-03T09:27:57Z'),
(2045, 1, 1, 1055, 'notes', '2017-09-03T09:27:57Z'),
(2046, 1, 1, 1056, 'notes', '2017-09-03T09:27:57Z'),
(2047, 1, 1, 1057, 'notes', '2017-09-03T09:27:57Z'),
(2048, 2, 1, 1058, 'notes', '2017-09-03T09:27:57Z'),
(2049, 1, 1, 1059, 'notes', '2017-09-03T09:27:57Z'),
(2050, 1, 1, 1060, 'notes', '2017-09-03T09:27:57Z'),
(2051, 1, 1, 1061, 'notes', '2017-09-03T09:27:57Z'),
(2052, 1, 1, 1062, 'notes', '2017-09-03T09:27:57Z'),
(2053, 1, 1, 1063, 'notes', '2017-09-03T09:27:57Z'),
(2054, 1, 1, 1064, 'notes', '2017-09-03T09:27:57Z'),
(2055, 1, 1, 1065, 'notes', '2017-09-03T09:27:57Z'),
(2056, 1, 1, 1066, 'notes', '2017-09-03T09:27:57Z'),
(2057, 2, 1, 1067, 'notes', '2017-09-03T09:27:57Z'),
(2059, 1, 1, 1069, 'notes', '2017-09-03T09:27:57Z'),
(2060, 2, 1, 1070, 'notes', '2017-09-03T09:27:57Z'),
(2061, 1, 1, 1071, 'notes', '2017-09-03T09:27:57Z'),
(2062, 1, 1, 1072, 'notes', '2017-09-03T09:27:57Z'),
(2063, 1, 1, 1073, 'notes', '2017-09-03T09:27:57Z'),
(2064, 2, 1, 1074, 'notes', '2017-09-03T09:27:57Z'),
(2065, 1, 1, 1075, 'notes', '2017-09-03T09:27:57Z'),
(2066, 1, 1, 1076, 'notes', '2017-09-03T09:27:57Z'),
(2067, 2, 1, 1077, 'notes', '2017-09-03T09:27:57Z'),
(2068, 2, 1, 1078, 'notes', '2017-09-03T09:27:57Z'),
(2069, 2, 1, 1079, 'notes', '2017-09-03T09:27:57Z'),
(2070, 2, 1, 1080, 'notes', '2017-09-03T09:27:57Z'),
(2071, 1, 1, 1081, 'notes', '2017-09-03T09:27:57Z'),
(2072, 1, 1, 1082, 'notes', '2017-09-03T09:27:57Z'),
(2073, 2, 1, 1083, 'notes', '2017-09-03T09:27:57Z'),
(2079, 1, 1, 1089, 'notes', '2017-09-03T09:27:57Z'),
(2080, 1, 1, 1090, 'notes', '2017-09-03T09:27:57Z'),
(2081, 1, 1, 1091, 'notes', '2017-09-03T09:27:57Z'),
(2082, 2, 1, 1092, 'notes', '2017-09-03T09:27:57Z'),
(2083, 2, 1, 1093, 'notes', '2017-09-03T09:27:57Z'),
(2084, 1, 1, 1094, 'notes', '2017-09-03T09:27:57Z'),
(2085, 1, 1, 1095, 'notes', '2017-09-03T09:27:57Z'),
(2087, 1, 1, 1097, 'notes', '2017-09-03T09:27:57Z'),
(2089, 1, 1, 1099, 'notes', '2017-09-03T09:27:57Z'),
(2090, 1, 1, 1100, 'notes', '2017-09-03T09:27:57Z'),
(2091, 2, 1, 1101, 'notes', '2017-09-03T09:27:57Z'),
(2092, 1, 1, 1102, 'notes', '2017-09-03T09:27:57Z'),
(2093, 1, 1, 1103, 'notes', '2017-09-03T09:27:57Z'),
(2094, 1, 1, 1104, 'notes', '2017-09-03T09:27:57Z'),
(2095, 1, 1, 1105, 'notes', '2017-09-03T09:27:57Z'),
(2097, 1, 1, 1107, 'notes', '2017-09-03T09:27:57Z'),
(2099, 1, 1, 1109, 'notes', '2017-09-03T09:27:57Z'),
(2100, 1, 1, 1110, 'notes', '2017-09-03T09:27:57Z'),
(2101, 1, 1, 1111, 'notes', '2017-09-03T09:27:57Z'),
(2102, 1, 1, 1112, 'notes', '2017-09-03T09:27:57Z'),
(2107, 1, 1, 1117, 'notes', '2017-09-03T09:27:57Z'),
(2108, 1, 1, 1118, 'notes', '2017-09-03T09:27:57Z'),
(2112, 1, 1, 1122, 'notes', '2017-09-03T09:27:57Z'),
(2113, 1, 1, 1123, 'notes', '2017-09-03T09:27:57Z'),
(2115, 1, 1, 1125, 'notes', '2017-09-03T09:27:57Z'),
(2117, 1, 1, 1127, 'notes', '2017-09-03T09:27:57Z'),
(2118, 1, 1, 1128, 'notes', '2017-09-03T09:27:57Z'),
(2119, 1, 1, 1129, 'notes', '2017-09-03T09:27:57Z'),
(2120, 1, 1, 1130, 'notes', '2017-09-03T09:27:57Z'),
(2121, 1, 1, 1131, 'notes', '2017-09-03T09:27:57Z'),
(2122, 1, 1, 1132, 'notes', '2017-09-03T09:27:57Z'),
(2123, 1, 1, 1133, 'notes', '2017-09-03T09:27:57Z'),
(2124, 1, 1, 1134, 'notes', '2017-09-03T09:27:57Z'),
(2127, 1, 1, 1137, 'notes', '2017-09-03T09:27:57Z'),
(2129, 1, 1, 1139, 'notes', '2017-09-03T09:27:57Z'),
(2130, 1, 1, 1140, 'notes', '2017-09-03T09:27:57Z'),
(2131, 1, 1, 1141, 'notes', '2017-09-03T09:27:57Z'),
(2132, 1, 1, 1142, 'notes', '2017-09-03T09:27:57Z'),
(2133, 1, 1, 1143, 'notes', '2017-09-03T09:27:57Z'),
(2134, 1, 1, 1144, 'notes', '2017-09-03T09:27:57Z'),
(2135, 1, 1, 1145, 'notes', '2017-09-03T09:27:57Z'),
(2136, 1, 1, 1146, 'notes', '2017-09-03T09:27:57Z'),
(2138, 1, 1, 1148, 'notes', '2017-09-03T09:27:57Z'),
(2140, 1, 1, 1150, 'notes', '2017-09-03T09:27:57Z'),
(2143, 2, 1, 1153, 'notes', '2017-09-03T09:27:57Z'),
(2144, 1, 1, 1154, 'notes', '2017-09-03T09:27:57Z'),
(2147, 1, 1, 1157, 'notes', '2017-09-03T09:27:57Z'),
(2148, 1, 1, 1158, 'notes', '2017-09-03T09:27:57Z'),
(2149, 1, 1, 1159, 'notes', '2017-09-03T09:27:57Z'),
(2150, 1, 1, 1160, 'notes', '2017-09-03T09:27:57Z'),
(2151, 1, 1, 1161, 'notes', '2017-09-03T09:27:57Z'),
(2153, 1, 1, 1163, 'notes', '2017-09-03T09:27:57Z'),
(2165, 1, 1, 1175, 'notes', '2017-09-03T09:27:57Z'),
(2167, 1, 1, 1177, 'notes', '2017-09-03T09:27:57Z'),
(2168, 1, 1, 1178, 'notes', '2017-09-03T09:27:57Z'),
(2169, 1, 1, 1179, 'notes', '2017-09-03T09:27:57Z'),
(2170, 1, 1, 1180, 'notes', '2017-09-03T09:27:57Z'),
(2172, 1, 1, 1182, 'notes', '2017-09-03T09:27:57Z'),
(2173, 1, 1, 1183, 'notes', '2017-09-03T09:27:57Z'),
(2174, 1, 1, 1184, 'notes', '2017-09-03T09:27:57Z'),
(2176, 1, 1, 1186, 'notes', '2017-09-03T09:27:57Z'),
(2177, 1, 1, 1187, 'notes', '2017-09-03T09:27:57Z'),
(2178, 1, 1, 1188, 'notes', '2017-09-03T09:27:57Z'),
(2179, 1, 1, 1189, 'notes', '2017-09-03T09:27:57Z'),
(2180, 1, 1, 1190, 'notes', '2017-09-03T09:27:57Z'),
(2181, 1, 1, 1191, 'notes', '2017-09-03T09:27:57Z'),
(2182, 1, 1, 1192, 'notes', '2017-09-03T09:27:57Z'),
(2183, 1, 1, 1193, 'notes', '2017-09-03T09:27:57Z'),
(2184, 1, 1, 1194, 'notes', '2017-09-03T09:27:57Z'),
(2185, 1, 1, 1195, 'notes', '2017-09-03T09:27:57Z'),
(2186, 1, 1, 1196, 'notes', '2017-09-03T09:27:57Z'),
(2187, 1, 1, 1197, 'notes', '2017-09-03T09:27:57Z'),
(2188, 1, 1, 1198, 'notes', '2017-09-03T09:27:57Z'),
(2189, 1, 1, 1199, 'notes', '2017-09-03T09:27:57Z'),
(2190, 1, 1, 1200, 'notes', '2017-09-03T09:27:57Z'),
(2191, 1, 1, 1201, 'notes', '2017-09-03T09:27:57Z'),
(2194, 1, 1, 1204, 'notes', '2017-09-03T09:27:57Z'),
(2196, 1, 1, 1206, 'notes', '2017-09-03T09:27:57Z'),
(2197, 1, 1, 1207, 'notes', '2017-09-03T09:27:57Z'),
(2200, 1, 1, 1210, 'notes', '2017-09-03T09:27:57Z'),
(2203, 1, 1, 1213, 'notes', '2017-09-03T09:27:57Z'),
(2204, 2, 1, 1214, 'notes', '2017-09-03T09:27:57Z'),
(2205, 2, 1, 1215, 'notes', '2017-09-03T09:27:57Z'),
(2206, 1, 1, 1216, 'notes', '2017-09-03T09:27:57Z'),
(2207, 2, 1, 1217, 'notes', '2017-09-03T09:27:57Z'),
(2208, 1, 1, 1218, 'notes', '2017-09-03T09:27:57Z'),
(2209, 1, 1, 1219, 'notes', '2017-09-03T09:27:57Z'),
(2210, 1, 1, 1220, 'notes', '2017-09-03T09:27:57Z'),
(2211, 2, 1, 1221, 'notes', '2017-09-03T09:27:57Z'),
(2212, 1, 1, 1222, 'notes', '2017-09-03T09:27:57Z'),
(2213, 2, 1, 1223, 'notes', '2017-09-03T09:27:57Z'),
(2215, 1, 1, 1225, 'notes', '2017-09-03T09:27:57Z'),
(2216, 2, 1, 1226, 'notes', '2017-09-03T09:27:57Z'),
(2217, 1, 1, 1227, 'notes', '2017-09-03T09:27:57Z'),
(2218, 2, 1, 1228, 'notes', '2017-09-03T09:27:57Z'),
(2219, 2, 1, 1229, 'notes', '2017-09-03T09:27:57Z'),
(2220, 1, 1, 1230, 'notes', '2017-09-03T09:27:57Z'),
(2221, 1, 1, 1231, 'notes', '2017-09-03T09:27:57Z'),
(2222, 1, 1, 1232, 'notes', '2017-09-03T09:27:57Z'),
(2223, 1, 1, 1233, 'notes', '2017-09-03T09:27:57Z'),
(2224, 2, 1, 1234, 'notes', '2017-09-03T09:27:57Z'),
(2225, 1, 1, 1235, 'notes', '2017-09-03T09:27:57Z'),
(2226, 1, 1, 1236, 'notes', '2017-09-03T09:27:57Z'),
(2227, 2, 1, 1237, 'notes', '2017-09-03T09:27:57Z'),
(2228, 1, 1, 1238, 'notes', '2017-09-03T09:27:57Z'),
(2229, 2, 1, 1239, 'notes', '2017-09-03T09:27:57Z'),
(2230, 2, 1, 1240, 'notes', '2017-09-03T09:27:57Z'),
(2231, 2, 1, 1241, 'notes', '2017-09-03T09:27:57Z'),
(2232, 1, 1, 1242, 'notes', '2017-09-03T09:27:57Z'),
(2233, 2, 1, 1243, 'notes', '2017-09-03T09:27:57Z'),
(2234, 1, 1, 1244, 'notes', '2017-09-03T09:27:57Z'),
(2235, 2, 1, 1245, 'notes', '2017-09-03T09:27:57Z'),
(2236, 1, 1, 1246, 'notes', '2017-09-03T09:27:57Z'),
(2237, 2, 1, 1247, 'notes', '2017-09-03T09:27:57Z'),
(2238, 1, 1, 1248, 'notes', '2017-09-03T09:27:57Z'),
(2239, 2, 1, 1249, 'notes', '2017-09-03T09:27:57Z'),
(2240, 1, 1, 1250, 'notes', '2017-09-03T09:27:57Z'),
(2241, 1, 1, 1251, 'notes', '2017-09-03T09:27:57Z'),
(2242, 2, 1, 1252, 'notes', '2017-09-03T09:27:57Z'),
(2243, 2, 1, 1253, 'notes', '2017-09-03T09:27:57Z'),
(2244, 2, 1, 1254, 'notes', '2017-09-03T09:27:57Z'),
(2245, 2, 1, 1255, 'notes', '2017-09-03T09:27:57Z'),
(2246, 2, 1, 1256, 'notes', '2017-09-03T09:27:57Z'),
(2247, 2, 1, 1257, 'notes', '2017-09-03T09:27:57Z'),
(2248, 2, 1, 1258, 'notes', '2017-09-03T09:27:57Z'),
(2250, 2, 1, 1260, 'notes', '2017-09-03T09:27:57Z'),
(2251, 2, 1, 1261, 'notes', '2017-09-03T09:27:57Z'),
(2252, 2, 1, 1262, 'notes', '2017-09-03T09:27:57Z'),
(2253, 2, 1, 1263, 'notes', '2017-09-03T09:27:57Z'),
(2254, 2, 1, 1264, 'notes', '2017-09-03T09:27:57Z'),
(2255, 2, 1, 1265, 'notes', '2017-09-03T09:27:57Z'),
(2256, 2, 1, 1266, 'notes', '2017-09-03T09:27:57Z'),
(2257, 1, 1, 1267, 'notes', '2017-09-03T09:27:57Z'),
(2258, 2, 1, 1268, 'notes', '2017-09-03T09:27:57Z'),
(2259, 2, 1, 1269, 'notes', '2017-09-03T09:27:57Z'),
(2260, 2, 1, 1270, 'notes', '2017-09-03T09:27:57Z'),
(2261, 2, 1, 1271, 'notes', '2017-09-03T09:27:57Z'),
(2262, 2, 1, 1272, 'notes', '2017-09-03T09:27:57Z'),
(2263, 1, 1, 1273, 'notes', '2017-09-03T09:27:57Z'),
(2264, 2, 1, 1274, 'notes', '2017-09-03T09:27:57Z'),
(2265, 2, 1, 1275, 'notes', '2017-09-03T09:27:57Z'),
(2267, 1, 1, 1277, 'notes', '2017-09-03T09:27:57Z'),
(2268, 1, 1, 1278, 'notes', '2017-09-03T09:27:57Z'),
(2269, 1, 1, 1279, 'notes', '2017-09-03T09:27:57Z'),
(2271, 1, 1, 1281, 'notes', '2017-09-03T09:27:57Z'),
(2272, 2, 1, 1282, 'notes', '2017-09-03T09:27:57Z'),
(2273, 1, 1, 1283, 'notes', '2017-09-03T09:27:57Z'),
(2274, 1, 1, 1284, 'notes', '2017-09-03T09:27:57Z'),
(2275, 2, 1, 1285, 'notes', '2017-09-03T09:27:57Z'),
(2276, 1, 1, 1286, 'notes', '2017-09-03T09:27:57Z'),
(2277, 2, 1, 1287, 'notes', '2017-09-03T09:27:57Z'),
(2278, 1, 1, 1288, 'notes', '2017-09-03T09:27:57Z'),
(2279, 2, 1, 1289, 'notes', '2017-09-03T09:27:57Z'),
(2280, 1, 1, 1290, 'notes', '2017-09-03T09:27:57Z'),
(2281, 1, 1, 1291, 'notes', '2017-09-03T09:27:57Z'),
(2282, 1, 1, 1292, 'notes', '2017-09-03T09:27:57Z'),
(2283, 1, 1, 1293, 'notes', '2017-09-03T09:27:57Z'),
(2284, 1, 1, 1294, 'notes', '2017-09-03T09:27:57Z'),
(2285, 1, 1, 1295, 'notes', '2017-09-03T09:27:57Z'),
(2286, 1, 1, 1296, 'notes', '2017-09-03T09:27:57Z'),
(2287, 1, 1, 1297, 'notes', '2017-09-03T09:27:57Z'),
(2288, 1, 1, 1298, 'notes', '2017-09-03T09:27:57Z'),
(2289, 1, 1, 1299, 'notes', '2017-09-03T09:27:57Z'),
(2291, 1, 1, 1301, 'notes', '2017-09-03T09:27:57Z'),
(2292, 1, 1, 1302, 'notes', '2017-09-03T09:27:57Z'),
(2293, 1, 1, 1303, 'notes', '2017-09-03T09:27:57Z'),
(2294, 2, 1, 1304, 'notes', '2017-09-03T09:27:57Z'),
(2295, 1, 1, 1305, 'notes', '2017-09-03T09:27:57Z'),
(2296, 2, 1, 1306, 'notes', '2017-09-03T09:27:57Z'),
(2297, 1, 1, 1307, 'notes', '2017-09-03T09:27:57Z'),
(2298, 1, 1, 1308, 'notes', '2017-09-03T09:27:57Z'),
(2299, 1, 1, 1309, 'notes', '2017-09-03T09:27:57Z'),
(2300, 1, 1, 1310, 'notes', '2017-09-03T09:27:57Z'),
(2301, 1, 1, 1311, 'notes', '2017-09-03T09:27:57Z'),
(2302, 1, 1, 1312, 'notes', '2017-09-03T09:27:57Z'),
(2303, 2, 1, 1313, 'notes', '2017-09-03T09:27:57Z'),
(2304, 2, 1, 1314, 'notes', '2017-09-03T09:27:57Z'),
(2305, 1, 1, 1315, 'notes', '2017-09-03T09:27:57Z'),
(2306, 1, 1, 1316, 'notes', '2017-09-03T09:27:57Z'),
(2307, 2, 1, 1317, 'notes', '2017-09-03T09:27:57Z'),
(2308, 1, 1, 1318, 'notes', '2017-09-03T09:27:57Z'),
(2309, 1, 1, 1319, 'notes', '2017-09-03T09:27:57Z'),
(2310, 2, 1, 1320, 'notes', '2017-09-03T09:27:57Z'),
(2311, 1, 1, 1321, 'notes', '2017-09-03T09:27:57Z'),
(2312, 1, 1, 1322, 'notes', '2017-09-03T09:27:57Z'),
(2313, 1, 1, 1323, 'notes', '2017-09-03T09:27:57Z'),
(2314, 1, 1, 1324, 'notes', '2017-09-03T09:27:57Z'),
(2315, 2, 1, 1325, 'notes', '2017-09-03T09:27:57Z'),
(2316, 1, 1, 1326, 'notes', '2017-09-03T09:27:57Z'),
(2317, 2, 1, 1327, 'notes', '2017-09-03T09:27:57Z'),
(2318, 1, 1, 1328, 'notes', '2017-09-03T09:27:57Z'),
(2319, 1, 1, 1329, 'notes', '2017-09-03T09:27:57Z'),
(2320, 1, 1, 1330, 'notes', '2017-09-03T09:27:57Z'),
(2321, 1, 1, 1331, 'notes', '2017-09-03T09:27:57Z'),
(2322, 1, 1, 1332, 'notes', '2017-09-03T09:27:57Z'),
(2323, 2, 1, 1333, 'notes', '2017-09-03T09:27:57Z'),
(2324, 1, 1, 1334, 'notes', '2017-09-03T09:27:57Z'),
(2325, 1, 1, 1335, 'notes', '2017-09-03T09:27:57Z'),
(2326, 2, 1, 1336, 'notes', '2017-09-03T09:27:57Z'),
(2327, 1, 1, 1337, 'notes', '2017-09-03T09:27:57Z'),
(2328, 2, 1, 1338, 'notes', '2017-09-03T09:27:57Z'),
(2329, 1, 1, 1339, 'notes', '2017-09-03T09:27:57Z'),
(2330, 2, 1, 1340, 'notes', '2017-09-03T09:27:57Z'),
(2331, 2, 1, 1341, 'notes', '2017-09-03T09:27:57Z'),
(2332, 1, 1, 1342, 'notes', '2017-09-03T09:27:57Z'),
(2333, 2, 1, 1343, 'notes', '2017-09-03T09:27:57Z'),
(2334, 2, 1, 1344, 'notes', '2017-09-03T09:27:57Z'),
(2335, 1, 1, 1345, 'notes', '2017-09-03T09:27:57Z'),
(2337, 1, 1, 1347, 'notes', '2017-09-03T09:27:57Z'),
(2339, 1, 1, 1349, 'notes', '2017-09-03T09:27:57Z'),
(2340, 2, 1, 1350, 'notes', '2017-09-03T09:27:57Z'),
(2341, 2, 1, 1351, 'notes', '2017-09-03T09:27:57Z'),
(2344, 1, 1, 1354, 'notes', '2017-09-03T09:27:57Z'),
(2350, 1, 1, 1360, 'notes', '2017-09-03T09:27:57Z'),
(2351, 1, 1, 1361, 'notes', '2017-09-03T09:27:57Z'),
(2353, 2, 1, 1363, 'notes', '2017-09-03T09:27:57Z'),
(2354, 2, 1, 1364, 'notes', '2017-09-03T09:27:57Z'),
(2356, 1, 1, 1366, 'notes', '2017-09-03T09:27:57Z'),
(2357, 1, 1, 1367, 'notes', '2017-09-03T09:27:57Z'),
(2358, 1, 1, 1368, 'notes', '2017-09-03T09:27:57Z'),
(2359, 1, 1, 1369, 'notes', '2017-09-03T09:27:57Z'),
(2360, 1, 1, 1370, 'notes', '2017-09-03T09:27:57Z'),
(2361, 1, 1, 1371, 'notes', '2017-09-03T09:27:57Z'),
(2362, 1, 1, 1372, 'notes', '2017-09-03T09:27:57Z'),
(2363, 1, 1, 1373, 'notes', '2017-09-03T09:27:57Z'),
(2364, 1, 1, 1374, 'notes', '2017-09-03T09:27:57Z'),
(2365, 1, 1, 1375, 'notes', '2017-09-03T09:27:57Z'),
(2366, 1, 1, 1376, 'notes', '2017-09-03T09:27:57Z'),
(2367, 1, 1, 1377, 'notes', '2017-09-03T09:27:57Z'),
(2368, 1, 1, 1378, 'notes', '2017-09-03T09:27:57Z'),
(2370, 1, 1, 1380, 'notes', '2017-09-03T09:27:57Z'),
(2371, 1, 1, 1381, 'notes', '2017-09-03T09:27:57Z'),
(2372, 1, 1, 1382, 'notes', '2017-09-03T09:27:57Z'),
(2373, 1, 1, 1383, 'notes', '2017-09-03T09:27:57Z'),
(2374, 1, 1, 1384, 'notes', '2017-09-03T09:27:57Z'),
(2376, 1, 1, 1386, 'notes', '2017-09-03T09:27:57Z'),
(2378, 1, 1, 1388, 'notes', '2017-09-03T09:27:57Z'),
(2383, 1, 1, 1393, 'notes', '2017-09-03T09:27:57Z'),
(2394, 1, 1, 1404, 'notes', '2017-09-03T09:27:57Z'),
(2399, 1, 1, 1409, 'notes', '2017-09-03T09:27:57Z'),
(2400, 1, 1, 1410, 'notes', '2017-09-03T09:27:57Z'),
(2401, 1, 1, 1411, 'notes', '2017-09-03T09:27:57Z'),
(2402, 1, 1, 1412, 'notes', '2017-09-03T09:27:57Z'),
(2403, 1, 1, 1413, 'notes', '2017-09-03T09:27:57Z'),
(2404, 1, 1, 1414, 'notes', '2017-09-03T09:27:57Z'),
(2405, 1, 1, 1415, 'notes', '2017-09-03T09:27:57Z'),
(2406, 1, 1, 1416, 'notes', '2017-09-03T09:27:57Z'),
(2407, 1, 1, 1417, 'notes', '2017-09-03T09:27:57Z'),
(2408, 1, 1, 1418, 'notes', '2017-09-03T09:27:57Z'),
(2409, 1, 1, 1419, 'notes', '2017-09-03T09:27:57Z'),
(2410, 1, 1, 1420, 'notes', '2017-09-03T09:27:57Z'),
(2411, 1, 1, 1421, 'notes', '2017-09-03T09:27:57Z'),
(2412, 1, 1, 1422, 'notes', '2017-09-03T09:27:57Z'),
(2413, 1, 1, 1423, 'notes', '2017-09-03T09:27:57Z'),
(2414, 1, 1, 1424, 'notes', '2017-09-03T09:27:57Z'),
(2415, 1, 1, 1425, 'notes', '2017-09-03T09:27:57Z'),
(2416, 1, 1, 1426, 'notes', '2017-09-03T09:27:57Z'),
(2417, 1, 1, 1427, 'notes', '2017-09-03T09:27:57Z'),
(2418, 1, 1, 1428, 'notes', '2017-09-03T09:27:57Z'),
(2419, 1, 1, 1429, 'notes', '2017-09-03T09:27:57Z'),
(2420, 1, 1, 1430, 'notes', '2017-09-03T09:27:57Z'),
(2421, 1, 1, 1431, 'notes', '2017-09-03T09:27:57Z'),
(2422, 1, 1, 1432, 'notes', '2017-09-03T09:27:57Z'),
(2423, 1, 1, 1433, 'notes', '2017-09-03T09:27:57Z'),
(2424, 1, 1, 1434, 'notes', '2017-09-03T09:27:57Z'),
(2425, 1, 1, 1435, 'notes', '2017-09-03T09:27:57Z'),
(2426, 1, 1, 1436, 'notes', '2017-09-03T09:27:57Z'),
(2427, 1, 1, 1437, 'notes', '2017-09-03T09:27:57Z'),
(2428, 1, 1, 1438, 'notes', '2017-09-03T09:27:57Z'),
(2429, 1, 1, 1439, 'notes', '2017-09-03T09:27:57Z'),
(2430, 1, 1, 1440, 'notes', '2017-09-03T09:27:57Z'),
(2431, 1, 1, 1441, 'notes', '2017-09-03T09:27:57Z'),
(2432, 1, 1, 1442, 'notes', '2017-09-03T09:27:57Z'),
(2433, 1, 1, 1443, 'notes', '2017-09-03T09:27:57Z'),
(2435, 1, 1, 1445, 'notes', '2017-09-03T09:27:57Z'),
(2436, 1, 1, 1446, 'notes', '2017-09-03T09:27:57Z'),
(2437, 1, 1, 1447, 'notes', '2017-09-03T09:27:57Z'),
(2438, 1, 1, 1448, 'notes', '2017-09-03T09:27:57Z'),
(2439, 1, 1, 1449, 'notes', '2017-09-03T09:27:57Z'),
(2440, 1, 1, 1450, 'notes', '2017-09-03T09:27:57Z'),
(2441, 1, 1, 1451, 'notes', '2017-09-03T09:27:57Z'),
(2442, 2, 1, 1452, 'notes', '2017-09-03T09:27:57Z'),
(2443, 1, 1, 1453, 'notes', '2017-09-03T09:27:57Z'),
(2444, 1, 1, 1454, 'notes', '2017-09-03T09:27:57Z'),
(2445, 1, 1, 1455, 'notes', '2017-09-03T09:27:57Z'),
(2446, 1, 1, 1456, 'notes', '2017-09-03T09:27:57Z'),
(2447, 1, 1, 1457, 'notes', '2017-09-03T09:27:57Z'),
(2448, 1, 1, 1458, 'notes', '2017-09-03T09:27:57Z'),
(2449, 1, 1, 1459, 'notes', '2017-09-03T09:27:57Z'),
(2450, 1, 1, 1460, 'notes', '2017-09-03T09:27:57Z'),
(2451, 1, 1, 1461, 'notes', '2017-09-03T09:27:57Z'),
(2452, 1, 1, 1462, 'notes', '2017-09-03T09:27:57Z'),
(2453, 1, 1, 1463, 'notes', '2017-09-03T09:27:57Z'),
(2454, 1, 1, 1464, 'notes', '2017-09-03T09:27:57Z'),
(2455, 1, 1, 1465, 'notes', '2017-09-03T09:27:57Z'),
(2456, 1, 1, 1466, 'notes', '2017-09-03T09:27:57Z'),
(2457, 1, 1, 1467, 'notes', '2017-09-03T09:27:57Z'),
(2458, 1, 1, 1468, 'notes', '2017-09-03T09:27:57Z'),
(2459, 1, 1, 1469, 'notes', '2017-09-03T09:27:57Z'),
(2460, 1, 1, 1470, 'notes', '2017-09-03T09:27:57Z'),
(2461, 1, 1, 1471, 'notes', '2017-09-03T09:27:57Z'),
(2462, 1, 1, 1472, 'notes', '2017-09-03T09:27:57Z'),
(2463, 1, 1, 1473, 'notes', '2017-09-03T09:27:57Z'),
(2464, 1, 1, 1474, 'notes', '2017-09-03T09:27:57Z'),
(2465, 1, 1, 1475, 'notes', '2017-09-03T09:27:57Z'),
(2466, 1, 1, 1476, 'notes', '2017-09-03T09:27:57Z'),
(2467, 1, 1, 1477, 'notes', '2017-09-03T09:27:57Z'),
(2468, 2, 1, 1478, 'notes', '2017-09-03T09:27:57Z'),
(2469, 2, 1, 1479, 'notes', '2017-09-03T09:27:57Z'),
(2470, 1, 1, 1480, 'notes', '2017-09-03T09:27:57Z'),
(2471, 1, 1, 1481, 'notes', '2017-09-03T09:27:57Z'),
(2472, 1, 1, 1482, 'notes', '2017-09-03T09:27:57Z'),
(2474, 1, 1, 1484, 'notes', '2017-09-03T09:27:57Z'),
(2475, 1, 1, 1485, 'notes', '2017-09-03T09:27:57Z'),
(2476, 1, 1, 1486, 'notes', '2017-09-03T09:27:57Z'),
(2477, 1, 1, 1487, 'notes', '2017-09-03T09:27:57Z'),
(2479, 1, 1, 1489, 'notes', '2017-09-03T09:27:57Z'),
(2483, 1, 1, 1493, 'notes', '2017-09-03T09:27:57Z'),
(2484, 1, 1, 1494, 'notes', '2017-09-03T09:27:57Z'),
(2485, 1, 1, 1495, 'notes', '2017-09-03T09:27:57Z'),
(2488, 1, 1, 1498, 'notes', '2017-09-03T09:27:57Z'),
(2490, 1, 1, 1500, 'notes', '2017-09-03T09:27:57Z'),
(2491, 1, 1, 1501, 'notes', '2017-09-03T09:27:57Z'),
(2492, 1, 1, 1502, 'notes', '2017-09-03T09:27:57Z'),
(2493, 1, 1, 1503, 'notes', '2017-09-03T09:27:57Z'),
(2494, 1, 1, 1504, 'notes', '2017-09-03T09:27:57Z'),
(2496, 1, 1, 1506, 'notes', '2017-09-03T09:27:57Z'),
(2497, 1, 1, 1507, 'notes', '2017-09-03T09:27:57Z'),
(2498, 1, 1, 1508, 'notes', '2017-09-03T09:27:57Z'),
(2499, 1, 1, 1509, 'notes', '2017-09-03T09:27:57Z'),
(2500, 1, 1, 1510, 'notes', '2017-09-03T09:27:57Z'),
(2501, 1, 1, 1511, 'notes', '2017-09-03T09:27:57Z'),
(2502, 1, 1, 1512, 'notes', '2017-09-03T09:27:57Z'),
(2504, 1, 1, 1514, 'notes', '2017-09-03T09:27:57Z'),
(2505, 1, 1, 1515, 'notes', '2017-09-03T09:27:57Z'),
(2506, 1, 1, 1516, 'notes', '2017-09-03T09:27:57Z'),
(2508, 1, 1, 1518, 'notes', '2017-09-03T09:27:57Z'),
(2509, 1, 1, 1519, 'notes', '2017-09-03T09:27:57Z'),
(2510, 1, 1, 1520, 'notes', '2017-09-03T09:27:57Z'),
(2512, 1, 1, 1522, 'notes', '2017-09-03T09:27:57Z'),
(2513, 1, 1, 1523, 'notes', '2017-09-03T09:27:57Z'),
(2514, 1, 1, 1524, 'notes', '2017-09-03T09:27:57Z'),
(2515, 1, 1, 1525, 'notes', '2017-09-03T09:27:57Z'),
(2516, 1, 1, 1526, 'notes', '2017-09-03T09:27:57Z'),
(2517, 1, 1, 1527, 'notes', '2017-09-03T09:27:57Z'),
(2518, 1, 1, 1528, 'notes', '2017-09-03T09:27:57Z'),
(2519, 1, 1, 1529, 'notes', '2017-09-03T09:27:57Z'),
(2520, 1, 1, 1530, 'notes', '2017-09-03T09:27:57Z'),
(2521, 1, 1, 1531, 'notes', '2017-09-03T09:27:57Z'),
(2522, 1, 1, 1532, 'notes', '2017-09-03T09:27:57Z'),
(2523, 1, 1, 1533, 'notes', '2017-09-03T09:27:57Z'),
(2524, 1, 1, 1534, 'notes', '2017-09-03T09:27:57Z'),
(2525, 1, 1, 1535, 'notes', '2017-09-03T09:27:57Z'),
(2527, 1, 1, 1537, 'notes', '2017-09-03T09:27:57Z'),
(2528, 1, 1, 1538, 'notes', '2017-09-03T09:27:57Z'),
(2529, 1, 1, 1539, 'notes', '2017-09-03T09:27:57Z'),
(2530, 2, 1, 1540, 'notes', '2017-09-03T09:27:57Z'),
(2531, 1, 1, 1541, 'notes', '2017-09-03T09:27:57Z'),
(2532, 1, 1, 1542, 'notes', '2017-09-03T09:27:57Z'),
(2533, 1, 1, 1543, 'notes', '2017-09-03T09:27:57Z'),
(2534, 1, 1, 1544, 'notes', '2017-09-03T09:27:57Z'),
(2535, 1, 1, 1545, 'notes', '2017-09-03T09:27:57Z'),
(2536, 1, 1, 1546, 'notes', '2017-09-03T09:27:57Z'),
(2537, 1, 1, 1547, 'notes', '2017-09-03T09:27:57Z'),
(2538, 1, 1, 1548, 'notes', '2017-09-03T09:27:57Z'),
(2540, 1, 1, 1550, 'notes', '2017-09-03T09:27:57Z'),
(2542, 1, 1, 1552, 'notes', '2017-09-03T09:27:57Z'),
(2544, 1, 1, 1554, 'notes', '2017-09-03T09:27:57Z'),
(2545, 1, 1, 1555, 'notes', '2017-09-03T09:27:57Z'),
(2546, 1, 1, 1556, 'notes', '2017-09-03T09:27:57Z'),
(2547, 1, 1, 1557, 'notes', '2017-09-03T09:27:57Z'),
(2548, 1, 1, 1558, 'notes', '2017-09-03T09:27:57Z'),
(2549, 1, 1, 1559, 'notes', '2017-09-03T09:27:57Z'),
(2550, 1, 1, 1560, 'notes', '2017-09-03T09:27:57Z'),
(2553, 1, 1, 1563, 'notes', '2017-09-03T09:27:57Z'),
(2554, 1, 1, 1564, 'notes', '2017-09-03T09:27:57Z'),
(2555, 1, 1, 1565, 'notes', '2017-09-03T09:27:57Z'),
(2556, 1, 1, 1566, 'notes', '2017-09-03T09:27:57Z'),
(2557, 1, 1, 1567, 'notes', '2017-09-03T09:27:57Z'),
(2558, 1, 1, 1568, 'notes', '2017-09-03T09:27:57Z'),
(2559, 1, 1, 1569, 'notes', '2017-09-03T09:27:57Z'),
(2560, 1, 1, 1570, 'notes', '2017-09-03T09:27:57Z'),
(2561, 1, 1, 1571, 'notes', '2017-09-03T09:27:57Z'),
(2562, 1, 1, 1572, 'notes', '2017-09-03T09:27:57Z'),
(2563, 1, 1, 1573, 'notes', '2017-09-03T09:27:57Z'),
(2565, 1, 1, 1575, 'notes', '2017-09-03T09:27:57Z'),
(2566, 1, 1, 1576, 'notes', '2017-09-03T09:27:57Z'),
(2567, 1, 1, 1577, 'notes', '2017-09-03T09:27:57Z'),
(2568, 1, 1, 1578, 'notes', '2017-09-03T09:27:57Z'),
(2569, 1, 1, 1579, 'notes', '2017-09-03T09:27:57Z'),
(2570, 1, 1, 1580, 'notes', '2017-09-03T09:27:57Z'),
(2571, 1, 1, 1581, 'notes', '2017-09-03T09:27:57Z'),
(2573, 1, 1, 1583, 'notes', '2017-09-03T09:27:57Z'),
(2574, 1, 1, 1584, 'notes', '2017-09-03T09:27:57Z'),
(2575, 1, 1, 1585, 'notes', '2017-09-03T09:27:57Z'),
(2576, 1, 1, 1586, 'notes', '2017-09-03T09:27:57Z'),
(2577, 1, 1, 1587, 'notes', '2017-09-03T09:27:57Z'),
(2578, 1, 1, 1588, 'notes', '2017-09-03T09:27:57Z'),
(2579, 1, 1, 1589, 'notes', '2017-09-03T09:27:57Z'),
(2580, 1, 1, 1590, 'notes', '2017-09-03T09:27:57Z'),
(2581, 1, 1, 1591, 'notes', '2017-09-03T09:27:57Z'),
(2582, 1, 1, 1592, 'notes', '2017-09-03T09:27:57Z'),
(2584, 1, 1, 1594, 'notes', '2017-09-03T09:27:57Z'),
(2586, 1, 1, 1596, 'notes', '2017-09-03T09:27:57Z'),
(2587, 1, 1, 1597, 'notes', '2017-09-03T09:27:57Z'),
(2593, 1, 1, 1603, 'notes', '2017-09-03T09:27:57Z'),
(2594, 1, 1, 1604, 'notes', '2017-09-03T09:27:57Z'),
(2596, 1, 1, 1606, 'notes', '2017-09-03T09:27:57Z'),
(2597, 1, 1, 1607, 'notes', '2017-09-03T09:27:57Z'),
(2599, 1, 1, 1609, 'notes', '2017-09-03T09:27:57Z'),
(2600, 1, 1, 1610, 'notes', '2017-09-03T09:27:57Z'),
(2601, 1, 1, 1611, 'notes', '2017-09-03T09:27:57Z'),
(2602, 1, 1, 1612, 'notes', '2017-09-03T09:27:57Z'),
(2603, 1, 1, 1613, 'notes', '2017-09-03T09:27:57Z'),
(2604, 1, 1, 1614, 'notes', '2017-09-03T09:27:57Z'),
(2605, 1, 1, 1615, 'notes', '2017-09-03T09:27:57Z'),
(2606, 1, 1, 1616, 'notes', '2017-09-03T09:27:57Z'),
(2607, 1, 1, 1617, 'notes', '2017-09-03T09:27:57Z'),
(2608, 1, 1, 1618, 'notes', '2017-09-03T09:27:57Z'),
(2609, 1, 1, 1619, 'notes', '2017-09-03T09:27:57Z'),
(2610, 1, 1, 1620, 'notes', '2017-09-03T09:27:57Z'),
(2611, 1, 1, 1621, 'notes', '2017-09-03T09:27:57Z'),
(2612, 1, 1, 1622, 'notes', '2017-09-03T09:27:57Z'),
(2613, 1, 1, 1623, 'notes', '2017-09-03T09:27:57Z'),
(2614, 1, 1, 1624, 'notes', '2017-09-03T09:27:57Z'),
(2616, 1, 1, 1626, 'notes', '2017-09-03T09:27:57Z'),
(2617, 2, 1, 1627, 'notes', '2017-09-03T09:27:57Z'),
(2619, 1, 1, 1629, 'notes', '2017-09-03T09:27:57Z'),
(2620, 1, 1, 1630, 'notes', '2017-09-03T09:27:57Z'),
(2624, 1, 1, 1634, 'notes', '2017-09-03T09:27:57Z'),
(2625, 1, 1, 1635, 'notes', '2017-09-03T09:27:57Z'),
(2626, 1, 1, 1636, 'notes', '2017-09-03T09:27:57Z'),
(2628, 1, 1, 1638, 'notes', '2017-09-03T09:27:57Z'),
(2629, 1, 1, 1639, 'notes', '2017-09-03T09:27:57Z'),
(2631, 1, 1, 1641, 'notes', '2017-09-03T09:27:57Z'),
(2632, 1, 1, 1642, 'notes', '2017-09-03T09:27:57Z'),
(2633, 1, 1, 1643, 'notes', '2017-09-03T09:27:57Z'),
(2634, 1, 1, 1644, 'notes', '2017-09-03T09:27:57Z'),
(2636, 1, 1, 1646, 'notes', '2017-09-03T09:27:57Z'),
(2637, 1, 1, 1647, 'notes', '2017-09-03T09:27:57Z'),
(2638, 2, 1, 1648, 'notes', '2017-09-03T09:27:57Z'),
(2639, 1, 1, 1649, 'notes', '2017-09-03T09:27:57Z'),
(2640, 2, 1, 1650, 'notes', '2017-09-03T09:27:57Z'),
(2641, 1, 1, 1651, 'notes', '2017-09-03T09:27:57Z'),
(2643, 1, 1, 1653, 'notes', '2017-09-03T09:27:57Z'),
(2644, 1, 1, 1654, 'notes', '2017-09-03T09:27:57Z'),
(2645, 1, 1, 1655, 'notes', '2017-09-03T09:27:57Z'),
(2646, 1, 1, 1656, 'notes', '2017-09-03T09:27:57Z'),
(2648, 2, 1, 1658, 'notes', '2017-09-03T09:27:57Z'),
(2649, 1, 1, 1659, 'notes', '2017-09-03T09:27:57Z'),
(2651, 1, 1, 1661, 'notes', '2017-09-03T09:27:57Z'),
(2652, 1, 1, 1662, 'notes', '2017-09-03T09:27:57Z'),
(2653, 1, 1, 1663, 'notes', '2017-09-03T09:27:57Z'),
(2654, 1, 1, 1664, 'notes', '2017-09-03T09:27:57Z'),
(2656, 1, 1, 1666, 'notes', '2017-09-03T09:27:57Z'),
(2657, 1, 1, 1667, 'notes', '2017-09-03T09:27:57Z'),
(2658, 1, 1, 1668, 'notes', '2017-09-03T09:27:57Z'),
(2659, 1, 1, 1669, 'notes', '2017-09-03T09:27:57Z'),
(2661, 2, 1, 1671, 'notes', '2017-09-03T09:27:57Z'),
(2663, 2, 1, 1673, 'notes', '2017-09-03T09:27:57Z'),
(2664, 1, 1, 1674, 'notes', '2017-09-03T09:27:57Z'),
(2665, 1, 1, 1675, 'notes', '2017-09-03T09:27:57Z'),
(2666, 1, 1, 1676, 'notes', '2017-09-03T09:27:57Z'),
(2668, 1, 1, 1678, 'notes', '2017-09-03T09:27:57Z'),
(2670, 2, 1, 1680, 'notes', '2017-09-03T09:27:57Z'),
(2672, 1, 1, 1682, 'notes', '2017-09-03T09:27:57Z'),
(2674, 1, 1, 1684, 'notes', '2017-09-03T09:27:57Z'),
(2675, 1, 1, 1685, 'notes', '2017-09-03T09:27:57Z'),
(2676, 1, 1, 1686, 'notes', '2017-09-03T09:27:57Z'),
(2677, 1, 1, 1687, 'notes', '2017-09-03T09:27:57Z'),
(2678, 1, 1, 1688, 'notes', '2017-09-03T09:27:57Z'),
(2679, 1, 1, 1689, 'notes', '2017-09-03T09:27:57Z'),
(2680, 1, 1, 1690, 'notes', '2017-09-03T09:27:57Z'),
(2681, 1, 1, 1691, 'notes', '2017-09-03T09:27:57Z'),
(2682, 1, 1, 1692, 'notes', '2017-09-03T09:27:57Z'),
(2683, 1, 1, 1693, 'notes', '2017-09-03T09:27:57Z'),
(2684, 1, 1, 1694, 'notes', '2017-09-03T09:27:57Z'),
(2685, 1, 1, 1695, 'notes', '2017-09-03T09:27:57Z'),
(2686, 1, 1, 1696, 'notes', '2017-09-03T09:27:57Z'),
(2687, 1, 1, 1697, 'notes', '2017-09-03T09:27:57Z'),
(2688, 1, 1, 1698, 'notes', '2017-09-03T09:27:57Z'),
(2689, 1, 1, 1699, 'notes', '2017-09-03T09:27:57Z'),
(2690, 1, 1, 1700, 'notes', '2017-09-03T09:27:57Z'),
(2691, 1, 1, 1701, 'notes', '2017-09-03T09:27:57Z'),
(2692, 1, 1, 1702, 'notes', '2017-09-03T09:27:57Z'),
(2693, 1, 1, 1703, 'notes', '2017-09-03T09:27:57Z'),
(2694, 1, 1, 1704, 'notes', '2017-09-03T09:27:57Z'),
(2695, 1, 1, 1705, 'notes', '2017-09-03T09:27:57Z'),
(2696, 1, 1, 1706, 'notes', '2017-09-03T09:27:57Z'),
(2697, 1, 1, 1707, 'notes', '2017-09-03T09:27:57Z'),
(2698, 1, 1, 1708, 'notes', '2017-09-03T09:27:57Z'),
(2699, 1, 1, 1709, 'notes', '2017-09-03T09:27:57Z'),
(2700, 1, 1, 1710, 'notes', '2017-09-03T09:27:57Z'),
(2701, 1, 1, 1711, 'notes', '2017-09-03T09:27:57Z'),
(2702, 1, 1, 1712, 'notes', '2017-09-03T09:27:57Z'),
(2703, 2, 1, 1713, 'notes', '2017-09-03T09:27:57Z'),
(2704, 1, 1, 1714, 'notes', '2017-09-03T09:27:57Z'),
(2705, 1, 1, 1715, 'notes', '2017-09-03T09:27:57Z'),
(2706, 1, 1, 1716, 'notes', '2017-09-03T09:27:57Z'),
(2707, 1, 1, 1717, 'notes', '2017-09-03T09:27:57Z'),
(2708, 1, 1, 1718, 'notes', '2017-09-03T09:27:57Z'),
(2709, 1, 1, 1719, 'notes', '2017-09-03T09:27:57Z'),
(2710, 1, 1, 1720, 'notes', '2017-09-03T09:27:57Z'),
(2711, 2, 1, 1721, 'notes', '2017-09-03T09:27:57Z'),
(2712, 1, 1, 1722, 'notes', '2017-09-03T09:27:57Z'),
(2713, 1, 1, 1723, 'notes', '2017-09-03T09:27:57Z'),
(2714, 1, 1, 1724, 'notes', '2017-09-03T09:27:57Z'),
(2715, 1, 1, 1725, 'notes', '2017-09-03T09:27:57Z'),
(2716, 1, 1, 1726, 'notes', '2017-09-03T09:27:57Z'),
(2717, 1, 1, 1727, 'notes', '2017-09-03T09:27:57Z'),
(2718, 1, 1, 1728, 'notes', '2017-09-03T09:27:57Z'),
(2719, 1, 1, 1729, 'notes', '2017-09-03T09:27:57Z'),
(2720, 1, 1, 1730, 'notes', '2017-09-03T09:27:57Z'),
(2721, 1, 1, 1731, 'notes', '2017-09-03T09:27:57Z'),
(2722, 1, 1, 1732, 'notes', '2017-09-03T09:27:57Z'),
(2723, 1, 1, 1733, 'notes', '2017-09-03T09:27:57Z'),
(2724, 2, 1, 1734, 'notes', '2017-09-03T09:27:57Z'),
(2725, 1, 1, 1735, 'notes', '2017-09-03T09:27:57Z'),
(2726, 1, 1, 1736, 'notes', '2017-09-03T09:27:57Z'),
(2727, 2, 1, 1737, 'notes', '2017-09-03T09:27:57Z'),
(2728, 2, 1, 1738, 'notes', '2017-09-03T09:27:57Z'),
(2729, 1, 1, 1739, 'notes', '2017-09-03T09:27:57Z'),
(2730, 1, 1, 1740, 'notes', '2017-09-03T09:27:57Z'),
(2731, 1, 1, 1741, 'notes', '2017-09-03T09:27:57Z'),
(2732, 1, 1, 1742, 'notes', '2017-09-03T09:27:57Z'),
(2733, 1, 1, 1743, 'notes', '2017-09-03T09:27:57Z'),
(2734, 1, 1, 1744, 'notes', '2017-09-03T09:27:57Z'),
(2735, 1, 1, 1745, 'notes', '2017-09-03T09:27:57Z'),
(2736, 1, 1, 1746, 'notes', '2017-09-03T09:27:57Z'),
(2737, 1, 1, 1747, 'notes', '2017-09-03T09:27:57Z'),
(2738, 1, 1, 1748, 'notes', '2017-09-03T09:27:57Z'),
(2739, 1, 1, 1749, 'notes', '2017-09-03T09:27:57Z'),
(2740, 1, 1, 1750, 'notes', '2017-09-03T09:27:57Z'),
(2741, 1, 1, 1751, 'notes', '2017-09-03T09:27:57Z'),
(2742, 1, 1, 1752, 'notes', '2017-09-03T09:27:57Z'),
(2743, 1, 1, 1753, 'notes', '2017-09-03T09:27:57Z'),
(2744, 1, 1, 1754, 'notes', '2017-09-03T09:27:57Z'),
(2745, 1, 1, 1755, 'notes', '2017-09-03T09:27:57Z'),
(2746, 1, 1, 1756, 'notes', '2017-09-03T09:27:57Z'),
(2747, 1, 1, 1757, 'notes', '2017-09-03T09:27:57Z'),
(2748, 1, 1, 1758, 'notes', '2017-09-03T09:27:57Z'),
(2749, 1, 1, 1759, 'notes', '2017-09-03T09:27:57Z'),
(2750, 1, 1, 1760, 'notes', '2017-09-03T09:27:57Z'),
(2751, 1, 1, 1761, 'notes', '2017-09-03T09:27:57Z'),
(2752, 1, 1, 1762, 'notes', '2017-09-03T09:27:57Z'),
(2753, 1, 1, 1763, 'notes', '2017-09-03T09:27:57Z'),
(2758, 1, 1, 1768, 'notes', '2017-09-03T09:27:57Z'),
(2759, 1, 1, 1769, 'notes', '2017-09-03T09:27:57Z'),
(2760, 1, 1, 1770, 'notes', '2017-09-03T09:27:57Z'),
(2761, 1, 1, 1771, 'notes', '2017-09-03T09:27:57Z'),
(2762, 1, 1, 1772, 'notes', '2017-09-03T09:27:57Z'),
(2763, 1, 1, 1773, 'notes', '2017-09-03T09:27:57Z'),
(2764, 1, 1, 1774, 'notes', '2017-09-03T09:27:57Z'),
(2765, 1, 1, 1775, 'notes', '2017-09-03T09:27:57Z'),
(2766, 1, 1, 1776, 'notes', '2017-09-03T09:27:57Z'),
(2767, 1, 1, 1777, 'notes', '2017-09-03T09:27:57Z'),
(2768, 2, 1, 1778, 'notes', '2017-09-03T09:27:57Z'),
(2769, 2, 1, 1779, 'notes', '2017-09-03T09:27:57Z'),
(2770, 1, 1, 1780, 'notes', '2017-09-03T09:27:57Z'),
(2771, 1, 1, 1781, 'notes', '2017-09-03T09:27:57Z'),
(2772, 1, 1, 1782, 'notes', '2017-09-03T09:27:57Z'),
(2773, 1, 1, 1783, 'notes', '2017-09-03T09:27:57Z'),
(2774, 1, 1, 1784, 'notes', '2017-09-03T09:27:57Z'),
(2775, 1, 1, 1785, 'notes', '2017-09-03T09:27:57Z'),
(2776, 1, 1, 1786, 'notes', '2017-09-03T09:27:57Z'),
(2777, 1, 1, 1787, 'notes', '2017-09-03T09:27:57Z'),
(2778, 1, 1, 1788, 'notes', '2017-09-03T09:27:57Z'),
(2779, 1, 1, 1789, 'notes', '2017-09-03T09:27:57Z'),
(2780, 1, 1, 1790, 'notes', '2017-09-03T09:27:57Z'),
(2781, 1, 1, 1791, 'notes', '2017-09-03T09:27:57Z'),
(2783, 1, 1, 1793, 'notes', '2017-09-03T09:27:57Z'),
(2784, 1, 1, 1794, 'notes', '2017-09-03T09:27:57Z'),
(2785, 1, 1, 1795, 'notes', '2017-09-03T09:27:57Z'),
(2786, 1, 1, 1796, 'notes', '2017-09-03T09:27:57Z'),
(2787, 1, 1, 1797, 'notes', '2017-09-03T09:27:57Z'),
(2788, 1, 1, 1798, 'notes', '2017-09-03T09:27:57Z'),
(2790, 1, 1, 1800, 'notes', '2017-09-03T09:27:57Z'),
(2791, 1, 1, 1801, 'notes', '2017-09-03T09:27:57Z'),
(2793, 1, 1, 1803, 'notes', '2017-09-03T09:27:57Z'),
(2794, 1, 1, 1804, 'notes', '2017-09-03T09:27:57Z'),
(2795, 1, 1, 1805, 'notes', '2017-09-03T09:27:57Z'),
(2796, 1, 1, 1806, 'notes', '2017-09-03T09:27:57Z'),
(2797, 1, 1, 1807, 'notes', '2017-09-03T09:27:57Z'),
(2798, 2, 1, 1808, 'notes', '2017-09-03T09:27:57Z'),
(2799, 2, 1, 1809, 'notes', '2017-09-03T09:27:57Z'),
(2800, 1, 1, 1810, 'notes', '2017-09-03T09:27:57Z'),
(2801, 1, 1, 1811, 'notes', '2017-09-03T09:27:57Z'),
(2802, 1, 1, 1812, 'notes', '2017-09-03T09:27:57Z'),
(2803, 1, 1, 1813, 'notes', '2017-09-03T09:27:57Z'),
(2804, 1, 1, 1814, 'notes', '2017-09-03T09:27:57Z'),
(2806, 1, 1, 1816, 'notes', '2017-09-03T09:27:57Z'),
(2807, 1, 1, 1817, 'notes', '2017-09-03T09:27:57Z'),
(2808, 1, 1, 1818, 'notes', '2017-09-03T09:27:57Z'),
(2809, 1, 1, 1819, 'notes', '2017-09-03T09:27:57Z'),
(2810, 1, 1, 1820, 'notes', '2017-09-03T09:27:57Z'),
(2811, 2, 1, 1821, 'notes', '2017-09-03T09:27:57Z'),
(2812, 1, 1, 1822, 'notes', '2017-09-03T09:27:57Z'),
(2813, 1, 1, 1823, 'notes', '2017-09-03T09:27:57Z'),
(2814, 1, 1, 1824, 'notes', '2017-09-03T09:27:57Z'),
(2815, 1, 1, 1825, 'notes', '2017-09-03T09:27:57Z'),
(2816, 1, 1, 1826, 'notes', '2017-09-03T09:27:57Z'),
(2817, 1, 1, 1827, 'notes', '2017-09-03T09:27:57Z'),
(2818, 1, 1, 1828, 'notes', '2017-09-03T09:27:57Z'),
(2819, 1, 1, 1829, 'notes', '2017-09-03T09:27:57Z'),
(2821, 1, 1, 1831, 'notes', '2017-09-03T09:27:57Z'),
(2822, 1, 1, 1832, 'notes', '2017-09-03T09:27:57Z'),
(2823, 1, 1, 1833, 'notes', '2017-09-03T09:27:57Z'),
(2825, 1, 1, 1835, 'notes', '2017-09-03T09:27:57Z'),
(2826, 1, 1, 1836, 'notes', '2017-09-03T09:27:57Z'),
(2827, 1, 1, 1837, 'notes', '2017-09-03T09:27:57Z'),
(2829, 1, 1, 1839, 'notes', '2017-09-03T09:27:57Z'),
(2830, 1, 1, 1840, 'notes', '2017-09-03T09:27:57Z'),
(2831, 1, 1, 1841, 'notes', '2017-09-03T09:27:57Z'),
(2832, 1, 1, 1842, 'notes', '2017-09-03T09:27:57Z'),
(2834, 1, 1, 1844, 'notes', '2017-09-03T09:27:57Z'),
(2835, 1, 1, 1845, 'notes', '2017-09-03T09:27:57Z'),
(2841, 1, 1, 1851, 'notes', '2017-09-03T09:27:57Z'),
(2842, 1, 1, 1852, 'notes', '2017-09-03T09:27:57Z'),
(2844, 1, 1, 1854, 'notes', '2017-09-03T09:27:57Z'),
(2845, 1, 1, 1855, 'notes', '2017-09-03T09:27:57Z'),
(2846, 1, 1, 1856, 'notes', '2017-09-03T09:27:57Z'),
(2847, 1, 1, 1857, 'notes', '2017-09-03T09:27:57Z'),
(2848, 1, 1, 1858, 'notes', '2017-09-03T09:27:57Z'),
(2849, 1, 1, 1859, 'notes', '2017-09-03T09:27:57Z'),
(2851, 1, 1, 1861, 'notes', '2017-09-03T09:27:57Z'),
(2853, 2, 1, 1863, 'notes', '2017-09-03T09:27:57Z'),
(2854, 2, 1, 1864, 'notes', '2017-09-03T09:27:57Z'),
(2855, 1, 1, 1865, 'notes', '2017-09-03T09:27:57Z'),
(2856, 2, 1, 1866, 'notes', '2017-09-03T09:27:57Z'),
(2857, 1, 1, 1867, 'notes', '2017-09-03T09:27:57Z'),
(2858, 1, 1, 1868, 'notes', '2017-09-03T09:27:57Z'),
(2859, 1, 1, 1869, 'notes', '2017-09-03T09:27:57Z'),
(2860, 1, 1, 1870, 'notes', '2017-09-03T09:27:57Z'),
(2861, 1, 1, 1871, 'notes', '2017-09-03T09:27:57Z'),
(2862, 1, 1, 1872, 'notes', '2017-09-03T09:27:57Z'),
(2863, 1, 1, 1873, 'notes', '2017-09-03T09:27:57Z'),
(2864, 2, 1, 1874, 'notes', '2017-09-03T09:27:57Z'),
(2865, 1, 1, 1875, 'notes', '2017-09-03T09:27:57Z'),
(2866, 1, 1, 1876, 'notes', '2017-09-03T09:27:57Z'),
(2867, 1, 1, 1877, 'notes', '2017-09-03T09:27:57Z'),
(2868, 1, 1, 1878, 'notes', '2017-09-03T09:27:57Z'),
(2870, 1, 1, 1880, 'notes', '2017-09-03T09:27:57Z'),
(2871, 2, 1, 1881, 'notes', '2017-09-03T09:27:57Z'),
(2872, 1, 1, 1882, 'notes', '2017-09-03T09:27:57Z'),
(2873, 1, 1, 1883, 'notes', '2017-09-03T09:27:57Z'),
(2874, 1, 1, 1884, 'notes', '2017-09-03T09:27:57Z'),
(2875, 1, 1, 1885, 'notes', '2017-09-03T09:27:57Z'),
(2877, 1, 1, 1887, 'notes', '2017-09-03T09:27:57Z'),
(2878, 1, 1, 1888, 'notes', '2017-09-03T09:27:57Z'),
(2881, 1, 1, 1891, 'notes', '2017-09-03T09:27:57Z'),
(2882, 2, 1, 1892, 'notes', '2017-09-03T09:27:57Z'),
(2883, 1, 1, 1893, 'notes', '2017-09-03T09:27:57Z'),
(2884, 1, 1, 1894, 'notes', '2017-09-03T09:27:57Z'),
(2885, 1, 1, 1895, 'notes', '2017-09-03T09:27:57Z'),
(2886, 1, 1, 1896, 'notes', '2017-09-03T09:27:57Z'),
(2887, 1, 1, 1897, 'notes', '2017-09-03T09:27:57Z'),
(2888, 1, 1, 1898, 'notes', '2017-09-03T09:27:57Z'),
(2889, 1, 1, 1899, 'notes', '2017-09-03T09:27:57Z'),
(2890, 1, 1, 1900, 'notes', '2017-09-03T09:27:57Z'),
(2891, 2, 1, 1901, 'notes', '2017-09-03T09:27:57Z'),
(2892, 1, 1, 1902, 'notes', '2017-09-03T09:27:57Z'),
(2893, 1, 1, 1903, 'notes', '2017-09-03T09:27:57Z'),
(2894, 1, 1, 1904, 'notes', '2017-09-03T09:27:57Z'),
(2895, 1, 1, 1905, 'notes', '2017-09-03T09:27:57Z'),
(2896, 1, 1, 1906, 'notes', '2017-09-03T09:27:57Z'),
(2897, 1, 1, 1907, 'notes', '2017-09-03T09:27:57Z'),
(2898, 2, 1, 1908, 'notes', '2017-09-03T09:27:57Z'),
(2899, 1, 1, 1909, 'notes', '2017-09-03T09:27:57Z'),
(2900, 1, 1, 1910, 'notes', '2017-09-03T09:27:57Z'),
(2901, 1, 1, 1911, 'notes', '2017-09-03T09:27:57Z'),
(2903, 1, 1, 1913, 'notes', '2017-09-03T09:27:57Z'),
(2904, 1, 1, 1914, 'notes', '2017-09-03T09:27:57Z'),
(2906, 2, 1, 1916, 'notes', '2017-09-03T09:27:57Z'),
(2907, 1, 1, 1917, 'notes', '2017-09-03T09:27:57Z'),
(2908, 1, 1, 1918, 'notes', '2017-09-03T09:27:57Z'),
(2909, 2, 1, 1919, 'notes', '2017-09-03T09:27:57Z'),
(2910, 1, 1, 1920, 'notes', '2017-09-03T09:27:57Z'),
(2911, 1, 1, 1921, 'notes', '2017-09-03T09:27:57Z'),
(2912, 1, 1, 1922, 'notes', '2017-09-03T09:27:57Z'),
(2913, 1, 1, 1923, 'notes', '2017-09-03T09:27:57Z'),
(2916, 1, 1, 1926, 'notes', '2017-09-03T09:27:57Z'),
(2917, 1, 1, 1927, 'notes', '2017-09-03T09:27:57Z'),
(2918, 1, 1, 1928, 'notes', '2017-09-03T09:27:57Z'),
(2919, 1, 1, 1929, 'notes', '2017-09-03T09:27:57Z'),
(2920, 1, 1, 1930, 'notes', '2017-09-03T09:27:57Z'),
(2921, 1, 1, 1931, 'notes', '2017-09-03T09:27:57Z'),
(2922, 1, 1, 1932, 'notes', '2017-09-03T09:27:57Z'),
(2923, 1, 1, 1933, 'notes', '2017-09-03T09:27:57Z'),
(2924, 1, 1, 1934, 'notes', '2017-09-03T09:27:57Z'),
(2925, 2, 1, 1935, 'notes', '2017-09-03T09:27:57Z'),
(2928, 1, 1, 1938, 'notes', '2017-09-03T09:27:57Z'),
(2929, 1, 1, 1939, 'notes', '2017-09-03T09:27:57Z'),
(2930, 2, 1, 1940, 'notes', '2017-09-03T09:27:57Z'),
(2931, 1, 1, 1941, 'notes', '2017-09-03T09:27:57Z'),
(2932, 1, 1, 1942, 'notes', '2017-09-03T09:27:57Z'),
(2933, 1, 1, 1943, 'notes', '2017-09-03T09:27:57Z'),
(2934, 1, 1, 1944, 'notes', '2017-09-03T09:27:57Z'),
(2935, 1, 1, 1945, 'notes', '2017-09-03T09:27:57Z'),
(2936, 1, 1, 1946, 'notes', '2017-09-03T09:27:57Z'),
(2937, 1, 1, 1947, 'notes', '2017-09-03T09:27:57Z'),
(2938, 1, 1, 1948, 'notes', '2017-09-03T09:27:57Z'),
(2939, 1, 1, 1949, 'notes', '2017-09-03T09:27:57Z'),
(2940, 1, 1, 1950, 'notes', '2017-09-03T09:27:57Z'),
(2941, 1, 1, 1951, 'notes', '2017-09-03T09:27:57Z'),
(2942, 1, 1, 1952, 'notes', '2017-09-03T09:27:57Z'),
(2943, 1, 1, 1953, 'notes', '2017-09-03T09:27:57Z'),
(2944, 1, 1, 1954, 'notes', '2017-09-03T09:27:57Z'),
(2945, 1, 1, 1955, 'notes', '2017-09-03T09:27:57Z'),
(2947, 1, 1, 1957, 'notes', '2017-09-03T09:27:57Z'),
(2948, 1, 1, 1958, 'notes', '2017-09-03T09:27:57Z'),
(2949, 1, 1, 1959, 'notes', '2017-09-03T09:27:57Z'),
(2950, 1, 1, 1960, 'notes', '2017-09-03T09:27:57Z'),
(2951, 1, 1, 1961, 'notes', '2017-09-03T09:27:57Z'),
(2952, 1, 1, 1962, 'notes', '2017-09-03T09:27:57Z'),
(2955, 1, 1, 1965, 'notes', '2017-09-03T09:27:57Z'),
(2956, 1, 1, 1966, 'notes', '2017-09-03T09:27:57Z'),
(2957, 2, 1, 1967, 'notes', '2017-09-03T09:27:57Z'),
(2958, 1, 1, 1968, 'notes', '2017-09-03T09:27:57Z'),
(2959, 1, 1, 1969, 'notes', '2017-09-03T09:27:57Z'),
(2960, 1, 1, 1970, 'notes', '2017-09-03T09:27:57Z'),
(2961, 1, 1, 1971, 'notes', '2017-09-03T09:27:57Z'),
(2963, 1, 1, 1973, 'notes', '2017-09-03T09:27:57Z'),
(2964, 1, 1, 1974, 'notes', '2017-09-03T09:27:57Z'),
(2966, 1, 1, 1976, 'notes', '2017-09-03T09:27:57Z'),
(2967, 1, 1, 1977, 'notes', '2017-09-03T09:27:57Z'),
(2968, 2, 1, 1978, 'notes', '2017-09-03T09:27:57Z'),
(2969, 1, 1, 1979, 'notes', '2017-09-03T09:27:57Z'),
(2970, 1, 1, 1980, 'notes', '2017-09-03T09:27:57Z'),
(2971, 1, 1, 1981, 'notes', '2017-09-03T09:27:57Z'),
(2973, 1, 1, 1983, 'notes', '2017-09-03T09:27:57Z'),
(2974, 1, 1, 1984, 'notes', '2017-09-03T09:27:57Z'),
(2975, 2, 1, 1985, 'notes', '2017-09-03T09:27:57Z'),
(2976, 2, 1, 1986, 'notes', '2017-09-03T09:27:57Z'),
(2977, 1, 1, 1987, 'notes', '2017-09-03T09:27:57Z'),
(2978, 2, 1, 1988, 'notes', '2017-09-03T09:27:57Z'),
(2979, 2, 1, 1989, 'notes', '2017-09-03T09:27:57Z'),
(2980, 1, 1, 1990, 'notes', '2017-09-03T09:27:57Z'),
(2981, 1, 1, 1991, 'notes', '2017-09-03T09:27:57Z'),
(2985, 1, 1, 1995, 'notes', '2017-09-03T09:27:57Z'),
(2986, 1, 1, 1996, 'notes', '2017-09-03T09:27:57Z'),
(2987, 1, 1, 1997, 'notes', '2017-09-03T09:27:57Z'),
(2988, 1, 1, 1998, 'notes', '2017-09-03T09:27:57Z'),
(2989, 1, 1, 1999, 'notes', '2017-09-03T09:27:57Z'),
(2991, 1, 1, 2001, 'notes', '2017-09-03T09:27:57Z'),
(2992, 1, 1, 2002, 'notes', '2017-09-03T09:27:57Z'),
(2993, 1, 1, 2003, 'notes', '2017-09-03T09:27:57Z'),
(2994, 1, 1, 2004, 'notes', '2017-09-03T09:27:57Z'),
(2995, 1, 1, 2005, 'notes', '2017-09-03T09:27:57Z'),
(2996, 1, 1, 2006, 'notes', '2017-09-03T09:27:57Z'),
(2998, 1, 1, 2008, 'notes', '2017-09-03T09:27:57Z'),
(2999, 1, 1, 2009, 'notes', '2017-09-03T09:27:57Z'),
(3001, 1, 1, 2011, 'notes', '2017-09-03T09:27:57Z'),
(3002, 1, 1, 2012, 'notes', '2017-09-03T09:27:57Z'),
(3003, 1, 1, 2013, 'notes', '2017-09-03T09:27:57Z'),
(3004, 1, 1, 2014, 'notes', '2017-09-03T09:27:57Z'),
(3007, 1, 1, 2017, 'notes', '2017-09-03T09:27:57Z'),
(3008, 1, 1, 2018, 'notes', '2017-09-03T09:27:57Z'),
(3009, 1, 1, 2019, 'notes', '2017-09-03T09:27:57Z'),
(3011, 1, 1, 2021, 'notes', '2017-09-03T09:27:57Z'),
(3012, 1, 1, 2022, 'notes', '2017-09-03T09:27:57Z'),
(3013, 2, 1, 2023, 'notes', '2017-09-03T09:27:57Z'),
(3014, 1, 1, 2024, 'notes', '2017-09-03T09:27:57Z'),
(3016, 1, 1, 2026, 'notes', '2017-09-03T09:27:57Z'),
(3017, 1, 1, 2027, 'notes', '2017-09-03T09:27:57Z'),
(3018, 1, 1, 2028, 'notes', '2017-09-03T09:27:57Z'),
(3019, 1, 1, 2029, 'notes', '2017-09-03T09:27:57Z'),
(3020, 1, 1, 2030, 'notes', '2017-09-03T09:27:57Z'),
(3021, 1, 1, 2031, 'notes', '2017-09-03T09:27:57Z'),
(3022, 1, 1, 2032, 'notes', '2017-09-03T09:27:57Z'),
(3023, 1, 1, 2033, 'notes', '2017-09-03T09:27:57Z'),
(3024, 1, 1, 2034, 'notes', '2017-09-03T09:27:57Z'),
(3025, 1, 1, 2035, 'notes', '2017-09-03T09:27:57Z'),
(3026, 1, 1, 2036, 'notes', '2017-09-03T09:27:57Z'),
(3027, 1, 1, 2037, 'notes', '2017-09-03T09:27:57Z'),
(3028, 1, 1, 2038, 'notes', '2017-09-03T09:27:57Z'),
(3029, 1, 1, 2039, 'notes', '2017-09-03T09:27:57Z'),
(3030, 1, 1, 2040, 'notes', '2017-09-03T09:27:57Z'),
(3031, 1, 1, 2041, 'notes', '2017-09-03T09:27:57Z'),
(3033, 1, 1, 2043, 'notes', '2017-09-03T09:27:57Z'),
(3034, 1, 1, 2044, 'notes', '2017-09-03T09:27:57Z'),
(3035, 1, 1, 2045, 'notes', '2017-09-03T09:27:57Z'),
(3036, 1, 1, 2046, 'notes', '2017-09-03T09:27:57Z'),
(3037, 1, 1, 2047, 'notes', '2017-09-03T09:27:57Z'),
(3038, 2, 1, 2048, 'notes', '2017-09-03T09:27:57Z'),
(3039, 2, 1, 2049, 'notes', '2017-09-03T09:27:57Z'),
(3040, 1, 1, 2050, 'notes', '2017-09-03T09:27:57Z'),
(3043, 1, 1, 2053, 'notes', '2017-09-03T09:27:57Z'),
(3045, 1, 1, 2055, 'notes', '2017-09-03T09:27:57Z'),
(3046, 2, 1, 2056, 'notes', '2017-09-03T09:27:57Z'),
(3047, 1, 1, 2057, 'notes', '2017-09-03T09:27:57Z'),
(3051, 1, 1, 2061, 'notes', '2017-09-03T09:27:57Z'),
(3052, 1, 1, 2062, 'notes', '2017-09-03T09:27:57Z'),
(3054, 1, 1, 2064, 'notes', '2017-09-03T09:27:57Z'),
(3056, 1, 1, 2066, 'notes', '2017-09-03T09:27:57Z'),
(3058, 1, 1, 2068, 'notes', '2017-09-03T09:27:57Z'),
(3059, 1, 1, 2069, 'notes', '2017-09-03T09:27:57Z'),
(3060, 1, 1, 2070, 'notes', '2017-09-03T09:27:57Z'),
(3061, 1, 1, 2071, 'notes', '2017-09-03T09:27:57Z'),
(3062, 1, 1, 2072, 'notes', '2017-09-03T09:27:57Z'),
(3063, 1, 1, 2073, 'notes', '2017-09-03T09:27:57Z'),
(3064, 1, 1, 2074, 'notes', '2017-09-03T09:27:57Z'),
(3067, 1, 1, 2077, 'notes', '2017-09-03T09:27:57Z'),
(3068, 1, 1, 2078, 'notes', '2017-09-03T09:27:57Z'),
(3069, 1, 1, 2079, 'notes', '2017-09-03T09:27:57Z'),
(3071, 1, 1, 2081, 'notes', '2017-09-03T09:27:57Z'),
(3072, 1, 1, 2082, 'notes', '2017-09-03T09:27:57Z'),
(3073, 1, 1, 2083, 'notes', '2017-09-03T09:27:57Z'),
(3076, 1, 1, 2086, 'notes', '2017-09-03T09:27:57Z'),
(3078, 1, 1, 2088, 'notes', '2017-09-03T09:27:57Z'),
(3079, 2, 1, 2089, 'notes', '2017-09-03T09:27:57Z'),
(3080, 1, 1, 2090, 'notes', '2017-09-03T09:27:57Z'),
(3081, 1, 1, 2091, 'notes', '2017-09-03T09:27:57Z'),
(3082, 1, 1, 2092, 'notes', '2017-09-03T09:27:57Z'),
(3083, 1, 1, 2093, 'notes', '2017-09-03T09:27:57Z'),
(3084, 2, 1, 2094, 'notes', '2017-09-03T09:27:57Z'),
(3085, 2, 1, 2095, 'notes', '2017-09-03T09:27:57Z'),
(3086, 2, 1, 2096, 'notes', '2017-09-03T09:27:57Z'),
(3091, 1, 1, 2101, 'notes', '2017-09-03T09:27:57Z'),
(3092, 2, 1, 2102, 'notes', '2017-09-03T09:27:57Z'),
(3093, 1, 1, 2103, 'notes', '2017-09-03T09:27:57Z'),
(3096, 1, 1, 2106, 'notes', '2017-09-03T09:27:57Z'),
(3097, 1, 1, 2107, 'notes', '2017-09-03T09:27:57Z'),
(3098, 1, 1, 2108, 'notes', '2017-09-03T09:27:57Z'),
(3099, 1, 1, 2109, 'notes', '2017-09-03T09:27:57Z'),
(3101, 2, 1, 2111, 'notes', '2017-09-03T09:27:57Z'),
(3102, 1, 1, 2112, 'notes', '2017-09-03T09:27:57Z'),
(3103, 2, 1, 2113, 'notes', '2017-09-03T09:27:57Z'),
(3104, 1, 1, 2114, 'notes', '2017-09-03T09:27:57Z'),
(3106, 1, 1, 2116, 'notes', '2017-09-03T09:27:57Z'),
(3107, 1, 1, 2117, 'notes', '2017-09-03T09:27:57Z'),
(3108, 1, 1, 2118, 'notes', '2017-09-03T09:27:57Z'),
(3109, 1, 1, 2119, 'notes', '2017-09-03T09:27:57Z'),
(3110, 1, 1, 2120, 'notes', '2017-09-03T09:27:57Z'),
(3111, 2, 1, 2121, 'notes', '2017-09-03T09:27:57Z'),
(3112, 2, 1, 2122, 'notes', '2017-09-03T09:27:57Z'),
(3113, 2, 1, 2123, 'notes', '2017-09-03T09:27:57Z'),
(3114, 1, 1, 2124, 'notes', '2017-09-03T09:27:57Z'),
(3115, 1, 1, 2125, 'notes', '2017-09-03T09:27:57Z'),
(3116, 1, 1, 2126, 'notes', '2017-09-03T09:27:57Z'),
(3117, 1, 1, 2127, 'notes', '2017-09-03T09:27:57Z'),
(3118, 1, 1, 2128, 'notes', '2017-09-03T09:27:57Z'),
(3119, 1, 1, 2129, 'notes', '2017-09-03T09:27:57Z'),
(3120, 1, 1, 2130, 'notes', '2017-09-03T09:27:57Z'),
(3121, 1, 1, 2131, 'notes', '2017-09-03T09:27:57Z'),
(3122, 1, 1, 2132, 'notes', '2017-09-03T09:27:57Z'),
(3123, 1, 1, 2133, 'notes', '2017-09-03T09:27:57Z'),
(3124, 1, 1, 2134, 'notes', '2017-09-03T09:27:57Z'),
(3125, 2, 1, 2135, 'notes', '2017-09-03T09:27:57Z'),
(3126, 1, 1, 2136, 'notes', '2017-09-03T09:27:57Z'),
(3127, 1, 1, 2137, 'notes', '2017-09-03T09:27:57Z'),
(3128, 1, 1, 2138, 'notes', '2017-09-03T09:27:57Z'),
(3129, 2, 1, 2139, 'notes', '2017-09-03T09:27:57Z'),
(3130, 1, 1, 2140, 'notes', '2017-09-03T09:27:57Z'),
(3131, 1, 1, 2141, 'notes', '2017-09-03T09:27:57Z'),
(3132, 1, 1, 2142, 'notes', '2017-09-03T09:27:57Z'),
(3133, 2, 1, 2143, 'notes', '2017-09-03T09:27:57Z'),
(3134, 2, 1, 2144, 'notes', '2017-09-03T09:27:57Z'),
(3135, 1, 1, 2145, 'notes', '2017-09-03T09:27:57Z'),
(3136, 1, 1, 2146, 'notes', '2017-09-03T09:27:57Z'),
(3137, 1, 1, 2147, 'notes', '2017-09-03T09:27:57Z'),
(3138, 1, 1, 2148, 'notes', '2017-09-03T09:27:57Z'),
(3139, 1, 1, 2149, 'notes', '2017-09-03T09:27:57Z'),
(3140, 1, 1, 2150, 'notes', '2017-09-03T09:27:57Z'),
(3141, 1, 1, 2151, 'notes', '2017-09-03T09:27:57Z'),
(3142, 1, 1, 2152, 'notes', '2017-09-03T09:27:57Z'),
(3143, 1, 1, 2153, 'notes', '2017-09-03T09:27:57Z'),
(3144, 1, 1, 2154, 'notes', '2017-09-03T09:27:57Z'),
(3145, 1, 1, 2155, 'notes', '2017-09-03T09:27:57Z'),
(3146, 1, 1, 2156, 'notes', '2017-09-03T09:27:57Z'),
(3147, 1, 1, 2157, 'notes', '2017-09-03T09:27:57Z'),
(3148, 1, 1, 2158, 'notes', '2017-09-03T09:27:57Z'),
(3149, 1, 1, 2159, 'notes', '2017-09-03T09:27:57Z'),
(3150, 1, 1, 2160, 'notes', '2017-09-03T09:27:57Z'),
(3151, 2, 1, 2161, 'notes', '2017-09-03T09:27:57Z'),
(3152, 2, 1, 2162, 'notes', '2017-09-03T09:27:57Z'),
(3153, 1, 1, 2163, 'notes', '2017-09-03T09:27:57Z'),
(3154, 1, 1, 2164, 'notes', '2017-09-03T09:27:57Z'),
(3155, 1, 1, 2165, 'notes', '2017-09-03T09:27:57Z'),
(3156, 2, 1, 2166, 'notes', '2017-09-03T09:27:57Z'),
(3157, 1, 1, 2167, 'notes', '2017-09-03T09:27:57Z'),
(3158, 2, 1, 2168, 'notes', '2017-09-03T09:27:57Z'),
(3159, 2, 1, 2169, 'notes', '2017-09-03T09:27:57Z'),
(3160, 1, 1, 2170, 'notes', '2017-09-03T09:27:57Z'),
(3161, 1, 1, 2171, 'notes', '2017-09-03T09:27:57Z'),
(3162, 1, 1, 2172, 'notes', '2017-09-03T09:27:57Z'),
(3163, 1, 1, 2173, 'notes', '2017-09-03T09:27:57Z'),
(3164, 2, 1, 2174, 'notes', '2017-09-03T09:27:57Z'),
(3165, 2, 1, 2175, 'notes', '2017-09-03T09:27:57Z'),
(3166, 1, 1, 2176, 'notes', '2017-09-03T09:27:57Z'),
(3168, 1, 1, 2178, 'notes', '2017-09-03T09:27:57Z'),
(3169, 1, 1, 2179, 'notes', '2017-09-03T09:27:57Z'),
(3170, 1, 1, 2180, 'notes', '2017-09-03T09:27:57Z'),
(3171, 1, 1, 2181, 'notes', '2017-09-03T09:27:57Z'),
(3172, 1, 1, 2182, 'notes', '2017-09-03T09:27:57Z'),
(3173, 2, 1, 2183, 'notes', '2017-09-03T09:27:57Z'),
(3174, 1, 1, 2184, 'notes', '2017-09-03T09:27:57Z'),
(3175, 2, 1, 2185, 'notes', '2017-09-03T09:27:57Z'),
(3176, 2, 1, 2186, 'notes', '2017-09-03T09:27:57Z'),
(3177, 2, 1, 2187, 'notes', '2017-09-03T09:27:57Z'),
(3178, 1, 1, 2188, 'notes', '2017-09-03T09:27:57Z'),
(3179, 1, 1, 2189, 'notes', '2017-09-03T09:27:57Z'),
(3180, 1, 1, 2190, 'notes', '2017-09-03T09:27:57Z'),
(3181, 2, 1, 2191, 'notes', '2017-09-03T09:27:57Z'),
(3182, 1, 1, 2192, 'notes', '2017-09-03T09:27:57Z'),
(3183, 2, 1, 2193, 'notes', '2017-09-03T09:27:57Z'),
(3184, 1, 1, 2194, 'notes', '2017-09-03T09:27:57Z'),
(3185, 1, 1, 2195, 'notes', '2017-09-03T09:27:57Z'),
(3186, 1, 1, 2196, 'notes', '2017-09-03T09:27:57Z'),
(3187, 1, 1, 2197, 'notes', '2017-09-03T09:27:57Z'),
(3188, 1, 1, 2198, 'notes', '2017-09-03T09:27:57Z'),
(3189, 1, 1, 2199, 'notes', '2017-09-03T09:27:57Z'),
(3190, 2, 1, 2200, 'notes', '2017-09-03T09:27:57Z'),
(3191, 1, 1, 2201, 'notes', '2017-09-03T09:27:57Z'),
(3192, 1, 1, 2202, 'notes', '2017-09-03T09:27:57Z'),
(3193, 2, 1, 2203, 'notes', '2017-09-03T09:27:57Z'),
(3194, 1, 1, 2204, 'notes', '2017-09-03T09:27:57Z'),
(3195, 1, 1, 2205, 'notes', '2017-09-03T09:27:57Z'),
(3196, 1, 1, 2206, 'notes', '2017-09-03T09:27:57Z'),
(3197, 1, 1, 2207, 'notes', '2017-09-03T09:27:57Z'),
(3198, 1, 1, 2208, 'notes', '2017-09-03T09:27:57Z'),
(3199, 1, 1, 2209, 'notes', '2017-09-03T09:27:57Z'),
(3200, 1, 1, 2210, 'notes', '2017-09-03T09:27:57Z'),
(3201, 1, 1, 2211, 'notes', '2017-09-03T09:27:57Z'),
(3202, 1, 1, 2212, 'notes', '2017-09-03T09:27:57Z'),
(3203, 1, 1, 2213, 'notes', '2017-09-03T09:27:57Z'),
(3204, 1, 1, 2214, 'notes', '2017-09-03T09:27:57Z'),
(3205, 1, 1, 2215, 'notes', '2017-09-03T09:27:57Z'),
(3206, 1, 1, 2216, 'notes', '2017-09-03T09:27:57Z'),
(3207, 1, 1, 2217, 'notes', '2017-09-03T09:27:57Z'),
(3208, 1, 1, 2218, 'notes', '2017-09-03T09:27:57Z'),
(3209, 2, 1, 2219, 'notes', '2017-09-03T09:27:57Z'),
(3210, 1, 1, 2220, 'notes', '2017-09-03T09:27:57Z'),
(3211, 1, 1, 2221, 'notes', '2017-09-03T09:27:57Z'),
(3212, 1, 1, 2222, 'notes', '2017-09-03T09:27:57Z'),
(3213, 1, 1, 2223, 'notes', '2017-09-03T09:27:57Z'),
(3214, 1, 1, 2224, 'notes', '2017-09-03T09:27:57Z'),
(3217, 1, 1, 2227, 'notes', '2017-09-03T09:27:57Z'),
(3218, 2, 1, 2228, 'notes', '2017-09-03T09:27:57Z'),
(3219, 2, 1, 2229, 'notes', '2017-09-03T09:27:57Z'),
(3220, 1, 1, 2230, 'notes', '2017-09-03T09:27:57Z'),
(3221, 2, 1, 2231, 'notes', '2017-09-03T09:27:57Z'),
(3222, 1, 1, 2232, 'notes', '2017-09-03T09:27:57Z'),
(3223, 1, 1, 2233, 'notes', '2017-09-03T09:27:57Z'),
(3224, 1, 1, 2234, 'notes', '2017-09-03T09:27:57Z'),
(3225, 2, 1, 2235, 'notes', '2017-09-03T09:27:57Z'),
(3226, 1, 1, 2236, 'notes', '2017-09-03T09:27:57Z'),
(3227, 1, 1, 2237, 'notes', '2017-09-03T09:27:57Z'),
(3228, 1, 1, 2238, 'notes', '2017-09-03T09:27:57Z'),
(3229, 2, 1, 2239, 'notes', '2017-09-03T09:27:57Z'),
(3230, 2, 1, 2240, 'notes', '2017-09-03T09:27:57Z'),
(3231, 1, 1, 2241, 'notes', '2017-09-03T09:27:57Z'),
(3232, 1, 1, 2242, 'notes', '2017-09-03T09:27:57Z'),
(3233, 1, 1, 2243, 'notes', '2017-09-03T09:27:57Z'),
(3234, 2, 1, 2244, 'notes', '2017-09-03T09:27:57Z'),
(3236, 2, 1, 2246, 'notes', '2017-09-03T09:27:57Z'),
(3238, 2, 1, 2248, 'notes', '2017-09-03T09:27:57Z'),
(3239, 2, 1, 2249, 'notes', '2017-09-03T09:27:57Z'),
(3240, 2, 1, 2250, 'notes', '2017-09-03T09:27:57Z'),
(3241, 2, 1, 2251, 'notes', '2017-09-03T09:27:57Z'),
(3242, 2, 1, 2252, 'notes', '2017-09-03T09:27:57Z'),
(3243, 1, 1, 2253, 'notes', '2017-09-03T09:27:57Z'),
(3244, 2, 1, 2254, 'notes', '2017-09-03T09:27:57Z'),
(3245, 1, 1, 2255, 'notes', '2017-09-03T09:27:57Z'),
(3246, 1, 1, 2256, 'notes', '2017-09-03T09:27:57Z'),
(3247, 1, 1, 2257, 'notes', '2017-09-03T09:27:57Z'),
(3248, 2, 1, 2258, 'notes', '2017-09-03T09:27:57Z'),
(3249, 2, 1, 2259, 'notes', '2017-09-03T09:27:57Z'),
(3251, 1, 1, 2261, 'notes', '2017-09-03T09:27:57Z'),
(3253, 1, 1, 2263, 'notes', '2017-09-03T09:27:57Z'),
(3254, 1, 1, 2264, 'notes', '2017-09-03T09:27:57Z'),
(3255, 1, 1, 2265, 'notes', '2017-09-03T09:27:57Z'),
(3256, 2, 1, 2266, 'notes', '2017-09-03T09:27:57Z'),
(3257, 1, 1, 2267, 'notes', '2017-09-03T09:27:57Z'),
(3258, 2, 1, 2268, 'notes', '2017-09-03T09:27:57Z'),
(3259, 1, 1, 2269, 'notes', '2017-09-03T09:27:57Z'),
(3260, 1, 1, 2270, 'notes', '2017-09-03T09:27:57Z'),
(3261, 1, 1, 2271, 'notes', '2017-09-03T09:27:57Z'),
(3262, 2, 1, 2272, 'notes', '2017-09-03T09:27:57Z'),
(3264, 2, 1, 2274, 'notes', '2017-09-03T09:27:57Z'),
(3265, 2, 1, 2275, 'notes', '2017-09-03T09:27:57Z'),
(3266, 1, 1, 2276, 'notes', '2017-09-03T09:27:57Z'),
(3267, 2, 1, 2277, 'notes', '2017-09-03T09:27:57Z'),
(3268, 1, 1, 2278, 'notes', '2017-09-03T09:27:57Z'),
(3269, 1, 1, 2279, 'notes', '2017-09-03T09:27:57Z'),
(3270, 1, 1, 2280, 'notes', '2017-09-03T09:27:57Z'),
(3271, 1, 1, 2281, 'notes', '2017-09-03T09:27:57Z'),
(3272, 2, 1, 2282, 'notes', '2017-09-03T09:27:57Z'),
(3273, 2, 1, 2283, 'notes', '2017-09-03T09:27:57Z'),
(3274, 1, 1, 2284, 'notes', '2017-09-03T09:27:57Z'),
(3275, 1, 1, 2285, 'notes', '2017-09-03T09:27:57Z'),
(3276, 1, 1, 2286, 'notes', '2017-09-03T09:27:57Z'),
(3277, 2, 1, 2287, 'notes', '2017-09-03T09:27:57Z'),
(3278, 1, 1, 2288, 'notes', '2017-09-03T09:27:57Z'),
(3279, 1, 1, 2289, 'notes', '2017-09-03T09:27:57Z'),
(3280, 2, 1, 2290, 'notes', '2017-09-03T09:27:57Z'),
(3281, 2, 1, 2291, 'notes', '2017-09-03T09:27:57Z'),
(3282, 2, 1, 2292, 'notes', '2017-09-03T09:27:57Z'),
(3283, 2, 1, 2293, 'notes', '2017-09-03T09:27:57Z'),
(3284, 2, 1, 2294, 'notes', '2017-09-03T09:27:57Z'),
(3285, 1, 1, 2295, 'notes', '2017-09-03T09:27:57Z'),
(3286, 1, 1, 2296, 'notes', '2017-09-03T09:27:57Z'),
(3288, 1, 1, 2298, 'notes', '2017-09-03T09:27:57Z'),
(3289, 1, 1, 2299, 'notes', '2017-09-03T09:27:57Z'),
(3290, 1, 1, 2300, 'notes', '2017-09-03T09:27:57Z'),
(3291, 2, 1, 2301, 'notes', '2017-09-03T09:27:57Z'),
(3292, 2, 1, 2302, 'notes', '2017-09-03T09:27:57Z'),
(3293, 1, 1, 2303, 'notes', '2017-09-03T09:27:57Z'),
(3294, 1, 1, 2304, 'notes', '2017-09-03T09:27:57Z'),
(3295, 2, 1, 2305, 'notes', '2017-09-03T09:27:57Z'),
(3296, 2, 1, 2306, 'notes', '2017-09-03T09:27:57Z'),
(3297, 1, 1, 2307, 'notes', '2017-09-03T09:27:57Z'),
(3298, 2, 1, 2308, 'notes', '2017-09-03T09:27:57Z'),
(3299, 1, 1, 2309, 'notes', '2017-09-03T09:27:57Z'),
(3300, 1, 1, 2310, 'notes', '2017-09-03T09:27:57Z'),
(3301, 2, 1, 2311, 'notes', '2017-09-03T09:27:57Z'),
(3302, 1, 1, 2312, 'notes', '2017-09-03T09:27:57Z'),
(3303, 1, 1, 2313, 'notes', '2017-09-03T09:27:57Z'),
(3304, 1, 1, 2314, 'notes', '2017-09-03T09:27:57Z'),
(3305, 1, 1, 2315, 'notes', '2017-09-03T09:27:57Z'),
(3306, 1, 1, 2316, 'notes', '2017-09-03T09:27:57Z'),
(3307, 1, 1, 2317, 'notes', '2017-09-03T09:27:57Z'),
(3308, 2, 1, 2318, 'notes', '2017-09-03T09:27:57Z'),
(3309, 2, 1, 2319, 'notes', '2017-09-03T09:27:57Z'),
(3310, 1, 1, 2320, 'notes', '2017-09-03T09:27:57Z'),
(3311, 2, 1, 2321, 'notes', '2017-09-03T09:27:57Z'),
(3312, 1, 1, 2322, 'notes', '2017-09-03T09:27:57Z'),
(3313, 1, 1, 2323, 'notes', '2017-09-03T09:27:57Z'),
(3314, 2, 1, 2324, 'notes', '2017-09-03T09:27:57Z'),
(3316, 1, 1, 2326, 'notes', '2017-09-03T09:27:57Z'),
(3317, 1, 1, 2327, 'notes', '2017-09-03T09:27:57Z'),
(3318, 1, 1, 2328, 'notes', '2017-09-03T09:27:57Z'),
(3319, 1, 1, 2329, 'notes', '2017-09-03T09:27:57Z'),
(3320, 2, 1, 2330, 'notes', '2017-09-03T09:27:57Z'),
(3321, 2, 1, 2331, 'notes', '2017-09-03T09:27:57Z'),
(3322, 2, 1, 2332, 'notes', '2017-09-03T09:27:57Z'),
(3323, 2, 1, 2333, 'notes', '2017-09-03T09:27:57Z'),
(3324, 2, 1, 2334, 'notes', '2017-09-03T09:27:57Z'),
(3325, 1, 1, 2335, 'notes', '2017-09-03T09:27:57Z'),
(3326, 1, 1, 2336, 'notes', '2017-09-03T09:27:57Z'),
(3327, 1, 1, 2337, 'notes', '2017-09-03T09:27:57Z'),
(3328, 1, 1, 2338, 'notes', '2017-09-03T09:27:57Z'),
(3329, 1, 1, 2339, 'notes', '2017-09-03T09:27:57Z'),
(3330, 1, 1, 2340, 'notes', '2017-09-03T09:27:57Z'),
(3331, 1, 1, 2341, 'notes', '2017-09-03T09:27:57Z'),
(3332, 1, 1, 2342, 'notes', '2017-09-03T09:27:57Z'),
(3333, 1, 1, 2343, 'notes', '2017-09-03T09:27:57Z'),
(3334, 1, 1, 2344, 'notes', '2017-09-03T09:27:57Z'),
(3335, 2, 1, 2345, 'notes', '2017-09-03T09:27:57Z'),
(3336, 2, 1, 2346, 'notes', '2017-09-03T09:27:57Z'),
(3337, 1, 1, 2347, 'notes', '2017-09-03T09:27:57Z'),
(3338, 2, 1, 2348, 'notes', '2017-09-03T09:27:57Z'),
(3339, 2, 1, 2349, 'notes', '2017-09-03T09:27:57Z'),
(3340, 1, 1, 2350, 'notes', '2017-09-03T09:27:57Z'),
(3341, 1, 1, 2351, 'notes', '2017-09-03T09:27:57Z'),
(3342, 1, 1, 2352, 'notes', '2017-09-03T09:27:57Z'),
(3344, 1, 1, 2354, 'notes', '2017-09-03T09:27:57Z'),
(3345, 2, 1, 2355, 'notes', '2017-09-03T09:27:57Z'),
(3346, 1, 1, 2356, 'notes', '2017-09-03T09:27:57Z'),
(3347, 1, 1, 2357, 'notes', '2017-09-03T09:27:57Z'),
(3348, 1, 1, 2358, 'notes', '2017-09-03T09:27:57Z'),
(3349, 1, 1, 2359, 'notes', '2017-09-03T09:27:57Z'),
(3350, 1, 1, 2360, 'notes', '2017-09-03T09:27:57Z'),
(3351, 1, 1, 2361, 'notes', '2017-09-03T09:27:57Z'),
(3352, 1, 1, 2362, 'notes', '2017-09-03T09:27:57Z'),
(3353, 1, 1, 2363, 'notes', '2017-09-03T09:27:57Z'),
(3354, 1, 1, 2364, 'notes', '2017-09-03T09:27:57Z'),
(3355, 1, 1, 2365, 'notes', '2017-09-03T09:27:57Z'),
(3356, 1, 1, 2366, 'notes', '2017-09-03T09:27:57Z'),
(3357, 1, 1, 2367, 'notes', '2017-09-03T09:27:57Z'),
(3358, 1, 1, 2368, 'notes', '2017-09-03T09:27:57Z'),
(3359, 1, 1, 2369, 'notes', '2017-09-03T09:27:57Z'),
(3360, 2, 1, 2370, 'notes', '2017-09-03T09:27:57Z'),
(3361, 1, 1, 2371, 'notes', '2017-09-03T09:27:57Z'),
(3362, 1, 1, 2372, 'notes', '2017-09-03T09:27:57Z'),
(3363, 2, 1, 2373, 'notes', '2017-09-03T09:27:57Z'),
(3364, 1, 1, 2374, 'notes', '2017-09-03T09:27:57Z'),
(3365, 1, 1, 2375, 'notes', '2017-09-03T09:27:57Z'),
(3366, 2, 1, 2376, 'notes', '2017-09-03T09:27:57Z'),
(3367, 1, 1, 2377, 'notes', '2017-09-03T09:27:57Z'),
(3368, 1, 1, 2378, 'notes', '2017-09-03T09:27:57Z'),
(3369, 1, 1, 2379, 'notes', '2017-09-03T09:27:57Z'),
(3370, 1, 1, 2380, 'notes', '2017-09-03T09:27:57Z'),
(3371, 1, 1, 2381, 'notes', '2017-09-03T09:27:57Z'),
(3372, 2, 1, 2382, 'notes', '2017-09-03T09:27:57Z'),
(3373, 2, 1, 2383, 'notes', '2017-09-03T09:27:57Z'),
(3374, 2, 1, 2384, 'notes', '2017-09-03T09:27:57Z'),
(3375, 2, 1, 2385, 'notes', '2017-09-03T09:27:57Z'),
(3376, 2, 1, 2386, 'notes', '2017-09-03T09:27:57Z'),
(3377, 1, 1, 2387, 'notes', '2017-09-03T09:27:57Z'),
(3378, 2, 1, 2388, 'notes', '2017-09-03T09:27:57Z'),
(3379, 2, 1, 2389, 'notes', '2017-09-03T09:27:57Z'),
(3380, 1, 1, 2390, 'notes', '2017-09-03T09:27:57Z');

alter sequence floods.status_update_id_seq restart with 3381;

update floods.crossing set latest_status_id = 1001 where id = 11;
update floods.crossing set latest_status_id = 1002 where id = 12;
update floods.crossing set latest_status_id = 1003 where id = 13;
update floods.crossing set latest_status_id = 1004 where id = 14;
update floods.crossing set latest_status_id = 1005 where id = 15;
update floods.crossing set latest_status_id = 1006 where id = 16;
update floods.crossing set latest_status_id = 1007 where id = 17;
update floods.crossing set latest_status_id = 1008 where id = 18;
update floods.crossing set latest_status_id = 1009 where id = 19;
update floods.crossing set latest_status_id = 1010 where id = 20;
update floods.crossing set latest_status_id = 1011 where id = 21;
update floods.crossing set latest_status_id = 1012 where id = 22;
update floods.crossing set latest_status_id = 1013 where id = 23;
update floods.crossing set latest_status_id = 1014 where id = 24;
update floods.crossing set latest_status_id = 1015 where id = 25;
update floods.crossing set latest_status_id = 1016 where id = 26;
update floods.crossing set latest_status_id = 1017 where id = 27;
update floods.crossing set latest_status_id = 1018 where id = 28;
update floods.crossing set latest_status_id = 1019 where id = 29;
update floods.crossing set latest_status_id = 1020 where id = 30;
update floods.crossing set latest_status_id = 1021 where id = 31;
update floods.crossing set latest_status_id = 1022 where id = 32;
update floods.crossing set latest_status_id = 1023 where id = 33;
update floods.crossing set latest_status_id = 1024 where id = 34;
update floods.crossing set latest_status_id = 1025 where id = 35;
update floods.crossing set latest_status_id = 1026 where id = 36;
update floods.crossing set latest_status_id = 1027 where id = 37;
update floods.crossing set latest_status_id = 1028 where id = 38;
update floods.crossing set latest_status_id = 1029 where id = 39;
update floods.crossing set latest_status_id = 1030 where id = 40;
update floods.crossing set latest_status_id = 1031 where id = 41;
update floods.crossing set latest_status_id = 1032 where id = 42;
update floods.crossing set latest_status_id = 1033 where id = 43;
update floods.crossing set latest_status_id = 1034 where id = 44;
update floods.crossing set latest_status_id = 1035 where id = 45;
update floods.crossing set latest_status_id = 1036 where id = 46;
update floods.crossing set latest_status_id = 1037 where id = 47;
update floods.crossing set latest_status_id = 1038 where id = 48;
update floods.crossing set latest_status_id = 1039 where id = 49;
update floods.crossing set latest_status_id = 1040 where id = 50;
update floods.crossing set latest_status_id = 1041 where id = 51;
update floods.crossing set latest_status_id = 1042 where id = 52;
update floods.crossing set latest_status_id = 1043 where id = 53;
update floods.crossing set latest_status_id = 1044 where id = 54;
update floods.crossing set latest_status_id = 1045 where id = 55;
update floods.crossing set latest_status_id = 1046 where id = 56;
update floods.crossing set latest_status_id = 1047 where id = 57;
update floods.crossing set latest_status_id = 1048 where id = 58;
update floods.crossing set latest_status_id = 1049 where id = 59;
update floods.crossing set latest_status_id = 1050 where id = 60;
update floods.crossing set latest_status_id = 1051 where id = 61;
update floods.crossing set latest_status_id = 1052 where id = 62;
update floods.crossing set latest_status_id = 1053 where id = 63;
update floods.crossing set latest_status_id = 1054 where id = 64;
update floods.crossing set latest_status_id = 1055 where id = 65;
update floods.crossing set latest_status_id = 1056 where id = 66;
update floods.crossing set latest_status_id = 1057 where id = 67;
update floods.crossing set latest_status_id = 1058 where id = 68;
update floods.crossing set latest_status_id = 1059 where id = 69;
update floods.crossing set latest_status_id = 1060 where id = 70;
update floods.crossing set latest_status_id = 1062 where id = 72;
update floods.crossing set latest_status_id = 1063 where id = 73;
update floods.crossing set latest_status_id = 1064 where id = 74;
update floods.crossing set latest_status_id = 1065 where id = 75;
update floods.crossing set latest_status_id = 1066 where id = 76;
update floods.crossing set latest_status_id = 1067 where id = 77;
update floods.crossing set latest_status_id = 1068 where id = 78;
update floods.crossing set latest_status_id = 1069 where id = 79;
update floods.crossing set latest_status_id = 1070 where id = 80;
update floods.crossing set latest_status_id = 1071 where id = 81;
update floods.crossing set latest_status_id = 1072 where id = 82;
update floods.crossing set latest_status_id = 1073 where id = 83;
update floods.crossing set latest_status_id = 1074 where id = 84;
update floods.crossing set latest_status_id = 1075 where id = 85;
update floods.crossing set latest_status_id = 1076 where id = 86;
update floods.crossing set latest_status_id = 1077 where id = 87;
update floods.crossing set latest_status_id = 1078 where id = 88;
update floods.crossing set latest_status_id = 1079 where id = 89;
update floods.crossing set latest_status_id = 1080 where id = 90;
update floods.crossing set latest_status_id = 1081 where id = 91;
update floods.crossing set latest_status_id = 1082 where id = 92;
update floods.crossing set latest_status_id = 1085 where id = 95;
update floods.crossing set latest_status_id = 1086 where id = 96;
update floods.crossing set latest_status_id = 1087 where id = 97;
update floods.crossing set latest_status_id = 1088 where id = 98;
update floods.crossing set latest_status_id = 1089 where id = 99;
update floods.crossing set latest_status_id = 1090 where id = 100;
update floods.crossing set latest_status_id = 1091 where id = 101;
update floods.crossing set latest_status_id = 1092 where id = 102;
update floods.crossing set latest_status_id = 1093 where id = 103;
update floods.crossing set latest_status_id = 1094 where id = 104;
update floods.crossing set latest_status_id = 1095 where id = 105;
update floods.crossing set latest_status_id = 1096 where id = 106;
update floods.crossing set latest_status_id = 1097 where id = 107;
update floods.crossing set latest_status_id = 1098 where id = 108;
update floods.crossing set latest_status_id = 1099 where id = 109;
update floods.crossing set latest_status_id = 1100 where id = 110;
update floods.crossing set latest_status_id = 1101 where id = 111;
update floods.crossing set latest_status_id = 1102 where id = 112;
update floods.crossing set latest_status_id = 1103 where id = 113;
update floods.crossing set latest_status_id = 1104 where id = 114;
update floods.crossing set latest_status_id = 1105 where id = 115;
update floods.crossing set latest_status_id = 1106 where id = 116;
update floods.crossing set latest_status_id = 1107 where id = 117;
update floods.crossing set latest_status_id = 1108 where id = 118;
update floods.crossing set latest_status_id = 1109 where id = 119;
update floods.crossing set latest_status_id = 1110 where id = 120;
update floods.crossing set latest_status_id = 1111 where id = 121;
update floods.crossing set latest_status_id = 1112 where id = 122;
update floods.crossing set latest_status_id = 1113 where id = 123;
update floods.crossing set latest_status_id = 1114 where id = 124;
update floods.crossing set latest_status_id = 1116 where id = 126;
update floods.crossing set latest_status_id = 1118 where id = 128;
update floods.crossing set latest_status_id = 1120 where id = 130;
update floods.crossing set latest_status_id = 1121 where id = 131;
update floods.crossing set latest_status_id = 1122 where id = 132;
update floods.crossing set latest_status_id = 1123 where id = 133;
update floods.crossing set latest_status_id = 1170 where id = 180;
update floods.crossing set latest_status_id = 1192 where id = 202;
update floods.crossing set latest_status_id = 1193 where id = 203;
update floods.crossing set latest_status_id = 1194 where id = 204;
update floods.crossing set latest_status_id = 1195 where id = 205;
update floods.crossing set latest_status_id = 1196 where id = 206;
update floods.crossing set latest_status_id = 1197 where id = 207;
update floods.crossing set latest_status_id = 1198 where id = 208;
update floods.crossing set latest_status_id = 1202 where id = 212;
update floods.crossing set latest_status_id = 1203 where id = 213;
update floods.crossing set latest_status_id = 1204 where id = 214;
update floods.crossing set latest_status_id = 1205 where id = 215;
update floods.crossing set latest_status_id = 1206 where id = 216;
update floods.crossing set latest_status_id = 1207 where id = 217;
update floods.crossing set latest_status_id = 1208 where id = 218;
update floods.crossing set latest_status_id = 1209 where id = 219;
update floods.crossing set latest_status_id = 1210 where id = 220;
update floods.crossing set latest_status_id = 1211 where id = 221;
update floods.crossing set latest_status_id = 1212 where id = 222;
update floods.crossing set latest_status_id = 1213 where id = 223;
update floods.crossing set latest_status_id = 1214 where id = 224;
update floods.crossing set latest_status_id = 1215 where id = 225;
update floods.crossing set latest_status_id = 1216 where id = 226;
update floods.crossing set latest_status_id = 1219 where id = 229;
update floods.crossing set latest_status_id = 1220 where id = 230;
update floods.crossing set latest_status_id = 1221 where id = 231;
update floods.crossing set latest_status_id = 1222 where id = 232;
update floods.crossing set latest_status_id = 1223 where id = 233;
update floods.crossing set latest_status_id = 1225 where id = 235;
update floods.crossing set latest_status_id = 1226 where id = 236;
update floods.crossing set latest_status_id = 1227 where id = 237;
update floods.crossing set latest_status_id = 1228 where id = 238;
update floods.crossing set latest_status_id = 1229 where id = 239;
update floods.crossing set latest_status_id = 1230 where id = 240;
update floods.crossing set latest_status_id = 1231 where id = 241;
update floods.crossing set latest_status_id = 1232 where id = 242;
update floods.crossing set latest_status_id = 1233 where id = 243;
update floods.crossing set latest_status_id = 1234 where id = 244;
update floods.crossing set latest_status_id = 1236 where id = 246;
update floods.crossing set latest_status_id = 1237 where id = 247;
update floods.crossing set latest_status_id = 1238 where id = 248;
update floods.crossing set latest_status_id = 1239 where id = 249;
update floods.crossing set latest_status_id = 1240 where id = 250;
update floods.crossing set latest_status_id = 1241 where id = 251;
update floods.crossing set latest_status_id = 1242 where id = 252;
update floods.crossing set latest_status_id = 1243 where id = 253;
update floods.crossing set latest_status_id = 1244 where id = 254;
update floods.crossing set latest_status_id = 1245 where id = 255;
update floods.crossing set latest_status_id = 1246 where id = 256;
update floods.crossing set latest_status_id = 1247 where id = 257;
update floods.crossing set latest_status_id = 1248 where id = 258;
update floods.crossing set latest_status_id = 1250 where id = 260;
update floods.crossing set latest_status_id = 1251 where id = 261;
update floods.crossing set latest_status_id = 1252 where id = 262;
update floods.crossing set latest_status_id = 1255 where id = 265;
update floods.crossing set latest_status_id = 1256 where id = 266;
update floods.crossing set latest_status_id = 1257 where id = 267;
update floods.crossing set latest_status_id = 1258 where id = 268;
update floods.crossing set latest_status_id = 1259 where id = 269;
update floods.crossing set latest_status_id = 1260 where id = 270;
update floods.crossing set latest_status_id = 1261 where id = 271;
update floods.crossing set latest_status_id = 1262 where id = 272;
update floods.crossing set latest_status_id = 1264 where id = 274;
update floods.crossing set latest_status_id = 1265 where id = 275;
update floods.crossing set latest_status_id = 1266 where id = 276;
update floods.crossing set latest_status_id = 1267 where id = 277;
update floods.crossing set latest_status_id = 1268 where id = 278;
update floods.crossing set latest_status_id = 1269 where id = 279;
update floods.crossing set latest_status_id = 1270 where id = 280;
update floods.crossing set latest_status_id = 1271 where id = 281;
update floods.crossing set latest_status_id = 1272 where id = 282;
update floods.crossing set latest_status_id = 1273 where id = 283;
update floods.crossing set latest_status_id = 1275 where id = 285;
update floods.crossing set latest_status_id = 1276 where id = 286;
update floods.crossing set latest_status_id = 1277 where id = 287;
update floods.crossing set latest_status_id = 1278 where id = 288;
update floods.crossing set latest_status_id = 1279 where id = 289;
update floods.crossing set latest_status_id = 1280 where id = 290;
update floods.crossing set latest_status_id = 1281 where id = 291;
update floods.crossing set latest_status_id = 1282 where id = 292;
update floods.crossing set latest_status_id = 1283 where id = 293;
update floods.crossing set latest_status_id = 1284 where id = 294;
update floods.crossing set latest_status_id = 1285 where id = 295;
update floods.crossing set latest_status_id = 1286 where id = 296;
update floods.crossing set latest_status_id = 1287 where id = 297;
update floods.crossing set latest_status_id = 1288 where id = 298;
update floods.crossing set latest_status_id = 1289 where id = 299;
update floods.crossing set latest_status_id = 1290 where id = 300;
update floods.crossing set latest_status_id = 1291 where id = 301;
update floods.crossing set latest_status_id = 1292 where id = 302;
update floods.crossing set latest_status_id = 1293 where id = 303;
update floods.crossing set latest_status_id = 1294 where id = 304;
update floods.crossing set latest_status_id = 1295 where id = 305;
update floods.crossing set latest_status_id = 1296 where id = 306;
update floods.crossing set latest_status_id = 1298 where id = 308;
update floods.crossing set latest_status_id = 1299 where id = 309;
update floods.crossing set latest_status_id = 1300 where id = 310;
update floods.crossing set latest_status_id = 1301 where id = 311;
update floods.crossing set latest_status_id = 1302 where id = 312;
update floods.crossing set latest_status_id = 1303 where id = 313;
update floods.crossing set latest_status_id = 1304 where id = 314;
update floods.crossing set latest_status_id = 1305 where id = 315;
update floods.crossing set latest_status_id = 1306 where id = 316;
update floods.crossing set latest_status_id = 1307 where id = 317;
update floods.crossing set latest_status_id = 1308 where id = 318;
update floods.crossing set latest_status_id = 1309 where id = 319;
update floods.crossing set latest_status_id = 1310 where id = 320;
update floods.crossing set latest_status_id = 1311 where id = 321;
update floods.crossing set latest_status_id = 1312 where id = 322;
update floods.crossing set latest_status_id = 1313 where id = 323;
update floods.crossing set latest_status_id = 1314 where id = 324;
update floods.crossing set latest_status_id = 1315 where id = 325;
update floods.crossing set latest_status_id = 1316 where id = 326;
update floods.crossing set latest_status_id = 1317 where id = 327;
update floods.crossing set latest_status_id = 1318 where id = 328;
update floods.crossing set latest_status_id = 1319 where id = 329;
update floods.crossing set latest_status_id = 1320 where id = 330;
update floods.crossing set latest_status_id = 1321 where id = 331;
update floods.crossing set latest_status_id = 1322 where id = 332;
update floods.crossing set latest_status_id = 1323 where id = 333;
update floods.crossing set latest_status_id = 1324 where id = 334;
update floods.crossing set latest_status_id = 1325 where id = 335;
update floods.crossing set latest_status_id = 1326 where id = 336;
update floods.crossing set latest_status_id = 1327 where id = 337;
update floods.crossing set latest_status_id = 1328 where id = 338;
update floods.crossing set latest_status_id = 1329 where id = 339;
update floods.crossing set latest_status_id = 1330 where id = 340;
update floods.crossing set latest_status_id = 1331 where id = 341;
update floods.crossing set latest_status_id = 1332 where id = 342;
update floods.crossing set latest_status_id = 1333 where id = 343;
update floods.crossing set latest_status_id = 1334 where id = 344;
update floods.crossing set latest_status_id = 1335 where id = 345;
update floods.crossing set latest_status_id = 1336 where id = 346;
update floods.crossing set latest_status_id = 1337 where id = 347;
update floods.crossing set latest_status_id = 1338 where id = 348;
update floods.crossing set latest_status_id = 1339 where id = 349;
update floods.crossing set latest_status_id = 1340 where id = 350;
update floods.crossing set latest_status_id = 1341 where id = 351;
update floods.crossing set latest_status_id = 1342 where id = 352;
update floods.crossing set latest_status_id = 1343 where id = 353;
update floods.crossing set latest_status_id = 1344 where id = 354;
update floods.crossing set latest_status_id = 1345 where id = 355;
update floods.crossing set latest_status_id = 1346 where id = 356;
update floods.crossing set latest_status_id = 1347 where id = 357;
update floods.crossing set latest_status_id = 1348 where id = 358;
update floods.crossing set latest_status_id = 1349 where id = 359;
update floods.crossing set latest_status_id = 1350 where id = 360;
update floods.crossing set latest_status_id = 1351 where id = 361;
update floods.crossing set latest_status_id = 1352 where id = 362;
update floods.crossing set latest_status_id = 1353 where id = 363;
update floods.crossing set latest_status_id = 1354 where id = 364;
update floods.crossing set latest_status_id = 1355 where id = 365;
update floods.crossing set latest_status_id = 1356 where id = 366;
update floods.crossing set latest_status_id = 1357 where id = 367;
update floods.crossing set latest_status_id = 1358 where id = 368;
update floods.crossing set latest_status_id = 1359 where id = 369;
update floods.crossing set latest_status_id = 1360 where id = 370;
update floods.crossing set latest_status_id = 1361 where id = 371;
update floods.crossing set latest_status_id = 1362 where id = 372;
update floods.crossing set latest_status_id = 1363 where id = 373;
update floods.crossing set latest_status_id = 1364 where id = 374;
update floods.crossing set latest_status_id = 1365 where id = 375;
update floods.crossing set latest_status_id = 1366 where id = 376;
update floods.crossing set latest_status_id = 1405 where id = 415;
update floods.crossing set latest_status_id = 1406 where id = 416;
update floods.crossing set latest_status_id = 1407 where id = 417;
update floods.crossing set latest_status_id = 1408 where id = 418;
update floods.crossing set latest_status_id = 1409 where id = 419;
update floods.crossing set latest_status_id = 1410 where id = 420;
update floods.crossing set latest_status_id = 1411 where id = 421;
update floods.crossing set latest_status_id = 1412 where id = 422;
update floods.crossing set latest_status_id = 1413 where id = 423;
update floods.crossing set latest_status_id = 1414 where id = 424;
update floods.crossing set latest_status_id = 1416 where id = 426;
update floods.crossing set latest_status_id = 1417 where id = 427;
update floods.crossing set latest_status_id = 1418 where id = 428;
update floods.crossing set latest_status_id = 1419 where id = 429;
update floods.crossing set latest_status_id = 1420 where id = 430;
update floods.crossing set latest_status_id = 1421 where id = 431;
update floods.crossing set latest_status_id = 1422 where id = 432;
update floods.crossing set latest_status_id = 1423 where id = 433;
update floods.crossing set latest_status_id = 1424 where id = 434;
update floods.crossing set latest_status_id = 1425 where id = 435;
update floods.crossing set latest_status_id = 1426 where id = 436;
update floods.crossing set latest_status_id = 1427 where id = 437;
update floods.crossing set latest_status_id = 1428 where id = 438;
update floods.crossing set latest_status_id = 1429 where id = 439;
update floods.crossing set latest_status_id = 1430 where id = 440;
update floods.crossing set latest_status_id = 1431 where id = 441;
update floods.crossing set latest_status_id = 1432 where id = 442;
update floods.crossing set latest_status_id = 1433 where id = 443;
update floods.crossing set latest_status_id = 1434 where id = 444;
update floods.crossing set latest_status_id = 1435 where id = 445;
update floods.crossing set latest_status_id = 1436 where id = 446;
update floods.crossing set latest_status_id = 1437 where id = 447;
update floods.crossing set latest_status_id = 1439 where id = 449;
update floods.crossing set latest_status_id = 1440 where id = 450;
update floods.crossing set latest_status_id = 1441 where id = 451;
update floods.crossing set latest_status_id = 1442 where id = 452;
update floods.crossing set latest_status_id = 1443 where id = 453;
update floods.crossing set latest_status_id = 1444 where id = 454;
update floods.crossing set latest_status_id = 1445 where id = 455;
update floods.crossing set latest_status_id = 1446 where id = 456;
update floods.crossing set latest_status_id = 1447 where id = 457;
update floods.crossing set latest_status_id = 1448 where id = 458;
update floods.crossing set latest_status_id = 1449 where id = 459;
update floods.crossing set latest_status_id = 1450 where id = 460;
update floods.crossing set latest_status_id = 1451 where id = 461;
update floods.crossing set latest_status_id = 1452 where id = 462;
update floods.crossing set latest_status_id = 1453 where id = 463;
update floods.crossing set latest_status_id = 1455 where id = 465;
update floods.crossing set latest_status_id = 1456 where id = 466;
update floods.crossing set latest_status_id = 1457 where id = 467;
update floods.crossing set latest_status_id = 1458 where id = 468;
update floods.crossing set latest_status_id = 1459 where id = 469;
update floods.crossing set latest_status_id = 1460 where id = 470;
update floods.crossing set latest_status_id = 1461 where id = 471;
update floods.crossing set latest_status_id = 1462 where id = 472;
update floods.crossing set latest_status_id = 1463 where id = 473;
update floods.crossing set latest_status_id = 1464 where id = 474;
update floods.crossing set latest_status_id = 1465 where id = 475;
update floods.crossing set latest_status_id = 1466 where id = 476;
update floods.crossing set latest_status_id = 1467 where id = 477;
update floods.crossing set latest_status_id = 1468 where id = 478;
update floods.crossing set latest_status_id = 1469 where id = 479;
update floods.crossing set latest_status_id = 1470 where id = 480;
update floods.crossing set latest_status_id = 1471 where id = 481;
update floods.crossing set latest_status_id = 1473 where id = 483;
update floods.crossing set latest_status_id = 1474 where id = 484;
update floods.crossing set latest_status_id = 1475 where id = 485;
update floods.crossing set latest_status_id = 1476 where id = 486;
update floods.crossing set latest_status_id = 1477 where id = 487;
update floods.crossing set latest_status_id = 1478 where id = 488;
update floods.crossing set latest_status_id = 1479 where id = 489;
update floods.crossing set latest_status_id = 1480 where id = 490;
update floods.crossing set latest_status_id = 1481 where id = 491;
update floods.crossing set latest_status_id = 1482 where id = 492;
update floods.crossing set latest_status_id = 1483 where id = 493;
update floods.crossing set latest_status_id = 1484 where id = 494;
update floods.crossing set latest_status_id = 1485 where id = 495;
update floods.crossing set latest_status_id = 1486 where id = 496;
update floods.crossing set latest_status_id = 1487 where id = 497;
update floods.crossing set latest_status_id = 1488 where id = 498;
update floods.crossing set latest_status_id = 1489 where id = 499;
update floods.crossing set latest_status_id = 1490 where id = 500;
update floods.crossing set latest_status_id = 1491 where id = 501;
update floods.crossing set latest_status_id = 1492 where id = 502;
update floods.crossing set latest_status_id = 1493 where id = 503;
update floods.crossing set latest_status_id = 1495 where id = 505;
update floods.crossing set latest_status_id = 1496 where id = 506;
update floods.crossing set latest_status_id = 1497 where id = 507;
update floods.crossing set latest_status_id = 1499 where id = 509;
update floods.crossing set latest_status_id = 1500 where id = 510;
update floods.crossing set latest_status_id = 1501 where id = 511;
update floods.crossing set latest_status_id = 1502 where id = 512;
update floods.crossing set latest_status_id = 1504 where id = 514;
update floods.crossing set latest_status_id = 1505 where id = 515;
update floods.crossing set latest_status_id = 1506 where id = 516;
update floods.crossing set latest_status_id = 1507 where id = 517;
update floods.crossing set latest_status_id = 1508 where id = 518;
update floods.crossing set latest_status_id = 1509 where id = 519;
update floods.crossing set latest_status_id = 1510 where id = 520;
update floods.crossing set latest_status_id = 1511 where id = 521;
update floods.crossing set latest_status_id = 1512 where id = 522;
update floods.crossing set latest_status_id = 1513 where id = 523;
update floods.crossing set latest_status_id = 1514 where id = 524;
update floods.crossing set latest_status_id = 1515 where id = 525;
update floods.crossing set latest_status_id = 1516 where id = 526;
update floods.crossing set latest_status_id = 1517 where id = 527;
update floods.crossing set latest_status_id = 1518 where id = 528;
update floods.crossing set latest_status_id = 1519 where id = 529;
update floods.crossing set latest_status_id = 1520 where id = 530;
update floods.crossing set latest_status_id = 1521 where id = 531;
update floods.crossing set latest_status_id = 1522 where id = 532;
update floods.crossing set latest_status_id = 1523 where id = 533;
update floods.crossing set latest_status_id = 1524 where id = 534;
update floods.crossing set latest_status_id = 1525 where id = 535;
update floods.crossing set latest_status_id = 1526 where id = 536;
update floods.crossing set latest_status_id = 1527 where id = 537;
update floods.crossing set latest_status_id = 1528 where id = 538;
update floods.crossing set latest_status_id = 1529 where id = 539;
update floods.crossing set latest_status_id = 1530 where id = 540;
update floods.crossing set latest_status_id = 1531 where id = 541;
update floods.crossing set latest_status_id = 1532 where id = 542;
update floods.crossing set latest_status_id = 1533 where id = 543;
update floods.crossing set latest_status_id = 1534 where id = 544;
update floods.crossing set latest_status_id = 1535 where id = 545;
update floods.crossing set latest_status_id = 1536 where id = 546;
update floods.crossing set latest_status_id = 1537 where id = 547;
update floods.crossing set latest_status_id = 1538 where id = 548;
update floods.crossing set latest_status_id = 1539 where id = 549;
update floods.crossing set latest_status_id = 1540 where id = 550;
update floods.crossing set latest_status_id = 1541 where id = 551;
update floods.crossing set latest_status_id = 1542 where id = 552;
update floods.crossing set latest_status_id = 1543 where id = 553;
update floods.crossing set latest_status_id = 1544 where id = 554;
update floods.crossing set latest_status_id = 1545 where id = 555;
update floods.crossing set latest_status_id = 1546 where id = 556;
update floods.crossing set latest_status_id = 1547 where id = 557;
update floods.crossing set latest_status_id = 1548 where id = 558;
update floods.crossing set latest_status_id = 1549 where id = 559;
update floods.crossing set latest_status_id = 1550 where id = 560;
update floods.crossing set latest_status_id = 1551 where id = 561;
update floods.crossing set latest_status_id = 1552 where id = 562;
update floods.crossing set latest_status_id = 1553 where id = 563;
update floods.crossing set latest_status_id = 1554 where id = 564;
update floods.crossing set latest_status_id = 1555 where id = 565;
update floods.crossing set latest_status_id = 1556 where id = 566;
update floods.crossing set latest_status_id = 1557 where id = 567;
update floods.crossing set latest_status_id = 1558 where id = 568;
update floods.crossing set latest_status_id = 1559 where id = 569;
update floods.crossing set latest_status_id = 1560 where id = 570;
update floods.crossing set latest_status_id = 1561 where id = 571;
update floods.crossing set latest_status_id = 1562 where id = 572;
update floods.crossing set latest_status_id = 1563 where id = 573;
update floods.crossing set latest_status_id = 1564 where id = 574;
update floods.crossing set latest_status_id = 1565 where id = 575;
update floods.crossing set latest_status_id = 1566 where id = 576;
update floods.crossing set latest_status_id = 1567 where id = 577;
update floods.crossing set latest_status_id = 1568 where id = 578;
update floods.crossing set latest_status_id = 1569 where id = 579;
update floods.crossing set latest_status_id = 1570 where id = 580;
update floods.crossing set latest_status_id = 1571 where id = 581;
update floods.crossing set latest_status_id = 1572 where id = 582;
update floods.crossing set latest_status_id = 1573 where id = 583;
update floods.crossing set latest_status_id = 1574 where id = 584;
update floods.crossing set latest_status_id = 1575 where id = 585;
update floods.crossing set latest_status_id = 1576 where id = 586;
update floods.crossing set latest_status_id = 1577 where id = 587;
update floods.crossing set latest_status_id = 1578 where id = 588;
update floods.crossing set latest_status_id = 1579 where id = 589;
update floods.crossing set latest_status_id = 1580 where id = 590;
update floods.crossing set latest_status_id = 1581 where id = 591;
update floods.crossing set latest_status_id = 1582 where id = 592;
update floods.crossing set latest_status_id = 1583 where id = 593;
update floods.crossing set latest_status_id = 1584 where id = 594;
update floods.crossing set latest_status_id = 1585 where id = 595;
update floods.crossing set latest_status_id = 1586 where id = 596;
update floods.crossing set latest_status_id = 1587 where id = 597;
update floods.crossing set latest_status_id = 1588 where id = 598;
update floods.crossing set latest_status_id = 1589 where id = 599;
update floods.crossing set latest_status_id = 1590 where id = 600;
update floods.crossing set latest_status_id = 1591 where id = 601;
update floods.crossing set latest_status_id = 1592 where id = 602;
update floods.crossing set latest_status_id = 1593 where id = 603;
update floods.crossing set latest_status_id = 1594 where id = 604;
update floods.crossing set latest_status_id = 1595 where id = 605;
update floods.crossing set latest_status_id = 1596 where id = 606;
update floods.crossing set latest_status_id = 1597 where id = 607;
update floods.crossing set latest_status_id = 1598 where id = 608;
update floods.crossing set latest_status_id = 1599 where id = 609;
update floods.crossing set latest_status_id = 1600 where id = 610;
update floods.crossing set latest_status_id = 1601 where id = 611;
update floods.crossing set latest_status_id = 1602 where id = 612;
update floods.crossing set latest_status_id = 1603 where id = 613;
update floods.crossing set latest_status_id = 1604 where id = 614;
update floods.crossing set latest_status_id = 1605 where id = 615;
update floods.crossing set latest_status_id = 1606 where id = 616;
update floods.crossing set latest_status_id = 1607 where id = 617;
update floods.crossing set latest_status_id = 1608 where id = 618;
update floods.crossing set latest_status_id = 1609 where id = 619;
update floods.crossing set latest_status_id = 1610 where id = 620;
update floods.crossing set latest_status_id = 1611 where id = 621;
update floods.crossing set latest_status_id = 1612 where id = 622;
update floods.crossing set latest_status_id = 1613 where id = 623;
update floods.crossing set latest_status_id = 1614 where id = 624;
update floods.crossing set latest_status_id = 1615 where id = 625;
update floods.crossing set latest_status_id = 1616 where id = 626;
update floods.crossing set latest_status_id = 1617 where id = 627;
update floods.crossing set latest_status_id = 1618 where id = 628;
update floods.crossing set latest_status_id = 1619 where id = 629;
update floods.crossing set latest_status_id = 1620 where id = 630;
update floods.crossing set latest_status_id = 1621 where id = 631;
update floods.crossing set latest_status_id = 1622 where id = 632;
update floods.crossing set latest_status_id = 1623 where id = 633;
update floods.crossing set latest_status_id = 1624 where id = 634;
update floods.crossing set latest_status_id = 1625 where id = 635;
update floods.crossing set latest_status_id = 1626 where id = 636;
update floods.crossing set latest_status_id = 1627 where id = 637;
update floods.crossing set latest_status_id = 1628 where id = 638;
update floods.crossing set latest_status_id = 1629 where id = 639;
update floods.crossing set latest_status_id = 1630 where id = 640;
update floods.crossing set latest_status_id = 1633 where id = 643;
update floods.crossing set latest_status_id = 1634 where id = 644;
update floods.crossing set latest_status_id = 1635 where id = 645;
update floods.crossing set latest_status_id = 1636 where id = 646;
update floods.crossing set latest_status_id = 1637 where id = 647;
update floods.crossing set latest_status_id = 1638 where id = 648;
update floods.crossing set latest_status_id = 1639 where id = 649;
update floods.crossing set latest_status_id = 1640 where id = 650;
update floods.crossing set latest_status_id = 1642 where id = 652;
update floods.crossing set latest_status_id = 1643 where id = 653;
update floods.crossing set latest_status_id = 1644 where id = 654;
update floods.crossing set latest_status_id = 1645 where id = 655;
update floods.crossing set latest_status_id = 1646 where id = 656;
update floods.crossing set latest_status_id = 1647 where id = 657;
update floods.crossing set latest_status_id = 1648 where id = 658;
update floods.crossing set latest_status_id = 1649 where id = 659;
update floods.crossing set latest_status_id = 1650 where id = 660;
update floods.crossing set latest_status_id = 1651 where id = 661;
update floods.crossing set latest_status_id = 1652 where id = 662;
update floods.crossing set latest_status_id = 1653 where id = 663;
update floods.crossing set latest_status_id = 1654 where id = 664;
update floods.crossing set latest_status_id = 1655 where id = 665;
update floods.crossing set latest_status_id = 1656 where id = 666;
update floods.crossing set latest_status_id = 1657 where id = 667;
update floods.crossing set latest_status_id = 1658 where id = 668;
update floods.crossing set latest_status_id = 1659 where id = 669;
update floods.crossing set latest_status_id = 1660 where id = 670;
update floods.crossing set latest_status_id = 1661 where id = 671;
update floods.crossing set latest_status_id = 1662 where id = 672;
update floods.crossing set latest_status_id = 1663 where id = 673;
update floods.crossing set latest_status_id = 1664 where id = 674;
update floods.crossing set latest_status_id = 1665 where id = 675;
update floods.crossing set latest_status_id = 1666 where id = 676;
update floods.crossing set latest_status_id = 1667 where id = 677;
update floods.crossing set latest_status_id = 1668 where id = 678;
update floods.crossing set latest_status_id = 1669 where id = 679;
update floods.crossing set latest_status_id = 1670 where id = 680;
update floods.crossing set latest_status_id = 1671 where id = 681;
update floods.crossing set latest_status_id = 1672 where id = 682;
update floods.crossing set latest_status_id = 1673 where id = 683;
update floods.crossing set latest_status_id = 1674 where id = 684;
update floods.crossing set latest_status_id = 1675 where id = 685;
update floods.crossing set latest_status_id = 1676 where id = 686;
update floods.crossing set latest_status_id = 1677 where id = 687;
update floods.crossing set latest_status_id = 1679 where id = 689;
update floods.crossing set latest_status_id = 1680 where id = 690;
update floods.crossing set latest_status_id = 1681 where id = 691;
update floods.crossing set latest_status_id = 1682 where id = 692;
update floods.crossing set latest_status_id = 1689 where id = 699;
update floods.crossing set latest_status_id = 1692 where id = 702;
update floods.crossing set latest_status_id = 1693 where id = 703;
update floods.crossing set latest_status_id = 1694 where id = 704;
update floods.crossing set latest_status_id = 1695 where id = 705;
update floods.crossing set latest_status_id = 1698 where id = 708;
update floods.crossing set latest_status_id = 1699 where id = 709;
update floods.crossing set latest_status_id = 1700 where id = 710;
update floods.crossing set latest_status_id = 1702 where id = 712;
update floods.crossing set latest_status_id = 1706 where id = 716;
update floods.crossing set latest_status_id = 1707 where id = 717;
update floods.crossing set latest_status_id = 1708 where id = 718;
update floods.crossing set latest_status_id = 1709 where id = 719;
update floods.crossing set latest_status_id = 1710 where id = 720;
update floods.crossing set latest_status_id = 1711 where id = 721;
update floods.crossing set latest_status_id = 1714 where id = 724;
update floods.crossing set latest_status_id = 1715 where id = 725;
update floods.crossing set latest_status_id = 1716 where id = 726;
update floods.crossing set latest_status_id = 1717 where id = 727;
update floods.crossing set latest_status_id = 1718 where id = 728;
update floods.crossing set latest_status_id = 1719 where id = 729;
update floods.crossing set latest_status_id = 1721 where id = 731;
update floods.crossing set latest_status_id = 1722 where id = 732;
update floods.crossing set latest_status_id = 1723 where id = 733;
update floods.crossing set latest_status_id = 1724 where id = 734;
update floods.crossing set latest_status_id = 1725 where id = 735;
update floods.crossing set latest_status_id = 1726 where id = 736;
update floods.crossing set latest_status_id = 1727 where id = 737;
update floods.crossing set latest_status_id = 1729 where id = 739;
update floods.crossing set latest_status_id = 1730 where id = 740;
update floods.crossing set latest_status_id = 1731 where id = 741;
update floods.crossing set latest_status_id = 1732 where id = 742;
update floods.crossing set latest_status_id = 1733 where id = 743;
update floods.crossing set latest_status_id = 1734 where id = 744;
update floods.crossing set latest_status_id = 1735 where id = 745;
update floods.crossing set latest_status_id = 1736 where id = 746;
update floods.crossing set latest_status_id = 1739 where id = 749;
update floods.crossing set latest_status_id = 1740 where id = 750;
update floods.crossing set latest_status_id = 1741 where id = 751;
update floods.crossing set latest_status_id = 1744 where id = 754;
update floods.crossing set latest_status_id = 1745 where id = 755;
update floods.crossing set latest_status_id = 1746 where id = 756;
update floods.crossing set latest_status_id = 1747 where id = 757;
update floods.crossing set latest_status_id = 1748 where id = 758;
update floods.crossing set latest_status_id = 1749 where id = 759;
update floods.crossing set latest_status_id = 1750 where id = 760;
update floods.crossing set latest_status_id = 1751 where id = 761;
update floods.crossing set latest_status_id = 1752 where id = 762;
update floods.crossing set latest_status_id = 1753 where id = 763;
update floods.crossing set latest_status_id = 1754 where id = 764;
update floods.crossing set latest_status_id = 1755 where id = 765;
update floods.crossing set latest_status_id = 1756 where id = 766;
update floods.crossing set latest_status_id = 1757 where id = 767;
update floods.crossing set latest_status_id = 1758 where id = 768;
update floods.crossing set latest_status_id = 1759 where id = 769;
update floods.crossing set latest_status_id = 1760 where id = 770;
update floods.crossing set latest_status_id = 1761 where id = 771;
update floods.crossing set latest_status_id = 1762 where id = 772;
update floods.crossing set latest_status_id = 1763 where id = 773;
update floods.crossing set latest_status_id = 1764 where id = 774;
update floods.crossing set latest_status_id = 1765 where id = 775;
update floods.crossing set latest_status_id = 1766 where id = 776;
update floods.crossing set latest_status_id = 1767 where id = 777;
update floods.crossing set latest_status_id = 1768 where id = 778;
update floods.crossing set latest_status_id = 1769 where id = 779;
update floods.crossing set latest_status_id = 1770 where id = 780;
update floods.crossing set latest_status_id = 1772 where id = 782;
update floods.crossing set latest_status_id = 1773 where id = 783;
update floods.crossing set latest_status_id = 1774 where id = 784;
update floods.crossing set latest_status_id = 1775 where id = 785;
update floods.crossing set latest_status_id = 1776 where id = 786;
update floods.crossing set latest_status_id = 1777 where id = 787;
update floods.crossing set latest_status_id = 1778 where id = 788;
update floods.crossing set latest_status_id = 1779 where id = 789;
update floods.crossing set latest_status_id = 1780 where id = 790;
update floods.crossing set latest_status_id = 1781 where id = 791;
update floods.crossing set latest_status_id = 1782 where id = 792;
update floods.crossing set latest_status_id = 1783 where id = 793;
update floods.crossing set latest_status_id = 1784 where id = 794;
update floods.crossing set latest_status_id = 1785 where id = 795;
update floods.crossing set latest_status_id = 1786 where id = 796;
update floods.crossing set latest_status_id = 1787 where id = 797;
update floods.crossing set latest_status_id = 1788 where id = 798;
update floods.crossing set latest_status_id = 1789 where id = 799;
update floods.crossing set latest_status_id = 1790 where id = 800;
update floods.crossing set latest_status_id = 1791 where id = 801;
update floods.crossing set latest_status_id = 1792 where id = 802;
update floods.crossing set latest_status_id = 1793 where id = 803;
update floods.crossing set latest_status_id = 1794 where id = 804;
update floods.crossing set latest_status_id = 1795 where id = 805;
update floods.crossing set latest_status_id = 1796 where id = 806;
update floods.crossing set latest_status_id = 1797 where id = 807;
update floods.crossing set latest_status_id = 1798 where id = 808;
update floods.crossing set latest_status_id = 1799 where id = 809;
update floods.crossing set latest_status_id = 1800 where id = 810;
update floods.crossing set latest_status_id = 1801 where id = 811;
update floods.crossing set latest_status_id = 1802 where id = 812;
update floods.crossing set latest_status_id = 1803 where id = 813;
update floods.crossing set latest_status_id = 1804 where id = 814;
update floods.crossing set latest_status_id = 1805 where id = 815;
update floods.crossing set latest_status_id = 1806 where id = 816;
update floods.crossing set latest_status_id = 1807 where id = 817;
update floods.crossing set latest_status_id = 1808 where id = 818;
update floods.crossing set latest_status_id = 1809 where id = 819;
update floods.crossing set latest_status_id = 1810 where id = 820;
update floods.crossing set latest_status_id = 1811 where id = 821;
update floods.crossing set latest_status_id = 1812 where id = 822;
update floods.crossing set latest_status_id = 1813 where id = 823;
update floods.crossing set latest_status_id = 1814 where id = 824;
update floods.crossing set latest_status_id = 1815 where id = 825;
update floods.crossing set latest_status_id = 1816 where id = 826;
update floods.crossing set latest_status_id = 1817 where id = 827;
update floods.crossing set latest_status_id = 1818 where id = 828;
update floods.crossing set latest_status_id = 1819 where id = 829;
update floods.crossing set latest_status_id = 1820 where id = 830;
update floods.crossing set latest_status_id = 1821 where id = 831;
update floods.crossing set latest_status_id = 1822 where id = 832;
update floods.crossing set latest_status_id = 1823 where id = 833;
update floods.crossing set latest_status_id = 1824 where id = 834;
update floods.crossing set latest_status_id = 1825 where id = 835;
update floods.crossing set latest_status_id = 1826 where id = 836;
update floods.crossing set latest_status_id = 1827 where id = 837;
update floods.crossing set latest_status_id = 1828 where id = 838;
update floods.crossing set latest_status_id = 1829 where id = 839;
update floods.crossing set latest_status_id = 1830 where id = 840;
update floods.crossing set latest_status_id = 1831 where id = 841;
update floods.crossing set latest_status_id = 1832 where id = 842;
update floods.crossing set latest_status_id = 1833 where id = 843;
update floods.crossing set latest_status_id = 1834 where id = 844;
update floods.crossing set latest_status_id = 1835 where id = 845;
update floods.crossing set latest_status_id = 1836 where id = 846;
update floods.crossing set latest_status_id = 1837 where id = 847;
update floods.crossing set latest_status_id = 1838 where id = 848;
update floods.crossing set latest_status_id = 1839 where id = 849;
update floods.crossing set latest_status_id = 1840 where id = 850;
update floods.crossing set latest_status_id = 1841 where id = 851;
update floods.crossing set latest_status_id = 1842 where id = 852;
update floods.crossing set latest_status_id = 1843 where id = 853;
update floods.crossing set latest_status_id = 1844 where id = 854;
update floods.crossing set latest_status_id = 1845 where id = 855;
update floods.crossing set latest_status_id = 1846 where id = 856;
update floods.crossing set latest_status_id = 1847 where id = 857;
update floods.crossing set latest_status_id = 1848 where id = 858;
update floods.crossing set latest_status_id = 1849 where id = 859;
update floods.crossing set latest_status_id = 1850 where id = 860;
update floods.crossing set latest_status_id = 1851 where id = 861;
update floods.crossing set latest_status_id = 1852 where id = 862;
update floods.crossing set latest_status_id = 1853 where id = 863;
update floods.crossing set latest_status_id = 1854 where id = 864;
update floods.crossing set latest_status_id = 1855 where id = 865;
update floods.crossing set latest_status_id = 1856 where id = 866;
update floods.crossing set latest_status_id = 1857 where id = 867;
update floods.crossing set latest_status_id = 1858 where id = 868;
update floods.crossing set latest_status_id = 1859 where id = 869;
update floods.crossing set latest_status_id = 1860 where id = 870;
update floods.crossing set latest_status_id = 1861 where id = 871;
update floods.crossing set latest_status_id = 1862 where id = 872;
update floods.crossing set latest_status_id = 1863 where id = 873;
update floods.crossing set latest_status_id = 1864 where id = 874;
update floods.crossing set latest_status_id = 1865 where id = 875;
update floods.crossing set latest_status_id = 1866 where id = 876;
update floods.crossing set latest_status_id = 1867 where id = 877;
update floods.crossing set latest_status_id = 1868 where id = 878;
update floods.crossing set latest_status_id = 1869 where id = 879;
update floods.crossing set latest_status_id = 1870 where id = 880;
update floods.crossing set latest_status_id = 1871 where id = 881;
update floods.crossing set latest_status_id = 1872 where id = 882;
update floods.crossing set latest_status_id = 1873 where id = 883;
update floods.crossing set latest_status_id = 1874 where id = 884;
update floods.crossing set latest_status_id = 1875 where id = 885;
update floods.crossing set latest_status_id = 1876 where id = 886;
update floods.crossing set latest_status_id = 1877 where id = 887;
update floods.crossing set latest_status_id = 1878 where id = 888;
update floods.crossing set latest_status_id = 1879 where id = 889;
update floods.crossing set latest_status_id = 1880 where id = 890;
update floods.crossing set latest_status_id = 1881 where id = 891;
update floods.crossing set latest_status_id = 1882 where id = 892;
update floods.crossing set latest_status_id = 1885 where id = 895;
update floods.crossing set latest_status_id = 1886 where id = 896;
update floods.crossing set latest_status_id = 1887 where id = 897;
update floods.crossing set latest_status_id = 1888 where id = 898;
update floods.crossing set latest_status_id = 1889 where id = 899;
update floods.crossing set latest_status_id = 1890 where id = 900;
update floods.crossing set latest_status_id = 1891 where id = 901;
update floods.crossing set latest_status_id = 1892 where id = 902;
update floods.crossing set latest_status_id = 1893 where id = 903;
update floods.crossing set latest_status_id = 1894 where id = 904;
update floods.crossing set latest_status_id = 1895 where id = 905;
update floods.crossing set latest_status_id = 1898 where id = 908;
update floods.crossing set latest_status_id = 1899 where id = 909;
update floods.crossing set latest_status_id = 1900 where id = 910;
update floods.crossing set latest_status_id = 1901 where id = 911;
update floods.crossing set latest_status_id = 1902 where id = 912;
update floods.crossing set latest_status_id = 1903 where id = 913;
update floods.crossing set latest_status_id = 1905 where id = 915;
update floods.crossing set latest_status_id = 1906 where id = 916;
update floods.crossing set latest_status_id = 1907 where id = 917;
update floods.crossing set latest_status_id = 1908 where id = 918;
update floods.crossing set latest_status_id = 1909 where id = 919;
update floods.crossing set latest_status_id = 1910 where id = 920;
update floods.crossing set latest_status_id = 1911 where id = 921;
update floods.crossing set latest_status_id = 1914 where id = 924;
update floods.crossing set latest_status_id = 1915 where id = 925;
update floods.crossing set latest_status_id = 1916 where id = 926;
update floods.crossing set latest_status_id = 1917 where id = 927;
update floods.crossing set latest_status_id = 1918 where id = 928;
update floods.crossing set latest_status_id = 1919 where id = 929;
update floods.crossing set latest_status_id = 1920 where id = 930;
update floods.crossing set latest_status_id = 1921 where id = 931;
update floods.crossing set latest_status_id = 1922 where id = 932;
update floods.crossing set latest_status_id = 1923 where id = 933;
update floods.crossing set latest_status_id = 1924 where id = 934;
update floods.crossing set latest_status_id = 1927 where id = 937;
update floods.crossing set latest_status_id = 1928 where id = 938;
update floods.crossing set latest_status_id = 1929 where id = 939;
update floods.crossing set latest_status_id = 1930 where id = 940;
update floods.crossing set latest_status_id = 1931 where id = 941;
update floods.crossing set latest_status_id = 1932 where id = 942;
update floods.crossing set latest_status_id = 1933 where id = 943;
update floods.crossing set latest_status_id = 1934 where id = 944;
update floods.crossing set latest_status_id = 1935 where id = 945;
update floods.crossing set latest_status_id = 1938 where id = 948;
update floods.crossing set latest_status_id = 1941 where id = 951;
update floods.crossing set latest_status_id = 1942 where id = 952;
update floods.crossing set latest_status_id = 1944 where id = 954;
update floods.crossing set latest_status_id = 1945 where id = 955;
update floods.crossing set latest_status_id = 1946 where id = 956;
update floods.crossing set latest_status_id = 1948 where id = 958;
update floods.crossing set latest_status_id = 1949 where id = 959;
update floods.crossing set latest_status_id = 1950 where id = 960;
update floods.crossing set latest_status_id = 1951 where id = 961;
update floods.crossing set latest_status_id = 1952 where id = 962;
update floods.crossing set latest_status_id = 1953 where id = 963;
update floods.crossing set latest_status_id = 1954 where id = 964;
update floods.crossing set latest_status_id = 1955 where id = 965;
update floods.crossing set latest_status_id = 1956 where id = 966;
update floods.crossing set latest_status_id = 1957 where id = 967;
update floods.crossing set latest_status_id = 1958 where id = 968;
update floods.crossing set latest_status_id = 1959 where id = 969;
update floods.crossing set latest_status_id = 1960 where id = 970;
update floods.crossing set latest_status_id = 1961 where id = 971;
update floods.crossing set latest_status_id = 1962 where id = 972;
update floods.crossing set latest_status_id = 1963 where id = 973;
update floods.crossing set latest_status_id = 1964 where id = 974;
update floods.crossing set latest_status_id = 1965 where id = 975;
update floods.crossing set latest_status_id = 1967 where id = 977;
update floods.crossing set latest_status_id = 1968 where id = 978;
update floods.crossing set latest_status_id = 1969 where id = 979;
update floods.crossing set latest_status_id = 1970 where id = 980;
update floods.crossing set latest_status_id = 1971 where id = 981;
update floods.crossing set latest_status_id = 1972 where id = 982;
update floods.crossing set latest_status_id = 1973 where id = 983;
update floods.crossing set latest_status_id = 2011 where id = 1021;
update floods.crossing set latest_status_id = 2013 where id = 1023;
update floods.crossing set latest_status_id = 2015 where id = 1025;
update floods.crossing set latest_status_id = 2019 where id = 1029;
update floods.crossing set latest_status_id = 2020 where id = 1030;
update floods.crossing set latest_status_id = 2023 where id = 1033;
update floods.crossing set latest_status_id = 2025 where id = 1035;
update floods.crossing set latest_status_id = 2026 where id = 1036;
update floods.crossing set latest_status_id = 2028 where id = 1038;
update floods.crossing set latest_status_id = 2029 where id = 1039;
update floods.crossing set latest_status_id = 2033 where id = 1043;
update floods.crossing set latest_status_id = 2034 where id = 1044;
update floods.crossing set latest_status_id = 2035 where id = 1045;
update floods.crossing set latest_status_id = 2036 where id = 1046;
update floods.crossing set latest_status_id = 2037 where id = 1047;
update floods.crossing set latest_status_id = 2038 where id = 1048;
update floods.crossing set latest_status_id = 2039 where id = 1049;
update floods.crossing set latest_status_id = 2040 where id = 1050;
update floods.crossing set latest_status_id = 2041 where id = 1051;
update floods.crossing set latest_status_id = 2042 where id = 1052;
update floods.crossing set latest_status_id = 2043 where id = 1053;
update floods.crossing set latest_status_id = 2044 where id = 1054;
update floods.crossing set latest_status_id = 2045 where id = 1055;
update floods.crossing set latest_status_id = 2046 where id = 1056;
update floods.crossing set latest_status_id = 2047 where id = 1057;
update floods.crossing set latest_status_id = 2048 where id = 1058;
update floods.crossing set latest_status_id = 2049 where id = 1059;
update floods.crossing set latest_status_id = 2050 where id = 1060;
update floods.crossing set latest_status_id = 2051 where id = 1061;
update floods.crossing set latest_status_id = 2052 where id = 1062;
update floods.crossing set latest_status_id = 2053 where id = 1063;
update floods.crossing set latest_status_id = 2054 where id = 1064;
update floods.crossing set latest_status_id = 2055 where id = 1065;
update floods.crossing set latest_status_id = 2056 where id = 1066;
update floods.crossing set latest_status_id = 2057 where id = 1067;
update floods.crossing set latest_status_id = 2059 where id = 1069;
update floods.crossing set latest_status_id = 2060 where id = 1070;
update floods.crossing set latest_status_id = 2061 where id = 1071;
update floods.crossing set latest_status_id = 2062 where id = 1072;
update floods.crossing set latest_status_id = 2063 where id = 1073;
update floods.crossing set latest_status_id = 2064 where id = 1074;
update floods.crossing set latest_status_id = 2065 where id = 1075;
update floods.crossing set latest_status_id = 2066 where id = 1076;
update floods.crossing set latest_status_id = 2067 where id = 1077;
update floods.crossing set latest_status_id = 2068 where id = 1078;
update floods.crossing set latest_status_id = 2069 where id = 1079;
update floods.crossing set latest_status_id = 2070 where id = 1080;
update floods.crossing set latest_status_id = 2071 where id = 1081;
update floods.crossing set latest_status_id = 2072 where id = 1082;
update floods.crossing set latest_status_id = 2073 where id = 1083;
update floods.crossing set latest_status_id = 2079 where id = 1089;
update floods.crossing set latest_status_id = 2080 where id = 1090;
update floods.crossing set latest_status_id = 2081 where id = 1091;
update floods.crossing set latest_status_id = 2082 where id = 1092;
update floods.crossing set latest_status_id = 2083 where id = 1093;
update floods.crossing set latest_status_id = 2084 where id = 1094;
update floods.crossing set latest_status_id = 2085 where id = 1095;
update floods.crossing set latest_status_id = 2087 where id = 1097;
update floods.crossing set latest_status_id = 2089 where id = 1099;
update floods.crossing set latest_status_id = 2090 where id = 1100;
update floods.crossing set latest_status_id = 2091 where id = 1101;
update floods.crossing set latest_status_id = 2092 where id = 1102;
update floods.crossing set latest_status_id = 2093 where id = 1103;
update floods.crossing set latest_status_id = 2094 where id = 1104;
update floods.crossing set latest_status_id = 2095 where id = 1105;
update floods.crossing set latest_status_id = 2097 where id = 1107;
update floods.crossing set latest_status_id = 2099 where id = 1109;
update floods.crossing set latest_status_id = 2100 where id = 1110;
update floods.crossing set latest_status_id = 2101 where id = 1111;
update floods.crossing set latest_status_id = 2102 where id = 1112;
update floods.crossing set latest_status_id = 2107 where id = 1117;
update floods.crossing set latest_status_id = 2108 where id = 1118;
update floods.crossing set latest_status_id = 2112 where id = 1122;
update floods.crossing set latest_status_id = 2113 where id = 1123;
update floods.crossing set latest_status_id = 2115 where id = 1125;
update floods.crossing set latest_status_id = 2117 where id = 1127;
update floods.crossing set latest_status_id = 2118 where id = 1128;
update floods.crossing set latest_status_id = 2119 where id = 1129;
update floods.crossing set latest_status_id = 2120 where id = 1130;
update floods.crossing set latest_status_id = 2121 where id = 1131;
update floods.crossing set latest_status_id = 2122 where id = 1132;
update floods.crossing set latest_status_id = 2123 where id = 1133;
update floods.crossing set latest_status_id = 2124 where id = 1134;
update floods.crossing set latest_status_id = 2127 where id = 1137;
update floods.crossing set latest_status_id = 2129 where id = 1139;
update floods.crossing set latest_status_id = 2130 where id = 1140;
update floods.crossing set latest_status_id = 2131 where id = 1141;
update floods.crossing set latest_status_id = 2132 where id = 1142;
update floods.crossing set latest_status_id = 2133 where id = 1143;
update floods.crossing set latest_status_id = 2134 where id = 1144;
update floods.crossing set latest_status_id = 2135 where id = 1145;
update floods.crossing set latest_status_id = 2136 where id = 1146;
update floods.crossing set latest_status_id = 2138 where id = 1148;
update floods.crossing set latest_status_id = 2140 where id = 1150;
update floods.crossing set latest_status_id = 2143 where id = 1153;
update floods.crossing set latest_status_id = 2144 where id = 1154;
update floods.crossing set latest_status_id = 2147 where id = 1157;
update floods.crossing set latest_status_id = 2148 where id = 1158;
update floods.crossing set latest_status_id = 2149 where id = 1159;
update floods.crossing set latest_status_id = 2150 where id = 1160;
update floods.crossing set latest_status_id = 2151 where id = 1161;
update floods.crossing set latest_status_id = 2153 where id = 1163;
update floods.crossing set latest_status_id = 2165 where id = 1175;
update floods.crossing set latest_status_id = 2167 where id = 1177;
update floods.crossing set latest_status_id = 2168 where id = 1178;
update floods.crossing set latest_status_id = 2169 where id = 1179;
update floods.crossing set latest_status_id = 2170 where id = 1180;
update floods.crossing set latest_status_id = 2172 where id = 1182;
update floods.crossing set latest_status_id = 2173 where id = 1183;
update floods.crossing set latest_status_id = 2174 where id = 1184;
update floods.crossing set latest_status_id = 2176 where id = 1186;
update floods.crossing set latest_status_id = 2177 where id = 1187;
update floods.crossing set latest_status_id = 2178 where id = 1188;
update floods.crossing set latest_status_id = 2179 where id = 1189;
update floods.crossing set latest_status_id = 2180 where id = 1190;
update floods.crossing set latest_status_id = 2181 where id = 1191;
update floods.crossing set latest_status_id = 2182 where id = 1192;
update floods.crossing set latest_status_id = 2183 where id = 1193;
update floods.crossing set latest_status_id = 2184 where id = 1194;
update floods.crossing set latest_status_id = 2185 where id = 1195;
update floods.crossing set latest_status_id = 2186 where id = 1196;
update floods.crossing set latest_status_id = 2187 where id = 1197;
update floods.crossing set latest_status_id = 2188 where id = 1198;
update floods.crossing set latest_status_id = 2189 where id = 1199;
update floods.crossing set latest_status_id = 2190 where id = 1200;
update floods.crossing set latest_status_id = 2191 where id = 1201;
update floods.crossing set latest_status_id = 2194 where id = 1204;
update floods.crossing set latest_status_id = 2196 where id = 1206;
update floods.crossing set latest_status_id = 2197 where id = 1207;
update floods.crossing set latest_status_id = 2200 where id = 1210;
update floods.crossing set latest_status_id = 2203 where id = 1213;
update floods.crossing set latest_status_id = 2204 where id = 1214;
update floods.crossing set latest_status_id = 2205 where id = 1215;
update floods.crossing set latest_status_id = 2206 where id = 1216;
update floods.crossing set latest_status_id = 2207 where id = 1217;
update floods.crossing set latest_status_id = 2208 where id = 1218;
update floods.crossing set latest_status_id = 2209 where id = 1219;
update floods.crossing set latest_status_id = 2210 where id = 1220;
update floods.crossing set latest_status_id = 2211 where id = 1221;
update floods.crossing set latest_status_id = 2212 where id = 1222;
update floods.crossing set latest_status_id = 2213 where id = 1223;
update floods.crossing set latest_status_id = 2215 where id = 1225;
update floods.crossing set latest_status_id = 2216 where id = 1226;
update floods.crossing set latest_status_id = 2217 where id = 1227;
update floods.crossing set latest_status_id = 2218 where id = 1228;
update floods.crossing set latest_status_id = 2219 where id = 1229;
update floods.crossing set latest_status_id = 2220 where id = 1230;
update floods.crossing set latest_status_id = 2221 where id = 1231;
update floods.crossing set latest_status_id = 2222 where id = 1232;
update floods.crossing set latest_status_id = 2223 where id = 1233;
update floods.crossing set latest_status_id = 2224 where id = 1234;
update floods.crossing set latest_status_id = 2225 where id = 1235;
update floods.crossing set latest_status_id = 2226 where id = 1236;
update floods.crossing set latest_status_id = 2227 where id = 1237;
update floods.crossing set latest_status_id = 2228 where id = 1238;
update floods.crossing set latest_status_id = 2229 where id = 1239;
update floods.crossing set latest_status_id = 2230 where id = 1240;
update floods.crossing set latest_status_id = 2231 where id = 1241;
update floods.crossing set latest_status_id = 2232 where id = 1242;
update floods.crossing set latest_status_id = 2233 where id = 1243;
update floods.crossing set latest_status_id = 2234 where id = 1244;
update floods.crossing set latest_status_id = 2235 where id = 1245;
update floods.crossing set latest_status_id = 2236 where id = 1246;
update floods.crossing set latest_status_id = 2237 where id = 1247;
update floods.crossing set latest_status_id = 2238 where id = 1248;
update floods.crossing set latest_status_id = 2239 where id = 1249;
update floods.crossing set latest_status_id = 2240 where id = 1250;
update floods.crossing set latest_status_id = 2241 where id = 1251;
update floods.crossing set latest_status_id = 2242 where id = 1252;
update floods.crossing set latest_status_id = 2243 where id = 1253;
update floods.crossing set latest_status_id = 2244 where id = 1254;
update floods.crossing set latest_status_id = 2245 where id = 1255;
update floods.crossing set latest_status_id = 2246 where id = 1256;
update floods.crossing set latest_status_id = 2247 where id = 1257;
update floods.crossing set latest_status_id = 2248 where id = 1258;
update floods.crossing set latest_status_id = 2250 where id = 1260;
update floods.crossing set latest_status_id = 2251 where id = 1261;
update floods.crossing set latest_status_id = 2252 where id = 1262;
update floods.crossing set latest_status_id = 2253 where id = 1263;
update floods.crossing set latest_status_id = 2254 where id = 1264;
update floods.crossing set latest_status_id = 2255 where id = 1265;
update floods.crossing set latest_status_id = 2256 where id = 1266;
update floods.crossing set latest_status_id = 2257 where id = 1267;
update floods.crossing set latest_status_id = 2258 where id = 1268;
update floods.crossing set latest_status_id = 2259 where id = 1269;
update floods.crossing set latest_status_id = 2260 where id = 1270;
update floods.crossing set latest_status_id = 2261 where id = 1271;
update floods.crossing set latest_status_id = 2262 where id = 1272;
update floods.crossing set latest_status_id = 2263 where id = 1273;
update floods.crossing set latest_status_id = 2264 where id = 1274;
update floods.crossing set latest_status_id = 2265 where id = 1275;
update floods.crossing set latest_status_id = 2267 where id = 1277;
update floods.crossing set latest_status_id = 2268 where id = 1278;
update floods.crossing set latest_status_id = 2269 where id = 1279;
update floods.crossing set latest_status_id = 2271 where id = 1281;
update floods.crossing set latest_status_id = 2272 where id = 1282;
update floods.crossing set latest_status_id = 2273 where id = 1283;
update floods.crossing set latest_status_id = 2274 where id = 1284;
update floods.crossing set latest_status_id = 2275 where id = 1285;
update floods.crossing set latest_status_id = 2276 where id = 1286;
update floods.crossing set latest_status_id = 2277 where id = 1287;
update floods.crossing set latest_status_id = 2278 where id = 1288;
update floods.crossing set latest_status_id = 2279 where id = 1289;
update floods.crossing set latest_status_id = 2280 where id = 1290;
update floods.crossing set latest_status_id = 2281 where id = 1291;
update floods.crossing set latest_status_id = 2282 where id = 1292;
update floods.crossing set latest_status_id = 2283 where id = 1293;
update floods.crossing set latest_status_id = 2284 where id = 1294;
update floods.crossing set latest_status_id = 2285 where id = 1295;
update floods.crossing set latest_status_id = 2286 where id = 1296;
update floods.crossing set latest_status_id = 2287 where id = 1297;
update floods.crossing set latest_status_id = 2288 where id = 1298;
update floods.crossing set latest_status_id = 2289 where id = 1299;
update floods.crossing set latest_status_id = 2291 where id = 1301;
update floods.crossing set latest_status_id = 2292 where id = 1302;
update floods.crossing set latest_status_id = 2293 where id = 1303;
update floods.crossing set latest_status_id = 2294 where id = 1304;
update floods.crossing set latest_status_id = 2295 where id = 1305;
update floods.crossing set latest_status_id = 2296 where id = 1306;
update floods.crossing set latest_status_id = 2297 where id = 1307;
update floods.crossing set latest_status_id = 2298 where id = 1308;
update floods.crossing set latest_status_id = 2299 where id = 1309;
update floods.crossing set latest_status_id = 2300 where id = 1310;
update floods.crossing set latest_status_id = 2301 where id = 1311;
update floods.crossing set latest_status_id = 2302 where id = 1312;
update floods.crossing set latest_status_id = 2303 where id = 1313;
update floods.crossing set latest_status_id = 2304 where id = 1314;
update floods.crossing set latest_status_id = 2305 where id = 1315;
update floods.crossing set latest_status_id = 2306 where id = 1316;
update floods.crossing set latest_status_id = 2307 where id = 1317;
update floods.crossing set latest_status_id = 2308 where id = 1318;
update floods.crossing set latest_status_id = 2309 where id = 1319;
update floods.crossing set latest_status_id = 2310 where id = 1320;
update floods.crossing set latest_status_id = 2311 where id = 1321;
update floods.crossing set latest_status_id = 2312 where id = 1322;
update floods.crossing set latest_status_id = 2313 where id = 1323;
update floods.crossing set latest_status_id = 2314 where id = 1324;
update floods.crossing set latest_status_id = 2315 where id = 1325;
update floods.crossing set latest_status_id = 2316 where id = 1326;
update floods.crossing set latest_status_id = 2317 where id = 1327;
update floods.crossing set latest_status_id = 2318 where id = 1328;
update floods.crossing set latest_status_id = 2319 where id = 1329;
update floods.crossing set latest_status_id = 2320 where id = 1330;
update floods.crossing set latest_status_id = 2321 where id = 1331;
update floods.crossing set latest_status_id = 2322 where id = 1332;
update floods.crossing set latest_status_id = 2323 where id = 1333;
update floods.crossing set latest_status_id = 2324 where id = 1334;
update floods.crossing set latest_status_id = 2325 where id = 1335;
update floods.crossing set latest_status_id = 2326 where id = 1336;
update floods.crossing set latest_status_id = 2327 where id = 1337;
update floods.crossing set latest_status_id = 2328 where id = 1338;
update floods.crossing set latest_status_id = 2329 where id = 1339;
update floods.crossing set latest_status_id = 2330 where id = 1340;
update floods.crossing set latest_status_id = 2331 where id = 1341;
update floods.crossing set latest_status_id = 2332 where id = 1342;
update floods.crossing set latest_status_id = 2333 where id = 1343;
update floods.crossing set latest_status_id = 2334 where id = 1344;
update floods.crossing set latest_status_id = 2335 where id = 1345;
update floods.crossing set latest_status_id = 2337 where id = 1347;
update floods.crossing set latest_status_id = 2339 where id = 1349;
update floods.crossing set latest_status_id = 2340 where id = 1350;
update floods.crossing set latest_status_id = 2341 where id = 1351;
update floods.crossing set latest_status_id = 2344 where id = 1354;
update floods.crossing set latest_status_id = 2350 where id = 1360;
update floods.crossing set latest_status_id = 2351 where id = 1361;
update floods.crossing set latest_status_id = 2353 where id = 1363;
update floods.crossing set latest_status_id = 2354 where id = 1364;
update floods.crossing set latest_status_id = 2356 where id = 1366;
update floods.crossing set latest_status_id = 2357 where id = 1367;
update floods.crossing set latest_status_id = 2358 where id = 1368;
update floods.crossing set latest_status_id = 2359 where id = 1369;
update floods.crossing set latest_status_id = 2360 where id = 1370;
update floods.crossing set latest_status_id = 2361 where id = 1371;
update floods.crossing set latest_status_id = 2362 where id = 1372;
update floods.crossing set latest_status_id = 2363 where id = 1373;
update floods.crossing set latest_status_id = 2364 where id = 1374;
update floods.crossing set latest_status_id = 2365 where id = 1375;
update floods.crossing set latest_status_id = 2366 where id = 1376;
update floods.crossing set latest_status_id = 2367 where id = 1377;
update floods.crossing set latest_status_id = 2368 where id = 1378;
update floods.crossing set latest_status_id = 2370 where id = 1380;
update floods.crossing set latest_status_id = 2371 where id = 1381;
update floods.crossing set latest_status_id = 2372 where id = 1382;
update floods.crossing set latest_status_id = 2373 where id = 1383;
update floods.crossing set latest_status_id = 2374 where id = 1384;
update floods.crossing set latest_status_id = 2376 where id = 1386;
update floods.crossing set latest_status_id = 2378 where id = 1388;
update floods.crossing set latest_status_id = 2383 where id = 1393;
update floods.crossing set latest_status_id = 2394 where id = 1404;
update floods.crossing set latest_status_id = 2399 where id = 1409;
update floods.crossing set latest_status_id = 2400 where id = 1410;
update floods.crossing set latest_status_id = 2401 where id = 1411;
update floods.crossing set latest_status_id = 2402 where id = 1412;
update floods.crossing set latest_status_id = 2403 where id = 1413;
update floods.crossing set latest_status_id = 2404 where id = 1414;
update floods.crossing set latest_status_id = 2405 where id = 1415;
update floods.crossing set latest_status_id = 2406 where id = 1416;
update floods.crossing set latest_status_id = 2407 where id = 1417;
update floods.crossing set latest_status_id = 2408 where id = 1418;
update floods.crossing set latest_status_id = 2409 where id = 1419;
update floods.crossing set latest_status_id = 2410 where id = 1420;
update floods.crossing set latest_status_id = 2411 where id = 1421;
update floods.crossing set latest_status_id = 2412 where id = 1422;
update floods.crossing set latest_status_id = 2413 where id = 1423;
update floods.crossing set latest_status_id = 2414 where id = 1424;
update floods.crossing set latest_status_id = 2415 where id = 1425;
update floods.crossing set latest_status_id = 2416 where id = 1426;
update floods.crossing set latest_status_id = 2417 where id = 1427;
update floods.crossing set latest_status_id = 2418 where id = 1428;
update floods.crossing set latest_status_id = 2419 where id = 1429;
update floods.crossing set latest_status_id = 2420 where id = 1430;
update floods.crossing set latest_status_id = 2421 where id = 1431;
update floods.crossing set latest_status_id = 2422 where id = 1432;
update floods.crossing set latest_status_id = 2423 where id = 1433;
update floods.crossing set latest_status_id = 2424 where id = 1434;
update floods.crossing set latest_status_id = 2425 where id = 1435;
update floods.crossing set latest_status_id = 2426 where id = 1436;
update floods.crossing set latest_status_id = 2427 where id = 1437;
update floods.crossing set latest_status_id = 2428 where id = 1438;
update floods.crossing set latest_status_id = 2429 where id = 1439;
update floods.crossing set latest_status_id = 2430 where id = 1440;
update floods.crossing set latest_status_id = 2431 where id = 1441;
update floods.crossing set latest_status_id = 2432 where id = 1442;
update floods.crossing set latest_status_id = 2433 where id = 1443;
update floods.crossing set latest_status_id = 2435 where id = 1445;
update floods.crossing set latest_status_id = 2436 where id = 1446;
update floods.crossing set latest_status_id = 2437 where id = 1447;
update floods.crossing set latest_status_id = 2438 where id = 1448;
update floods.crossing set latest_status_id = 2439 where id = 1449;
update floods.crossing set latest_status_id = 2440 where id = 1450;
update floods.crossing set latest_status_id = 2441 where id = 1451;
update floods.crossing set latest_status_id = 2442 where id = 1452;
update floods.crossing set latest_status_id = 2443 where id = 1453;
update floods.crossing set latest_status_id = 2444 where id = 1454;
update floods.crossing set latest_status_id = 2445 where id = 1455;
update floods.crossing set latest_status_id = 2446 where id = 1456;
update floods.crossing set latest_status_id = 2447 where id = 1457;
update floods.crossing set latest_status_id = 2448 where id = 1458;
update floods.crossing set latest_status_id = 2449 where id = 1459;
update floods.crossing set latest_status_id = 2450 where id = 1460;
update floods.crossing set latest_status_id = 2451 where id = 1461;
update floods.crossing set latest_status_id = 2452 where id = 1462;
update floods.crossing set latest_status_id = 2453 where id = 1463;
update floods.crossing set latest_status_id = 2454 where id = 1464;
update floods.crossing set latest_status_id = 2455 where id = 1465;
update floods.crossing set latest_status_id = 2456 where id = 1466;
update floods.crossing set latest_status_id = 2457 where id = 1467;
update floods.crossing set latest_status_id = 2458 where id = 1468;
update floods.crossing set latest_status_id = 2459 where id = 1469;
update floods.crossing set latest_status_id = 2460 where id = 1470;
update floods.crossing set latest_status_id = 2461 where id = 1471;
update floods.crossing set latest_status_id = 2462 where id = 1472;
update floods.crossing set latest_status_id = 2463 where id = 1473;
update floods.crossing set latest_status_id = 2464 where id = 1474;
update floods.crossing set latest_status_id = 2465 where id = 1475;
update floods.crossing set latest_status_id = 2466 where id = 1476;
update floods.crossing set latest_status_id = 2467 where id = 1477;
update floods.crossing set latest_status_id = 2468 where id = 1478;
update floods.crossing set latest_status_id = 2469 where id = 1479;
update floods.crossing set latest_status_id = 2470 where id = 1480;
update floods.crossing set latest_status_id = 2471 where id = 1481;
update floods.crossing set latest_status_id = 2472 where id = 1482;
update floods.crossing set latest_status_id = 2474 where id = 1484;
update floods.crossing set latest_status_id = 2475 where id = 1485;
update floods.crossing set latest_status_id = 2476 where id = 1486;
update floods.crossing set latest_status_id = 2477 where id = 1487;
update floods.crossing set latest_status_id = 2479 where id = 1489;
update floods.crossing set latest_status_id = 2483 where id = 1493;
update floods.crossing set latest_status_id = 2484 where id = 1494;
update floods.crossing set latest_status_id = 2485 where id = 1495;
update floods.crossing set latest_status_id = 2488 where id = 1498;
update floods.crossing set latest_status_id = 2490 where id = 1500;
update floods.crossing set latest_status_id = 2491 where id = 1501;
update floods.crossing set latest_status_id = 2492 where id = 1502;
update floods.crossing set latest_status_id = 2493 where id = 1503;
update floods.crossing set latest_status_id = 2494 where id = 1504;
update floods.crossing set latest_status_id = 2496 where id = 1506;
update floods.crossing set latest_status_id = 2497 where id = 1507;
update floods.crossing set latest_status_id = 2498 where id = 1508;
update floods.crossing set latest_status_id = 2499 where id = 1509;
update floods.crossing set latest_status_id = 2500 where id = 1510;
update floods.crossing set latest_status_id = 2501 where id = 1511;
update floods.crossing set latest_status_id = 2502 where id = 1512;
update floods.crossing set latest_status_id = 2504 where id = 1514;
update floods.crossing set latest_status_id = 2505 where id = 1515;
update floods.crossing set latest_status_id = 2506 where id = 1516;
update floods.crossing set latest_status_id = 2508 where id = 1518;
update floods.crossing set latest_status_id = 2509 where id = 1519;
update floods.crossing set latest_status_id = 2510 where id = 1520;
update floods.crossing set latest_status_id = 2512 where id = 1522;
update floods.crossing set latest_status_id = 2513 where id = 1523;
update floods.crossing set latest_status_id = 2514 where id = 1524;
update floods.crossing set latest_status_id = 2515 where id = 1525;
update floods.crossing set latest_status_id = 2516 where id = 1526;
update floods.crossing set latest_status_id = 2517 where id = 1527;
update floods.crossing set latest_status_id = 2518 where id = 1528;
update floods.crossing set latest_status_id = 2519 where id = 1529;
update floods.crossing set latest_status_id = 2520 where id = 1530;
update floods.crossing set latest_status_id = 2521 where id = 1531;
update floods.crossing set latest_status_id = 2522 where id = 1532;
update floods.crossing set latest_status_id = 2523 where id = 1533;
update floods.crossing set latest_status_id = 2524 where id = 1534;
update floods.crossing set latest_status_id = 2525 where id = 1535;
update floods.crossing set latest_status_id = 2527 where id = 1537;
update floods.crossing set latest_status_id = 2528 where id = 1538;
update floods.crossing set latest_status_id = 2529 where id = 1539;
update floods.crossing set latest_status_id = 2530 where id = 1540;
update floods.crossing set latest_status_id = 2531 where id = 1541;
update floods.crossing set latest_status_id = 2532 where id = 1542;
update floods.crossing set latest_status_id = 2533 where id = 1543;
update floods.crossing set latest_status_id = 2534 where id = 1544;
update floods.crossing set latest_status_id = 2535 where id = 1545;
update floods.crossing set latest_status_id = 2536 where id = 1546;
update floods.crossing set latest_status_id = 2537 where id = 1547;
update floods.crossing set latest_status_id = 2538 where id = 1548;
update floods.crossing set latest_status_id = 2540 where id = 1550;
update floods.crossing set latest_status_id = 2542 where id = 1552;
update floods.crossing set latest_status_id = 2544 where id = 1554;
update floods.crossing set latest_status_id = 2545 where id = 1555;
update floods.crossing set latest_status_id = 2546 where id = 1556;
update floods.crossing set latest_status_id = 2547 where id = 1557;
update floods.crossing set latest_status_id = 2548 where id = 1558;
update floods.crossing set latest_status_id = 2549 where id = 1559;
update floods.crossing set latest_status_id = 2550 where id = 1560;
update floods.crossing set latest_status_id = 2553 where id = 1563;
update floods.crossing set latest_status_id = 2554 where id = 1564;
update floods.crossing set latest_status_id = 2555 where id = 1565;
update floods.crossing set latest_status_id = 2556 where id = 1566;
update floods.crossing set latest_status_id = 2557 where id = 1567;
update floods.crossing set latest_status_id = 2558 where id = 1568;
update floods.crossing set latest_status_id = 2559 where id = 1569;
update floods.crossing set latest_status_id = 2560 where id = 1570;
update floods.crossing set latest_status_id = 2561 where id = 1571;
update floods.crossing set latest_status_id = 2562 where id = 1572;
update floods.crossing set latest_status_id = 2563 where id = 1573;
update floods.crossing set latest_status_id = 2565 where id = 1575;
update floods.crossing set latest_status_id = 2566 where id = 1576;
update floods.crossing set latest_status_id = 2567 where id = 1577;
update floods.crossing set latest_status_id = 2568 where id = 1578;
update floods.crossing set latest_status_id = 2569 where id = 1579;
update floods.crossing set latest_status_id = 2570 where id = 1580;
update floods.crossing set latest_status_id = 2571 where id = 1581;
update floods.crossing set latest_status_id = 2573 where id = 1583;
update floods.crossing set latest_status_id = 2574 where id = 1584;
update floods.crossing set latest_status_id = 2575 where id = 1585;
update floods.crossing set latest_status_id = 2576 where id = 1586;
update floods.crossing set latest_status_id = 2577 where id = 1587;
update floods.crossing set latest_status_id = 2578 where id = 1588;
update floods.crossing set latest_status_id = 2579 where id = 1589;
update floods.crossing set latest_status_id = 2580 where id = 1590;
update floods.crossing set latest_status_id = 2581 where id = 1591;
update floods.crossing set latest_status_id = 2582 where id = 1592;
update floods.crossing set latest_status_id = 2584 where id = 1594;
update floods.crossing set latest_status_id = 2586 where id = 1596;
update floods.crossing set latest_status_id = 2587 where id = 1597;
update floods.crossing set latest_status_id = 2593 where id = 1603;
update floods.crossing set latest_status_id = 2594 where id = 1604;
update floods.crossing set latest_status_id = 2596 where id = 1606;
update floods.crossing set latest_status_id = 2597 where id = 1607;
update floods.crossing set latest_status_id = 2599 where id = 1609;
update floods.crossing set latest_status_id = 2600 where id = 1610;
update floods.crossing set latest_status_id = 2601 where id = 1611;
update floods.crossing set latest_status_id = 2602 where id = 1612;
update floods.crossing set latest_status_id = 2603 where id = 1613;
update floods.crossing set latest_status_id = 2604 where id = 1614;
update floods.crossing set latest_status_id = 2605 where id = 1615;
update floods.crossing set latest_status_id = 2606 where id = 1616;
update floods.crossing set latest_status_id = 2607 where id = 1617;
update floods.crossing set latest_status_id = 2608 where id = 1618;
update floods.crossing set latest_status_id = 2609 where id = 1619;
update floods.crossing set latest_status_id = 2610 where id = 1620;
update floods.crossing set latest_status_id = 2611 where id = 1621;
update floods.crossing set latest_status_id = 2612 where id = 1622;
update floods.crossing set latest_status_id = 2613 where id = 1623;
update floods.crossing set latest_status_id = 2614 where id = 1624;
update floods.crossing set latest_status_id = 2616 where id = 1626;
update floods.crossing set latest_status_id = 2617 where id = 1627;
update floods.crossing set latest_status_id = 2619 where id = 1629;
update floods.crossing set latest_status_id = 2620 where id = 1630;
update floods.crossing set latest_status_id = 2624 where id = 1634;
update floods.crossing set latest_status_id = 2625 where id = 1635;
update floods.crossing set latest_status_id = 2626 where id = 1636;
update floods.crossing set latest_status_id = 2628 where id = 1638;
update floods.crossing set latest_status_id = 2629 where id = 1639;
update floods.crossing set latest_status_id = 2631 where id = 1641;
update floods.crossing set latest_status_id = 2632 where id = 1642;
update floods.crossing set latest_status_id = 2633 where id = 1643;
update floods.crossing set latest_status_id = 2634 where id = 1644;
update floods.crossing set latest_status_id = 2636 where id = 1646;
update floods.crossing set latest_status_id = 2637 where id = 1647;
update floods.crossing set latest_status_id = 2638 where id = 1648;
update floods.crossing set latest_status_id = 2639 where id = 1649;
update floods.crossing set latest_status_id = 2640 where id = 1650;
update floods.crossing set latest_status_id = 2641 where id = 1651;
update floods.crossing set latest_status_id = 2643 where id = 1653;
update floods.crossing set latest_status_id = 2644 where id = 1654;
update floods.crossing set latest_status_id = 2645 where id = 1655;
update floods.crossing set latest_status_id = 2646 where id = 1656;
update floods.crossing set latest_status_id = 2648 where id = 1658;
update floods.crossing set latest_status_id = 2649 where id = 1659;
update floods.crossing set latest_status_id = 2651 where id = 1661;
update floods.crossing set latest_status_id = 2652 where id = 1662;
update floods.crossing set latest_status_id = 2653 where id = 1663;
update floods.crossing set latest_status_id = 2654 where id = 1664;
update floods.crossing set latest_status_id = 2656 where id = 1666;
update floods.crossing set latest_status_id = 2657 where id = 1667;
update floods.crossing set latest_status_id = 2658 where id = 1668;
update floods.crossing set latest_status_id = 2659 where id = 1669;
update floods.crossing set latest_status_id = 2661 where id = 1671;
update floods.crossing set latest_status_id = 2663 where id = 1673;
update floods.crossing set latest_status_id = 2664 where id = 1674;
update floods.crossing set latest_status_id = 2665 where id = 1675;
update floods.crossing set latest_status_id = 2666 where id = 1676;
update floods.crossing set latest_status_id = 2668 where id = 1678;
update floods.crossing set latest_status_id = 2670 where id = 1680;
update floods.crossing set latest_status_id = 2672 where id = 1682;
update floods.crossing set latest_status_id = 2674 where id = 1684;
update floods.crossing set latest_status_id = 2675 where id = 1685;
update floods.crossing set latest_status_id = 2676 where id = 1686;
update floods.crossing set latest_status_id = 2677 where id = 1687;
update floods.crossing set latest_status_id = 2678 where id = 1688;
update floods.crossing set latest_status_id = 2679 where id = 1689;
update floods.crossing set latest_status_id = 2680 where id = 1690;
update floods.crossing set latest_status_id = 2681 where id = 1691;
update floods.crossing set latest_status_id = 2682 where id = 1692;
update floods.crossing set latest_status_id = 2683 where id = 1693;
update floods.crossing set latest_status_id = 2684 where id = 1694;
update floods.crossing set latest_status_id = 2685 where id = 1695;
update floods.crossing set latest_status_id = 2686 where id = 1696;
update floods.crossing set latest_status_id = 2687 where id = 1697;
update floods.crossing set latest_status_id = 2688 where id = 1698;
update floods.crossing set latest_status_id = 2689 where id = 1699;
update floods.crossing set latest_status_id = 2690 where id = 1700;
update floods.crossing set latest_status_id = 2691 where id = 1701;
update floods.crossing set latest_status_id = 2692 where id = 1702;
update floods.crossing set latest_status_id = 2693 where id = 1703;
update floods.crossing set latest_status_id = 2694 where id = 1704;
update floods.crossing set latest_status_id = 2695 where id = 1705;
update floods.crossing set latest_status_id = 2696 where id = 1706;
update floods.crossing set latest_status_id = 2697 where id = 1707;
update floods.crossing set latest_status_id = 2698 where id = 1708;
update floods.crossing set latest_status_id = 2699 where id = 1709;
update floods.crossing set latest_status_id = 2700 where id = 1710;
update floods.crossing set latest_status_id = 2701 where id = 1711;
update floods.crossing set latest_status_id = 2702 where id = 1712;
update floods.crossing set latest_status_id = 2703 where id = 1713;
update floods.crossing set latest_status_id = 2704 where id = 1714;
update floods.crossing set latest_status_id = 2705 where id = 1715;
update floods.crossing set latest_status_id = 2706 where id = 1716;
update floods.crossing set latest_status_id = 2707 where id = 1717;
update floods.crossing set latest_status_id = 2708 where id = 1718;
update floods.crossing set latest_status_id = 2709 where id = 1719;
update floods.crossing set latest_status_id = 2710 where id = 1720;
update floods.crossing set latest_status_id = 2711 where id = 1721;
update floods.crossing set latest_status_id = 2712 where id = 1722;
update floods.crossing set latest_status_id = 2713 where id = 1723;
update floods.crossing set latest_status_id = 2714 where id = 1724;
update floods.crossing set latest_status_id = 2715 where id = 1725;
update floods.crossing set latest_status_id = 2716 where id = 1726;
update floods.crossing set latest_status_id = 2717 where id = 1727;
update floods.crossing set latest_status_id = 2718 where id = 1728;
update floods.crossing set latest_status_id = 2719 where id = 1729;
update floods.crossing set latest_status_id = 2720 where id = 1730;
update floods.crossing set latest_status_id = 2721 where id = 1731;
update floods.crossing set latest_status_id = 2722 where id = 1732;
update floods.crossing set latest_status_id = 2723 where id = 1733;
update floods.crossing set latest_status_id = 2724 where id = 1734;
update floods.crossing set latest_status_id = 2725 where id = 1735;
update floods.crossing set latest_status_id = 2726 where id = 1736;
update floods.crossing set latest_status_id = 2727 where id = 1737;
update floods.crossing set latest_status_id = 2728 where id = 1738;
update floods.crossing set latest_status_id = 2729 where id = 1739;
update floods.crossing set latest_status_id = 2730 where id = 1740;
update floods.crossing set latest_status_id = 2731 where id = 1741;
update floods.crossing set latest_status_id = 2732 where id = 1742;
update floods.crossing set latest_status_id = 2733 where id = 1743;
update floods.crossing set latest_status_id = 2734 where id = 1744;
update floods.crossing set latest_status_id = 2735 where id = 1745;
update floods.crossing set latest_status_id = 2736 where id = 1746;
update floods.crossing set latest_status_id = 2737 where id = 1747;
update floods.crossing set latest_status_id = 2738 where id = 1748;
update floods.crossing set latest_status_id = 2739 where id = 1749;
update floods.crossing set latest_status_id = 2740 where id = 1750;
update floods.crossing set latest_status_id = 2741 where id = 1751;
update floods.crossing set latest_status_id = 2742 where id = 1752;
update floods.crossing set latest_status_id = 2743 where id = 1753;
update floods.crossing set latest_status_id = 2744 where id = 1754;
update floods.crossing set latest_status_id = 2745 where id = 1755;
update floods.crossing set latest_status_id = 2746 where id = 1756;
update floods.crossing set latest_status_id = 2747 where id = 1757;
update floods.crossing set latest_status_id = 2748 where id = 1758;
update floods.crossing set latest_status_id = 2749 where id = 1759;
update floods.crossing set latest_status_id = 2750 where id = 1760;
update floods.crossing set latest_status_id = 2751 where id = 1761;
update floods.crossing set latest_status_id = 2752 where id = 1762;
update floods.crossing set latest_status_id = 2753 where id = 1763;
update floods.crossing set latest_status_id = 2758 where id = 1768;
update floods.crossing set latest_status_id = 2759 where id = 1769;
update floods.crossing set latest_status_id = 2760 where id = 1770;
update floods.crossing set latest_status_id = 2761 where id = 1771;
update floods.crossing set latest_status_id = 2762 where id = 1772;
update floods.crossing set latest_status_id = 2763 where id = 1773;
update floods.crossing set latest_status_id = 2764 where id = 1774;
update floods.crossing set latest_status_id = 2765 where id = 1775;
update floods.crossing set latest_status_id = 2766 where id = 1776;
update floods.crossing set latest_status_id = 2767 where id = 1777;
update floods.crossing set latest_status_id = 2768 where id = 1778;
update floods.crossing set latest_status_id = 2769 where id = 1779;
update floods.crossing set latest_status_id = 2770 where id = 1780;
update floods.crossing set latest_status_id = 2771 where id = 1781;
update floods.crossing set latest_status_id = 2772 where id = 1782;
update floods.crossing set latest_status_id = 2773 where id = 1783;
update floods.crossing set latest_status_id = 2774 where id = 1784;
update floods.crossing set latest_status_id = 2775 where id = 1785;
update floods.crossing set latest_status_id = 2776 where id = 1786;
update floods.crossing set latest_status_id = 2777 where id = 1787;
update floods.crossing set latest_status_id = 2778 where id = 1788;
update floods.crossing set latest_status_id = 2779 where id = 1789;
update floods.crossing set latest_status_id = 2780 where id = 1790;
update floods.crossing set latest_status_id = 2781 where id = 1791;
update floods.crossing set latest_status_id = 2783 where id = 1793;
update floods.crossing set latest_status_id = 2784 where id = 1794;
update floods.crossing set latest_status_id = 2785 where id = 1795;
update floods.crossing set latest_status_id = 2786 where id = 1796;
update floods.crossing set latest_status_id = 2787 where id = 1797;
update floods.crossing set latest_status_id = 2788 where id = 1798;
update floods.crossing set latest_status_id = 2790 where id = 1800;
update floods.crossing set latest_status_id = 2791 where id = 1801;
update floods.crossing set latest_status_id = 2793 where id = 1803;
update floods.crossing set latest_status_id = 2794 where id = 1804;
update floods.crossing set latest_status_id = 2795 where id = 1805;
update floods.crossing set latest_status_id = 2796 where id = 1806;
update floods.crossing set latest_status_id = 2797 where id = 1807;
update floods.crossing set latest_status_id = 2798 where id = 1808;
update floods.crossing set latest_status_id = 2799 where id = 1809;
update floods.crossing set latest_status_id = 2800 where id = 1810;
update floods.crossing set latest_status_id = 2801 where id = 1811;
update floods.crossing set latest_status_id = 2802 where id = 1812;
update floods.crossing set latest_status_id = 2803 where id = 1813;
update floods.crossing set latest_status_id = 2804 where id = 1814;
update floods.crossing set latest_status_id = 2806 where id = 1816;
update floods.crossing set latest_status_id = 2807 where id = 1817;
update floods.crossing set latest_status_id = 2808 where id = 1818;
update floods.crossing set latest_status_id = 2809 where id = 1819;
update floods.crossing set latest_status_id = 2810 where id = 1820;
update floods.crossing set latest_status_id = 2811 where id = 1821;
update floods.crossing set latest_status_id = 2812 where id = 1822;
update floods.crossing set latest_status_id = 2813 where id = 1823;
update floods.crossing set latest_status_id = 2814 where id = 1824;
update floods.crossing set latest_status_id = 2815 where id = 1825;
update floods.crossing set latest_status_id = 2816 where id = 1826;
update floods.crossing set latest_status_id = 2817 where id = 1827;
update floods.crossing set latest_status_id = 2818 where id = 1828;
update floods.crossing set latest_status_id = 2819 where id = 1829;
update floods.crossing set latest_status_id = 2821 where id = 1831;
update floods.crossing set latest_status_id = 2822 where id = 1832;
update floods.crossing set latest_status_id = 2823 where id = 1833;
update floods.crossing set latest_status_id = 2825 where id = 1835;
update floods.crossing set latest_status_id = 2826 where id = 1836;
update floods.crossing set latest_status_id = 2827 where id = 1837;
update floods.crossing set latest_status_id = 2829 where id = 1839;
update floods.crossing set latest_status_id = 2830 where id = 1840;
update floods.crossing set latest_status_id = 2831 where id = 1841;
update floods.crossing set latest_status_id = 2832 where id = 1842;
update floods.crossing set latest_status_id = 2834 where id = 1844;
update floods.crossing set latest_status_id = 2835 where id = 1845;
update floods.crossing set latest_status_id = 2841 where id = 1851;
update floods.crossing set latest_status_id = 2842 where id = 1852;
update floods.crossing set latest_status_id = 2844 where id = 1854;
update floods.crossing set latest_status_id = 2845 where id = 1855;
update floods.crossing set latest_status_id = 2846 where id = 1856;
update floods.crossing set latest_status_id = 2847 where id = 1857;
update floods.crossing set latest_status_id = 2848 where id = 1858;
update floods.crossing set latest_status_id = 2849 where id = 1859;
update floods.crossing set latest_status_id = 2851 where id = 1861;
update floods.crossing set latest_status_id = 2853 where id = 1863;
update floods.crossing set latest_status_id = 2854 where id = 1864;
update floods.crossing set latest_status_id = 2855 where id = 1865;
update floods.crossing set latest_status_id = 2856 where id = 1866;
update floods.crossing set latest_status_id = 2857 where id = 1867;
update floods.crossing set latest_status_id = 2858 where id = 1868;
update floods.crossing set latest_status_id = 2859 where id = 1869;
update floods.crossing set latest_status_id = 2860 where id = 1870;
update floods.crossing set latest_status_id = 2861 where id = 1871;
update floods.crossing set latest_status_id = 2862 where id = 1872;
update floods.crossing set latest_status_id = 2863 where id = 1873;
update floods.crossing set latest_status_id = 2864 where id = 1874;
update floods.crossing set latest_status_id = 2865 where id = 1875;
update floods.crossing set latest_status_id = 2866 where id = 1876;
update floods.crossing set latest_status_id = 2867 where id = 1877;
update floods.crossing set latest_status_id = 2868 where id = 1878;
update floods.crossing set latest_status_id = 2870 where id = 1880;
update floods.crossing set latest_status_id = 2871 where id = 1881;
update floods.crossing set latest_status_id = 2872 where id = 1882;
update floods.crossing set latest_status_id = 2873 where id = 1883;
update floods.crossing set latest_status_id = 2874 where id = 1884;
update floods.crossing set latest_status_id = 2875 where id = 1885;
update floods.crossing set latest_status_id = 2877 where id = 1887;
update floods.crossing set latest_status_id = 2878 where id = 1888;
update floods.crossing set latest_status_id = 2881 where id = 1891;
update floods.crossing set latest_status_id = 2882 where id = 1892;
update floods.crossing set latest_status_id = 2883 where id = 1893;
update floods.crossing set latest_status_id = 2884 where id = 1894;
update floods.crossing set latest_status_id = 2885 where id = 1895;
update floods.crossing set latest_status_id = 2886 where id = 1896;
update floods.crossing set latest_status_id = 2887 where id = 1897;
update floods.crossing set latest_status_id = 2888 where id = 1898;
update floods.crossing set latest_status_id = 2889 where id = 1899;
update floods.crossing set latest_status_id = 2890 where id = 1900;
update floods.crossing set latest_status_id = 2891 where id = 1901;
update floods.crossing set latest_status_id = 2892 where id = 1902;
update floods.crossing set latest_status_id = 2893 where id = 1903;
update floods.crossing set latest_status_id = 2894 where id = 1904;
update floods.crossing set latest_status_id = 2895 where id = 1905;
update floods.crossing set latest_status_id = 2896 where id = 1906;
update floods.crossing set latest_status_id = 2897 where id = 1907;
update floods.crossing set latest_status_id = 2898 where id = 1908;
update floods.crossing set latest_status_id = 2899 where id = 1909;
update floods.crossing set latest_status_id = 2900 where id = 1910;
update floods.crossing set latest_status_id = 2901 where id = 1911;
update floods.crossing set latest_status_id = 2903 where id = 1913;
update floods.crossing set latest_status_id = 2904 where id = 1914;
update floods.crossing set latest_status_id = 2906 where id = 1916;
update floods.crossing set latest_status_id = 2907 where id = 1917;
update floods.crossing set latest_status_id = 2908 where id = 1918;
update floods.crossing set latest_status_id = 2909 where id = 1919;
update floods.crossing set latest_status_id = 2910 where id = 1920;
update floods.crossing set latest_status_id = 2911 where id = 1921;
update floods.crossing set latest_status_id = 2912 where id = 1922;
update floods.crossing set latest_status_id = 2913 where id = 1923;
update floods.crossing set latest_status_id = 2916 where id = 1926;
update floods.crossing set latest_status_id = 2917 where id = 1927;
update floods.crossing set latest_status_id = 2918 where id = 1928;
update floods.crossing set latest_status_id = 2919 where id = 1929;
update floods.crossing set latest_status_id = 2920 where id = 1930;
update floods.crossing set latest_status_id = 2921 where id = 1931;
update floods.crossing set latest_status_id = 2922 where id = 1932;
update floods.crossing set latest_status_id = 2923 where id = 1933;
update floods.crossing set latest_status_id = 2924 where id = 1934;
update floods.crossing set latest_status_id = 2925 where id = 1935;
update floods.crossing set latest_status_id = 2928 where id = 1938;
update floods.crossing set latest_status_id = 2929 where id = 1939;
update floods.crossing set latest_status_id = 2930 where id = 1940;
update floods.crossing set latest_status_id = 2931 where id = 1941;
update floods.crossing set latest_status_id = 2932 where id = 1942;
update floods.crossing set latest_status_id = 2933 where id = 1943;
update floods.crossing set latest_status_id = 2934 where id = 1944;
update floods.crossing set latest_status_id = 2935 where id = 1945;
update floods.crossing set latest_status_id = 2936 where id = 1946;
update floods.crossing set latest_status_id = 2937 where id = 1947;
update floods.crossing set latest_status_id = 2938 where id = 1948;
update floods.crossing set latest_status_id = 2939 where id = 1949;
update floods.crossing set latest_status_id = 2940 where id = 1950;
update floods.crossing set latest_status_id = 2941 where id = 1951;
update floods.crossing set latest_status_id = 2942 where id = 1952;
update floods.crossing set latest_status_id = 2943 where id = 1953;
update floods.crossing set latest_status_id = 2944 where id = 1954;
update floods.crossing set latest_status_id = 2945 where id = 1955;
update floods.crossing set latest_status_id = 2947 where id = 1957;
update floods.crossing set latest_status_id = 2948 where id = 1958;
update floods.crossing set latest_status_id = 2949 where id = 1959;
update floods.crossing set latest_status_id = 2950 where id = 1960;
update floods.crossing set latest_status_id = 2951 where id = 1961;
update floods.crossing set latest_status_id = 2952 where id = 1962;
update floods.crossing set latest_status_id = 2955 where id = 1965;
update floods.crossing set latest_status_id = 2956 where id = 1966;
update floods.crossing set latest_status_id = 2957 where id = 1967;
update floods.crossing set latest_status_id = 2958 where id = 1968;
update floods.crossing set latest_status_id = 2959 where id = 1969;
update floods.crossing set latest_status_id = 2960 where id = 1970;
update floods.crossing set latest_status_id = 2961 where id = 1971;
update floods.crossing set latest_status_id = 2963 where id = 1973;
update floods.crossing set latest_status_id = 2964 where id = 1974;
update floods.crossing set latest_status_id = 2966 where id = 1976;
update floods.crossing set latest_status_id = 2967 where id = 1977;
update floods.crossing set latest_status_id = 2968 where id = 1978;
update floods.crossing set latest_status_id = 2969 where id = 1979;
update floods.crossing set latest_status_id = 2970 where id = 1980;
update floods.crossing set latest_status_id = 2971 where id = 1981;
update floods.crossing set latest_status_id = 2973 where id = 1983;
update floods.crossing set latest_status_id = 2974 where id = 1984;
update floods.crossing set latest_status_id = 2975 where id = 1985;
update floods.crossing set latest_status_id = 2976 where id = 1986;
update floods.crossing set latest_status_id = 2977 where id = 1987;
update floods.crossing set latest_status_id = 2978 where id = 1988;
update floods.crossing set latest_status_id = 2979 where id = 1989;
update floods.crossing set latest_status_id = 2980 where id = 1990;
update floods.crossing set latest_status_id = 2981 where id = 1991;
update floods.crossing set latest_status_id = 2985 where id = 1995;
update floods.crossing set latest_status_id = 2986 where id = 1996;
update floods.crossing set latest_status_id = 2987 where id = 1997;
update floods.crossing set latest_status_id = 2988 where id = 1998;
update floods.crossing set latest_status_id = 2989 where id = 1999;
update floods.crossing set latest_status_id = 2991 where id = 2001;
update floods.crossing set latest_status_id = 2992 where id = 2002;
update floods.crossing set latest_status_id = 2993 where id = 2003;
update floods.crossing set latest_status_id = 2994 where id = 2004;
update floods.crossing set latest_status_id = 2995 where id = 2005;
update floods.crossing set latest_status_id = 2996 where id = 2006;
update floods.crossing set latest_status_id = 2998 where id = 2008;
update floods.crossing set latest_status_id = 2999 where id = 2009;
update floods.crossing set latest_status_id = 3001 where id = 2011;
update floods.crossing set latest_status_id = 3002 where id = 2012;
update floods.crossing set latest_status_id = 3003 where id = 2013;
update floods.crossing set latest_status_id = 3004 where id = 2014;
update floods.crossing set latest_status_id = 3007 where id = 2017;
update floods.crossing set latest_status_id = 3008 where id = 2018;
update floods.crossing set latest_status_id = 3009 where id = 2019;
update floods.crossing set latest_status_id = 3011 where id = 2021;
update floods.crossing set latest_status_id = 3012 where id = 2022;
update floods.crossing set latest_status_id = 3013 where id = 2023;
update floods.crossing set latest_status_id = 3014 where id = 2024;
update floods.crossing set latest_status_id = 3016 where id = 2026;
update floods.crossing set latest_status_id = 3017 where id = 2027;
update floods.crossing set latest_status_id = 3018 where id = 2028;
update floods.crossing set latest_status_id = 3019 where id = 2029;
update floods.crossing set latest_status_id = 3020 where id = 2030;
update floods.crossing set latest_status_id = 3021 where id = 2031;
update floods.crossing set latest_status_id = 3022 where id = 2032;
update floods.crossing set latest_status_id = 3023 where id = 2033;
update floods.crossing set latest_status_id = 3024 where id = 2034;
update floods.crossing set latest_status_id = 3025 where id = 2035;
update floods.crossing set latest_status_id = 3026 where id = 2036;
update floods.crossing set latest_status_id = 3027 where id = 2037;
update floods.crossing set latest_status_id = 3028 where id = 2038;
update floods.crossing set latest_status_id = 3029 where id = 2039;
update floods.crossing set latest_status_id = 3030 where id = 2040;
update floods.crossing set latest_status_id = 3031 where id = 2041;
update floods.crossing set latest_status_id = 3033 where id = 2043;
update floods.crossing set latest_status_id = 3034 where id = 2044;
update floods.crossing set latest_status_id = 3035 where id = 2045;
update floods.crossing set latest_status_id = 3036 where id = 2046;
update floods.crossing set latest_status_id = 3037 where id = 2047;
update floods.crossing set latest_status_id = 3038 where id = 2048;
update floods.crossing set latest_status_id = 3039 where id = 2049;
update floods.crossing set latest_status_id = 3040 where id = 2050;
update floods.crossing set latest_status_id = 3043 where id = 2053;
update floods.crossing set latest_status_id = 3045 where id = 2055;
update floods.crossing set latest_status_id = 3046 where id = 2056;
update floods.crossing set latest_status_id = 3047 where id = 2057;
update floods.crossing set latest_status_id = 3051 where id = 2061;
update floods.crossing set latest_status_id = 3052 where id = 2062;
update floods.crossing set latest_status_id = 3054 where id = 2064;
update floods.crossing set latest_status_id = 3056 where id = 2066;
update floods.crossing set latest_status_id = 3058 where id = 2068;
update floods.crossing set latest_status_id = 3059 where id = 2069;
update floods.crossing set latest_status_id = 3060 where id = 2070;
update floods.crossing set latest_status_id = 3061 where id = 2071;
update floods.crossing set latest_status_id = 3062 where id = 2072;
update floods.crossing set latest_status_id = 3063 where id = 2073;
update floods.crossing set latest_status_id = 3064 where id = 2074;
update floods.crossing set latest_status_id = 3067 where id = 2077;
update floods.crossing set latest_status_id = 3068 where id = 2078;
update floods.crossing set latest_status_id = 3069 where id = 2079;
update floods.crossing set latest_status_id = 3071 where id = 2081;
update floods.crossing set latest_status_id = 3072 where id = 2082;
update floods.crossing set latest_status_id = 3073 where id = 2083;
update floods.crossing set latest_status_id = 3076 where id = 2086;
update floods.crossing set latest_status_id = 3078 where id = 2088;
update floods.crossing set latest_status_id = 3079 where id = 2089;
update floods.crossing set latest_status_id = 3080 where id = 2090;
update floods.crossing set latest_status_id = 3081 where id = 2091;
update floods.crossing set latest_status_id = 3082 where id = 2092;
update floods.crossing set latest_status_id = 3083 where id = 2093;
update floods.crossing set latest_status_id = 3084 where id = 2094;
update floods.crossing set latest_status_id = 3085 where id = 2095;
update floods.crossing set latest_status_id = 3086 where id = 2096;
update floods.crossing set latest_status_id = 3091 where id = 2101;
update floods.crossing set latest_status_id = 3092 where id = 2102;
update floods.crossing set latest_status_id = 3093 where id = 2103;
update floods.crossing set latest_status_id = 3096 where id = 2106;
update floods.crossing set latest_status_id = 3097 where id = 2107;
update floods.crossing set latest_status_id = 3098 where id = 2108;
update floods.crossing set latest_status_id = 3099 where id = 2109;
update floods.crossing set latest_status_id = 3101 where id = 2111;
update floods.crossing set latest_status_id = 3102 where id = 2112;
update floods.crossing set latest_status_id = 3103 where id = 2113;
update floods.crossing set latest_status_id = 3104 where id = 2114;
update floods.crossing set latest_status_id = 3106 where id = 2116;
update floods.crossing set latest_status_id = 3107 where id = 2117;
update floods.crossing set latest_status_id = 3108 where id = 2118;
update floods.crossing set latest_status_id = 3109 where id = 2119;
update floods.crossing set latest_status_id = 3110 where id = 2120;
update floods.crossing set latest_status_id = 3111 where id = 2121;
update floods.crossing set latest_status_id = 3112 where id = 2122;
update floods.crossing set latest_status_id = 3113 where id = 2123;
update floods.crossing set latest_status_id = 3114 where id = 2124;
update floods.crossing set latest_status_id = 3115 where id = 2125;
update floods.crossing set latest_status_id = 3116 where id = 2126;
update floods.crossing set latest_status_id = 3117 where id = 2127;
update floods.crossing set latest_status_id = 3118 where id = 2128;
update floods.crossing set latest_status_id = 3119 where id = 2129;
update floods.crossing set latest_status_id = 3120 where id = 2130;
update floods.crossing set latest_status_id = 3121 where id = 2131;
update floods.crossing set latest_status_id = 3122 where id = 2132;
update floods.crossing set latest_status_id = 3123 where id = 2133;
update floods.crossing set latest_status_id = 3124 where id = 2134;
update floods.crossing set latest_status_id = 3125 where id = 2135;
update floods.crossing set latest_status_id = 3126 where id = 2136;
update floods.crossing set latest_status_id = 3127 where id = 2137;
update floods.crossing set latest_status_id = 3128 where id = 2138;
update floods.crossing set latest_status_id = 3129 where id = 2139;
update floods.crossing set latest_status_id = 3130 where id = 2140;
update floods.crossing set latest_status_id = 3131 where id = 2141;
update floods.crossing set latest_status_id = 3132 where id = 2142;
update floods.crossing set latest_status_id = 3133 where id = 2143;
update floods.crossing set latest_status_id = 3134 where id = 2144;
update floods.crossing set latest_status_id = 3135 where id = 2145;
update floods.crossing set latest_status_id = 3136 where id = 2146;
update floods.crossing set latest_status_id = 3137 where id = 2147;
update floods.crossing set latest_status_id = 3138 where id = 2148;
update floods.crossing set latest_status_id = 3139 where id = 2149;
update floods.crossing set latest_status_id = 3140 where id = 2150;
update floods.crossing set latest_status_id = 3141 where id = 2151;
update floods.crossing set latest_status_id = 3142 where id = 2152;
update floods.crossing set latest_status_id = 3143 where id = 2153;
update floods.crossing set latest_status_id = 3144 where id = 2154;
update floods.crossing set latest_status_id = 3145 where id = 2155;
update floods.crossing set latest_status_id = 3146 where id = 2156;
update floods.crossing set latest_status_id = 3147 where id = 2157;
update floods.crossing set latest_status_id = 3148 where id = 2158;
update floods.crossing set latest_status_id = 3149 where id = 2159;
update floods.crossing set latest_status_id = 3150 where id = 2160;
update floods.crossing set latest_status_id = 3151 where id = 2161;
update floods.crossing set latest_status_id = 3152 where id = 2162;
update floods.crossing set latest_status_id = 3153 where id = 2163;
update floods.crossing set latest_status_id = 3154 where id = 2164;
update floods.crossing set latest_status_id = 3155 where id = 2165;
update floods.crossing set latest_status_id = 3156 where id = 2166;
update floods.crossing set latest_status_id = 3157 where id = 2167;
update floods.crossing set latest_status_id = 3158 where id = 2168;
update floods.crossing set latest_status_id = 3159 where id = 2169;
update floods.crossing set latest_status_id = 3160 where id = 2170;
update floods.crossing set latest_status_id = 3161 where id = 2171;
update floods.crossing set latest_status_id = 3162 where id = 2172;
update floods.crossing set latest_status_id = 3163 where id = 2173;
update floods.crossing set latest_status_id = 3164 where id = 2174;
update floods.crossing set latest_status_id = 3165 where id = 2175;
update floods.crossing set latest_status_id = 3166 where id = 2176;
update floods.crossing set latest_status_id = 3168 where id = 2178;
update floods.crossing set latest_status_id = 3169 where id = 2179;
update floods.crossing set latest_status_id = 3170 where id = 2180;
update floods.crossing set latest_status_id = 3171 where id = 2181;
update floods.crossing set latest_status_id = 3172 where id = 2182;
update floods.crossing set latest_status_id = 3173 where id = 2183;
update floods.crossing set latest_status_id = 3174 where id = 2184;
update floods.crossing set latest_status_id = 3175 where id = 2185;
update floods.crossing set latest_status_id = 3176 where id = 2186;
update floods.crossing set latest_status_id = 3177 where id = 2187;
update floods.crossing set latest_status_id = 3178 where id = 2188;
update floods.crossing set latest_status_id = 3179 where id = 2189;
update floods.crossing set latest_status_id = 3180 where id = 2190;
update floods.crossing set latest_status_id = 3181 where id = 2191;
update floods.crossing set latest_status_id = 3182 where id = 2192;
update floods.crossing set latest_status_id = 3183 where id = 2193;
update floods.crossing set latest_status_id = 3184 where id = 2194;
update floods.crossing set latest_status_id = 3185 where id = 2195;
update floods.crossing set latest_status_id = 3186 where id = 2196;
update floods.crossing set latest_status_id = 3187 where id = 2197;
update floods.crossing set latest_status_id = 3188 where id = 2198;
update floods.crossing set latest_status_id = 3189 where id = 2199;
update floods.crossing set latest_status_id = 3190 where id = 2200;
update floods.crossing set latest_status_id = 3191 where id = 2201;
update floods.crossing set latest_status_id = 3192 where id = 2202;
update floods.crossing set latest_status_id = 3193 where id = 2203;
update floods.crossing set latest_status_id = 3194 where id = 2204;
update floods.crossing set latest_status_id = 3195 where id = 2205;
update floods.crossing set latest_status_id = 3196 where id = 2206;
update floods.crossing set latest_status_id = 3197 where id = 2207;
update floods.crossing set latest_status_id = 3198 where id = 2208;
update floods.crossing set latest_status_id = 3199 where id = 2209;
update floods.crossing set latest_status_id = 3200 where id = 2210;
update floods.crossing set latest_status_id = 3201 where id = 2211;
update floods.crossing set latest_status_id = 3202 where id = 2212;
update floods.crossing set latest_status_id = 3203 where id = 2213;
update floods.crossing set latest_status_id = 3204 where id = 2214;
update floods.crossing set latest_status_id = 3205 where id = 2215;
update floods.crossing set latest_status_id = 3206 where id = 2216;
update floods.crossing set latest_status_id = 3207 where id = 2217;
update floods.crossing set latest_status_id = 3208 where id = 2218;
update floods.crossing set latest_status_id = 3209 where id = 2219;
update floods.crossing set latest_status_id = 3210 where id = 2220;
update floods.crossing set latest_status_id = 3211 where id = 2221;
update floods.crossing set latest_status_id = 3212 where id = 2222;
update floods.crossing set latest_status_id = 3213 where id = 2223;
update floods.crossing set latest_status_id = 3214 where id = 2224;
update floods.crossing set latest_status_id = 3217 where id = 2227;
update floods.crossing set latest_status_id = 3218 where id = 2228;
update floods.crossing set latest_status_id = 3219 where id = 2229;
update floods.crossing set latest_status_id = 3220 where id = 2230;
update floods.crossing set latest_status_id = 3221 where id = 2231;
update floods.crossing set latest_status_id = 3222 where id = 2232;
update floods.crossing set latest_status_id = 3223 where id = 2233;
update floods.crossing set latest_status_id = 3224 where id = 2234;
update floods.crossing set latest_status_id = 3225 where id = 2235;
update floods.crossing set latest_status_id = 3226 where id = 2236;
update floods.crossing set latest_status_id = 3227 where id = 2237;
update floods.crossing set latest_status_id = 3228 where id = 2238;
update floods.crossing set latest_status_id = 3229 where id = 2239;
update floods.crossing set latest_status_id = 3230 where id = 2240;
update floods.crossing set latest_status_id = 3231 where id = 2241;
update floods.crossing set latest_status_id = 3232 where id = 2242;
update floods.crossing set latest_status_id = 3233 where id = 2243;
update floods.crossing set latest_status_id = 3234 where id = 2244;
update floods.crossing set latest_status_id = 3236 where id = 2246;
update floods.crossing set latest_status_id = 3238 where id = 2248;
update floods.crossing set latest_status_id = 3239 where id = 2249;
update floods.crossing set latest_status_id = 3240 where id = 2250;
update floods.crossing set latest_status_id = 3241 where id = 2251;
update floods.crossing set latest_status_id = 3242 where id = 2252;
update floods.crossing set latest_status_id = 3243 where id = 2253;
update floods.crossing set latest_status_id = 3244 where id = 2254;
update floods.crossing set latest_status_id = 3245 where id = 2255;
update floods.crossing set latest_status_id = 3246 where id = 2256;
update floods.crossing set latest_status_id = 3247 where id = 2257;
update floods.crossing set latest_status_id = 3248 where id = 2258;
update floods.crossing set latest_status_id = 3249 where id = 2259;
update floods.crossing set latest_status_id = 3251 where id = 2261;
update floods.crossing set latest_status_id = 3253 where id = 2263;
update floods.crossing set latest_status_id = 3254 where id = 2264;
update floods.crossing set latest_status_id = 3255 where id = 2265;
update floods.crossing set latest_status_id = 3256 where id = 2266;
update floods.crossing set latest_status_id = 3257 where id = 2267;
update floods.crossing set latest_status_id = 3258 where id = 2268;
update floods.crossing set latest_status_id = 3259 where id = 2269;
update floods.crossing set latest_status_id = 3260 where id = 2270;
update floods.crossing set latest_status_id = 3261 where id = 2271;
update floods.crossing set latest_status_id = 3262 where id = 2272;
update floods.crossing set latest_status_id = 3264 where id = 2274;
update floods.crossing set latest_status_id = 3265 where id = 2275;
update floods.crossing set latest_status_id = 3266 where id = 2276;
update floods.crossing set latest_status_id = 3267 where id = 2277;
update floods.crossing set latest_status_id = 3268 where id = 2278;
update floods.crossing set latest_status_id = 3269 where id = 2279;
update floods.crossing set latest_status_id = 3270 where id = 2280;
update floods.crossing set latest_status_id = 3271 where id = 2281;
update floods.crossing set latest_status_id = 3272 where id = 2282;
update floods.crossing set latest_status_id = 3273 where id = 2283;
update floods.crossing set latest_status_id = 3274 where id = 2284;
update floods.crossing set latest_status_id = 3275 where id = 2285;
update floods.crossing set latest_status_id = 3276 where id = 2286;
update floods.crossing set latest_status_id = 3277 where id = 2287;
update floods.crossing set latest_status_id = 3278 where id = 2288;
update floods.crossing set latest_status_id = 3279 where id = 2289;
update floods.crossing set latest_status_id = 3280 where id = 2290;
update floods.crossing set latest_status_id = 3281 where id = 2291;
update floods.crossing set latest_status_id = 3282 where id = 2292;
update floods.crossing set latest_status_id = 3283 where id = 2293;
update floods.crossing set latest_status_id = 3284 where id = 2294;
update floods.crossing set latest_status_id = 3285 where id = 2295;
update floods.crossing set latest_status_id = 3286 where id = 2296;
update floods.crossing set latest_status_id = 3288 where id = 2298;
update floods.crossing set latest_status_id = 3289 where id = 2299;
update floods.crossing set latest_status_id = 3290 where id = 2300;
update floods.crossing set latest_status_id = 3291 where id = 2301;
update floods.crossing set latest_status_id = 3292 where id = 2302;
update floods.crossing set latest_status_id = 3293 where id = 2303;
update floods.crossing set latest_status_id = 3294 where id = 2304;
update floods.crossing set latest_status_id = 3295 where id = 2305;
update floods.crossing set latest_status_id = 3296 where id = 2306;
update floods.crossing set latest_status_id = 3297 where id = 2307;
update floods.crossing set latest_status_id = 3298 where id = 2308;
update floods.crossing set latest_status_id = 3299 where id = 2309;
update floods.crossing set latest_status_id = 3300 where id = 2310;
update floods.crossing set latest_status_id = 3301 where id = 2311;
update floods.crossing set latest_status_id = 3302 where id = 2312;
update floods.crossing set latest_status_id = 3303 where id = 2313;
update floods.crossing set latest_status_id = 3304 where id = 2314;
update floods.crossing set latest_status_id = 3305 where id = 2315;
update floods.crossing set latest_status_id = 3306 where id = 2316;
update floods.crossing set latest_status_id = 3307 where id = 2317;
update floods.crossing set latest_status_id = 3308 where id = 2318;
update floods.crossing set latest_status_id = 3309 where id = 2319;
update floods.crossing set latest_status_id = 3310 where id = 2320;
update floods.crossing set latest_status_id = 3311 where id = 2321;
update floods.crossing set latest_status_id = 3312 where id = 2322;
update floods.crossing set latest_status_id = 3313 where id = 2323;
update floods.crossing set latest_status_id = 3314 where id = 2324;
update floods.crossing set latest_status_id = 3316 where id = 2326;
update floods.crossing set latest_status_id = 3317 where id = 2327;
update floods.crossing set latest_status_id = 3318 where id = 2328;
update floods.crossing set latest_status_id = 3319 where id = 2329;
update floods.crossing set latest_status_id = 3320 where id = 2330;
update floods.crossing set latest_status_id = 3321 where id = 2331;
update floods.crossing set latest_status_id = 3322 where id = 2332;
update floods.crossing set latest_status_id = 3323 where id = 2333;
update floods.crossing set latest_status_id = 3324 where id = 2334;
update floods.crossing set latest_status_id = 3325 where id = 2335;
update floods.crossing set latest_status_id = 3326 where id = 2336;
update floods.crossing set latest_status_id = 3327 where id = 2337;
update floods.crossing set latest_status_id = 3328 where id = 2338;
update floods.crossing set latest_status_id = 3329 where id = 2339;
update floods.crossing set latest_status_id = 3330 where id = 2340;
update floods.crossing set latest_status_id = 3331 where id = 2341;
update floods.crossing set latest_status_id = 3332 where id = 2342;
update floods.crossing set latest_status_id = 3333 where id = 2343;
update floods.crossing set latest_status_id = 3334 where id = 2344;
update floods.crossing set latest_status_id = 3335 where id = 2345;
update floods.crossing set latest_status_id = 3336 where id = 2346;
update floods.crossing set latest_status_id = 3337 where id = 2347;
update floods.crossing set latest_status_id = 3338 where id = 2348;
update floods.crossing set latest_status_id = 3339 where id = 2349;
update floods.crossing set latest_status_id = 3340 where id = 2350;
update floods.crossing set latest_status_id = 3341 where id = 2351;
update floods.crossing set latest_status_id = 3342 where id = 2352;
update floods.crossing set latest_status_id = 3344 where id = 2354;
update floods.crossing set latest_status_id = 3345 where id = 2355;
update floods.crossing set latest_status_id = 3346 where id = 2356;
update floods.crossing set latest_status_id = 3347 where id = 2357;
update floods.crossing set latest_status_id = 3348 where id = 2358;
update floods.crossing set latest_status_id = 3349 where id = 2359;
update floods.crossing set latest_status_id = 3350 where id = 2360;
update floods.crossing set latest_status_id = 3351 where id = 2361;
update floods.crossing set latest_status_id = 3352 where id = 2362;
update floods.crossing set latest_status_id = 3353 where id = 2363;
update floods.crossing set latest_status_id = 3354 where id = 2364;
update floods.crossing set latest_status_id = 3355 where id = 2365;
update floods.crossing set latest_status_id = 3356 where id = 2366;
update floods.crossing set latest_status_id = 3357 where id = 2367;
update floods.crossing set latest_status_id = 3358 where id = 2368;
update floods.crossing set latest_status_id = 3359 where id = 2369;
update floods.crossing set latest_status_id = 3360 where id = 2370;
update floods.crossing set latest_status_id = 3361 where id = 2371;
update floods.crossing set latest_status_id = 3362 where id = 2372;
update floods.crossing set latest_status_id = 3363 where id = 2373;
update floods.crossing set latest_status_id = 3364 where id = 2374;
update floods.crossing set latest_status_id = 3365 where id = 2375;
update floods.crossing set latest_status_id = 3366 where id = 2376;
update floods.crossing set latest_status_id = 3367 where id = 2377;
update floods.crossing set latest_status_id = 3368 where id = 2378;
update floods.crossing set latest_status_id = 3369 where id = 2379;
update floods.crossing set latest_status_id = 3370 where id = 2380;
update floods.crossing set latest_status_id = 3371 where id = 2381;
update floods.crossing set latest_status_id = 3372 where id = 2382;
update floods.crossing set latest_status_id = 3373 where id = 2383;
update floods.crossing set latest_status_id = 3374 where id = 2384;
update floods.crossing set latest_status_id = 3375 where id = 2385;
update floods.crossing set latest_status_id = 3376 where id = 2386;
update floods.crossing set latest_status_id = 3377 where id = 2387;
update floods.crossing set latest_status_id = 3378 where id = 2388;
update floods.crossing set latest_status_id = 3379 where id = 2389;
update floods.crossing set latest_status_id = 3380 where id = 2390;

commit;
