//Maya ASCII 2023 scene
//Name: parcel_Lamp.ma
//Last modified: Sun, Dec 11, 2022 08:29:16 PM
//Codeset: 1252
requires maya "2023";
requires -nodeType "rmanVolumeAggregateSet" "rfm_volume_aggregate_set.py" "1.0";
requires -nodeType "d_openexr" -nodeType "PxrPathTracer" -nodeType "rmanBakingGlobals"
		 -nodeType "rmanDisplay" -nodeType "rmanDisplayChannel" -nodeType "rmanGlobals" "RenderMan_for_Maya.py" "24.4 @ 2226585";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "CE15514B-4BF8-5D14-DE1E-C682607083F5";
createNode transform -s -n "persp";
	rename -uid "8831C396-426A-3038-2C3D-4CB6095E2CEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.8478538648572105 18.650778911530942 51.382300422050143 ;
	setAttr ".r" -type "double3" -12.938352728338177 1449.3999999991652 2.0149024605275877e-16 ;
	setAttr ".rp" -type "double3" -8.8817841970012523e-16 2.2204460492503131e-15 -1.7763568394002505e-15 ;
	setAttr ".rpt" -type "double3" -1.2636326324772849e-15 -2.3463972174256634e-15 -2.5118721893336156e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "68DE9792-4FF5-0068-439B-CF922772D90B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 52.756317864605094;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1920928955078125e-07 11.981640318922308 -1.7881393432617188e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "A18560FE-4B93-6FDC-30F5-E8B3B28E13F1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "3BCD5930-4408-9E37-60CA-FC900C4D2939";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "B7BDA3AB-43C2-20CD-F178-508C976F9662";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "DCF08DBD-4C44-D784-BBBC-689B05B49274";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "744C51F3-497C-05D9-672E-80A36B397DA3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8FAF8124-41B5-CBA5-5926-5ABFBE4F8628";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "LampPost";
	rename -uid "B050C591-4E10-0BB5-D0F9-11A76D71E920";
	setAttr ".rp" -type "double3" 0 0 -5.9604644719879474e-08 ;
	setAttr ".sp" -type "double3" 0 0 -5.9604644719879474e-08 ;
createNode mesh -n "LampPostShape" -p "LampPost";
	rename -uid "FA91CDA3-4711-0B43-6A92-17B216564AA4";
	setAttr -k off ".v";
	setAttr -s 5 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "e[0:9]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:89]";
	setAttr ".iog[0].og[2].gcl" -type "componentList" 1 "e[40:59]";
	setAttr ".iog[0].og[3].gcl" -type "componentList" 1 "e[110:119]";
	setAttr ".iog[0].og[4].gcl" -type "componentList" 1 "e[120:129]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 8 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "e[40:49]" "e[110:119]";
	setAttr ".gtag[1].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "vtx[21:30]" "vtx[61:70]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "vtx[21:30]" "vtx[61:70]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "vtx[21:40]" "vtx[61:80]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "vtx[31:40]" "vtx[71:80]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "vtx[31:40]" "vtx[71:80]";
	setAttr ".gtag[6].gtagnm" -type "string" "sides";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "f[0:89]";
	setAttr ".gtag[7].gtagnm" -type "string" "topRing";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 2 "e[50:59]" "e[120:129]";
	setAttr ".pv" -type "double2" 0.82300622931115153 0.37337256222963333 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 122 ".uvst[0].uvsp[0:121]" -type "float2" 0.5928185 0.92344612
		 0.48422444 0.94829082 0.48857713 0.92122942 0.60720199 0.71221399 0.48259801 0.70567977
		 0.59825283 0.74016958 0.4877845 0.73661041 0.59401035 0.76726711 0.48978519 0.76525253
		 0.59240854 0.79352874 0.49036998 0.79233289 0.59203935 0.81920505 0.49053991 0.81841242
		 0.59209698 0.84464759 0.49066401 0.8439557 0.59220511 0.87022781 0.49069852 0.86936092
		 0.59232122 0.89633948 0.49026775 0.89500123 0.62581134 0.91295975 0.63341886 0.75168341
		 0.62705231 0.76403552 0.62448418 0.78211164 0.62380958 0.80272788 0.62390751 0.82465124
		 0.62423885 0.84721607 0.62459189 0.8698864 0.62500364 0.89206892 0.45550489 0.92433834
		 0.45813799 0.9063043 0.44907331 0.7439754 0.45467073 0.7574805 0.45681757 0.77580476
		 0.4576816 0.79664564 0.45813125 0.81876779 0.45849687 0.84137177 0.45881319 0.86387163
		 0.45887083 0.885737 0.90477544 0.70498401 0.90329272 0.10790293 0.92394841 0.10987173
		 0.88589317 0.51492602 0.94292361 0.049097613 0.91752827 0.04513292 0.93510622 0.086617664
		 0.88772655 0.70623875 0.74099559 0.70495367 0.758044 0.70621479 0.77397591 0.70749307
		 0.79114735 0.70809031 0.806624 0.7087568 0.8228848 0.70869625 0.8391456 0.70876276
		 0.85462254 0.70810193 0.87179416 0.70751119 0.87288684 0.51468372 0.72204179 0.10983463
		 0.75994807 0.51490277 0.74269807 0.10787345 0.77295458 0.51466531 0.7622093 0.10551499
		 0.78522533 0.51442856 0.78346324 0.10457607 0.79841948 0.51430678 0.80271417 0.10336776
		 0.8103717 0.51418376 0.8229962 0.10352243 0.8229208 0.51419133 0.84327835 0.10337521
		 0.8354699 0.51418841 0.88378245 0.10553731 0.86252886 0.10459058 0.84742194 0.51431584
		 0.86061609 0.51444238 0.86890948 0.039628193 0.8655284 0.078497544 0.84633261 0.037990943
		 0.84471959 0.076047316 0.82300818 0.038151041 0.82300109 0.077219233 0.79968387 0.03798236
		 0.80128294 0.076039359 0.7771064 0.039611354 0.78047323 0.078481898 0.7522139 0.041263267
		 0.75727642 0.078778878 0.72848564 0.0450982 0.73551762 0.083029911 0.70308882 0.049053594
		 0.7108925 0.086576506 0.89380139 0.041289255 0.88872516 0.078803018 0.91048235 0.083062038
		 0.59976399 0.98306906 0.59470689 0.9521113 0.6278953 0.93132252 0.63343847 0.94486153
		 0.47515276 0.97619915 0.44908661 0.93664795 0.27713889 0.78960508 0.32687998 0.73629427
		 0.35145402 0.75287372 0.3072809 0.71148872 0.35306358 0.70641285 0.38023293 0.73527175
		 0.27635783 0.71651024 0.31886709 0.68046314 0.24752545 0.71212775 0.27594489 0.67672873
		 0.23557252 0.68109769 0.1939469 0.81605136 0.20265168 0.78406131 0.15599328 0.80732119
		 0.16540724 0.77334744 0.20405239 0.75333369 0.17518485 0.73545641 0.35190821 0.78570998
		 0.38963979 0.77543771 0.36054653 0.81605303 0.39870447 0.80758089 0.22695881 0.73644203
		 0.20105445 0.70713252;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 111 ".pt[0:110]" -type "float3"  5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 -5.9604645e-08 
		0 -8.9406967e-08 1.0430813e-07 0 -1.7881393e-07 1.4901161e-08 0 -1.1920929e-07 1.7881393e-07 
		0 -2.9802322e-08 1.7881393e-07 0 -1.4210855e-14 1.7881393e-07 0 8.9406967e-08 1.4901161e-08 
		0 1.7881393e-07 1.0430813e-07 0 1.7881393e-07 0 0 8.9406967e-08 -5.9604645e-08 0 
		-7.1054274e-15 -5.9604645e-08 0 -8.9406967e-08 1.0430813e-07 0 -1.7881393e-07 1.4901161e-08 
		0 -1.1920929e-07 1.7881393e-07 0 -2.9802322e-08 1.7881393e-07 0 -1.4210855e-14 1.7881393e-07 
		0 8.9406967e-08 1.4901161e-08 0 1.7881393e-07 1.0430813e-07 0 1.7881393e-07 0 0 8.9406967e-08 
		-5.9604645e-08 0 -7.1054274e-15 8.9406967e-08 2.3841858e-07 0 5.2154064e-08 2.3841858e-07 
		0 4.4703484e-08 2.3841858e-07 0 2.9802322e-08 2.3841858e-07 -1.4901161e-08 1.3411045e-07 
		2.3841858e-07 -1.0658141e-14 2.9802322e-08 2.3841858e-07 0 5.2154064e-08 2.3841858e-07 
		-1.4901161e-08 7.4505806e-08 2.3841858e-07 -1.4901161e-08 8.9406967e-08 2.3841858e-07 
		0 1.4901161e-08 2.3841858e-07 -5.3290705e-15 8.9406967e-08 -2.3841858e-07 0 5.2154064e-08 
		-2.3841858e-07 0 4.4703484e-08 -2.3841858e-07 0 2.9802322e-08 -2.3841858e-07 -1.4901161e-08 
		1.3411045e-07 -2.3841858e-07 -1.0658141e-14 2.9802322e-08 -2.3841858e-07 0 5.2154064e-08 
		-2.3841858e-07 -1.4901161e-08 7.4505806e-08 -2.3841858e-07 -1.4901161e-08 8.9406967e-08 
		-2.3841858e-07 0 -2.9802322e-08 -2.3841858e-07 -5.3290705e-15 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 
		0 0 5.9604645e-08 0 0 5.9604645e-08 0 0 5.9604645e-08 0 0;
	setAttr -s 111 ".vt[0:110]"  0.18983668 11.31718922 -0.14935899 0.12262987 11.31718922 -0.3774159
		 -0.094260968 11.31718922 -0.24166784 -0.32104909 11.31718922 -0.23325582 -0.26984283 11.31718922 -2.893681e-08
		 -0.32104906 11.31718922 0.23325576 -0.094260938 11.31718922 0.24166769 0.12262979 11.31718922 0.37741578
		 0.18983653 11.31718922 0.14935885 0.3968384 11.31718922 2.8246916e-10 -0.015738327 11.75384808 -3.723299e-08
		 0.2812095 11.069478035 -0.21471508 0.1266364 11.048378944 -0.3955307 -0.12371717 11.067644119 -0.33521241
		 -0.3364647 11.048538208 -0.24305326 -0.36318299 11.067085266 -3.4185923e-08 -0.33646467 11.048538208 0.24305323
		 -0.123717 11.067644119 0.33521181 0.1266363 11.048378944 0.39553052 0.28120968 11.069478035 0.21471508
		 0.41585496 11.048389435 -4.3923936e-08 0.6369949 9.34178066 -0.46280414 0.24331041 9.34178066 -0.74883282
		 -0.2433106 9.34178066 -0.74883264 -0.63699502 9.34178066 -0.46280396 -0.78736907 9.34178066 3.4257049e-08
		 -0.6369949 9.34178066 0.46280411 -0.24331047 9.34178066 0.7488327 0.24331048 9.34178066 0.7488327
		 0.6369949 9.34178066 0.46280402 0.78736895 9.34178066 -1.2673797e-08 0.6369949 10.91651821 -0.46280414
		 0.24331041 10.91651821 -0.74883282 -0.2433106 10.91651821 -0.74883264 -0.63699502 10.91651821 -0.46280396
		 -0.78736907 10.91651821 3.4257049e-08 -0.6369949 10.91651821 0.46280411 -0.24331047 10.91651821 0.7488327
		 0.24331048 10.91651821 0.7488327 0.6369949 10.91651821 0.46280402 0.78736895 10.91651821 -1.2673797e-08
		 0.24234156 9.16862679 -0.17607151 0.092566133 9.16862679 -0.28488958 -0.092566304 9.16862679 -0.28488958
		 -0.24234168 9.16862679 -0.17607148 -0.29955059 9.16862679 -2.3895442e-08 -0.24234168 9.16862679 0.17607139
		 -0.092566274 9.16862679 0.28488946 0.092566185 9.16862679 0.28488946 0.24234156 9.16862679 0.17607136
		 0.29955053 9.16862679 -4.1750042e-08 0.24234156 11.089672089 -0.17607151 0.092566133 11.089672089 -0.28488958
		 -0.092566304 11.089672089 -0.28488958 -0.24234168 11.089672089 -0.17607148 -0.29955053 11.089672089 -2.3895442e-08
		 -0.24234168 11.089672089 0.17607139 -0.092566274 11.089672089 0.28488946 0.092566185 11.089672089 0.28488946
		 0.24234156 11.089672089 0.17607136 0.29955044 11.089672089 -4.1750042e-08 0.60256886 0 -0.19578645
		 0.27638844 0 -0.36481678 1.6107014e-08 0 -0.63357824 -0.27638841 0 -0.3648167 -0.60256857 0 -0.19578639
		 -0.44720578 0 0.16090526 -0.37240782 0 0.51257545 -1.7380438e-08 0 0.48581919 0.37240776 0 0.51257539
		 0.44720566 0 0.16090523 0.39219472 9.85458946 -0.13565217 0.17989331 9.85458946 -0.24291702
		 1.5393184e-08 9.85458946 -0.42059827 -0.17989326 9.85458946 -0.24291691 -0.39219454 9.85458946 -0.13565212
		 -0.29107335 9.85458946 0.09926036 -0.24238952 9.85458946 0.3254002 -6.4028502e-09 9.85458946 0.31073749
		 0.24238956 9.85458946 0.3254002 0.29107335 9.85458946 0.099260338 0.47406635 0.94538808 -0.15403348
		 0.35183555 0.94538808 0.12991759 0.29298893 0.94538808 0.40326467 -2.6345989e-08 0.94538808 0.38554114
		 -0.29298899 0.94538808 0.4032647 -0.35183561 0.94538808 0.12991762 -0.47406614 0.94538808 -0.15403342
		 -0.21744642 0.94538808 -0.28369001 0 0.94538808 -0.49846277 0.21744645 0.94538808 -0.28369009
		 0.58114958 0.56723261 -0.18882689 0.43130898 0.56723261 0.15574008 0.35916993 0.56723261 0.49435502
		 -1.887485e-08 0.56723261 0.46910444 -0.35916999 0.56723261 0.49435511 -0.43130907 0.56723261 0.15574013
		 -0.58114928 0.56723261 -0.18882683 -0.26656371 0.56723261 -0.35129416 1.3422235e-08 0.56723261 -0.61105663
		 0.26656377 0.56723261 -0.35129425 0.29869309 6.99830818 -0.11465976 0.22167967 6.99830818 0.064248167
		 0.18460242 6.99830818 0.23647492 1.637326e-08 6.99830818 0.22530787 -0.18460236 6.99830818 0.23647492
		 -0.22167967 6.99830818 0.064248189 -0.29869291 6.99830818 -0.11465973 -0.13700558 6.99830818 -0.19635195
		 3.2972974e-08 6.99830818 -0.33167297 0.13700567 6.99830818 -0.19635202;
	setAttr -s 200 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 0 0 0 10 1 1 10 1 2 10 1 3 10 1 4 10 1 5 10 1 6 10 1 7 10 1 8 10 1 9 10 1 0 11 0
		 20 11 0 1 12 0 11 12 0 2 13 0 12 13 0 3 14 0 13 14 0 4 15 0 14 15 0 5 16 0 15 16 0
		 6 17 0 16 17 0 7 18 0 17 18 0 8 19 0 18 19 0 9 20 0 19 20 0 21 22 0 22 23 0 23 24 0
		 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 21 0 31 32 0 32 33 0 33 34 0 34 35 0
		 35 36 0 36 37 0 37 38 0 38 39 0 39 40 0 40 31 0 21 31 0 22 32 0 23 33 0 24 34 0 25 35 0
		 26 36 0 27 37 0 28 38 0 29 39 0 30 40 0 21 41 0 22 42 0 41 42 0 23 43 0 42 43 0 24 44 0
		 43 44 0 25 45 0 44 45 0 26 46 0 45 46 0 27 47 0 46 47 0 28 48 0 47 48 0 29 49 0 48 49 0
		 30 50 0 49 50 0 50 41 0 31 51 0 32 52 0 51 52 0 33 53 0 52 53 0 34 54 0 53 54 0 35 55 0
		 54 55 0 36 56 0 55 56 0 37 57 0 56 57 0 38 58 0 57 58 0 39 59 0 58 59 0 40 60 0 59 60 0
		 60 51 0 61 62 0 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 61 0
		 71 72 0 72 73 0 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 71 0 61 91 1
		 62 100 1 63 99 1 64 98 1 65 97 1 66 96 1 67 95 1 68 94 1 69 93 1 70 92 1 81 101 1
		 82 102 1 83 103 1 84 104 1 85 105 1 86 106 1 87 107 1 88 108 1 89 109 1 90 110 1
		 81 82 1 82 83 1 83 84 1 84 85 1 85 86 1 86 87 1 87 88 1 88 89 1 89 90 1 90 81 1 91 81 1
		 92 82 1 93 83 1 94 84 1 95 85 1 96 86 1;
	setAttr ".ed[166:199]" 97 87 1 98 88 1 99 89 1 100 90 1 91 92 1 92 93 1 93 94 1
		 94 95 1 95 96 1 96 97 1 97 98 1 98 99 1 99 100 1 100 91 1 101 71 1 102 80 1 103 79 1
		 104 78 1 105 77 1 106 76 1 107 75 1 108 74 1 109 73 1 110 72 1 101 102 1 102 103 1
		 103 104 1 104 105 1 105 106 1 106 107 1 107 108 1 108 109 1 109 110 1 110 101 1;
	setAttr -s 90 -ch 350 ".fc[0:89]" -type "polyFaces" 
		f 3 -11 0 11
		mu 0 3 99 100 101
		f 3 -12 1 12
		mu 0 3 99 101 116
		f 3 -13 2 13
		mu 0 3 99 116 118
		f 3 -14 3 14
		mu 0 3 99 110 111
		f 3 -15 4 15
		mu 0 3 99 111 114
		f 3 -16 5 16
		mu 0 3 99 114 120
		f 3 -17 6 17
		mu 0 3 99 120 107
		f 3 -18 7 18
		mu 0 3 99 107 105
		f 3 -19 8 19
		mu 0 3 99 105 102
		f 3 -20 9 10
		mu 0 3 99 102 100
		f 4 21 -21 -10 38
		mu 0 4 106 103 100 102
		f 4 23 -23 -1 20
		mu 0 4 103 104 101 100
		f 4 25 -25 -2 22
		mu 0 4 104 117 116 101
		f 4 27 -27 -3 24
		mu 0 4 117 119 118 116
		f 4 29 -29 -4 26
		mu 0 4 112 113 111 110
		f 4 31 -31 -5 28
		mu 0 4 113 115 114 111
		f 4 33 -33 -6 30
		mu 0 4 115 121 120 114
		f 4 35 -35 -7 32
		mu 0 4 121 109 107 120
		f 4 37 -37 -8 34
		mu 0 4 109 108 105 107
		f 4 39 -39 -9 36
		mu 0 4 108 106 102 105
		f 4 40 61 -51 -61
		mu 0 4 0 94 1 2
		f 4 41 62 -52 -62
		mu 0 4 94 93 97 1
		f 4 42 63 -53 -63
		mu 0 4 3 5 6 4
		f 4 43 64 -54 -64
		mu 0 4 5 7 8 6
		f 4 44 65 -55 -65
		mu 0 4 7 9 10 8
		f 4 45 66 -56 -66
		mu 0 4 9 11 12 10
		f 4 46 67 -57 -67
		mu 0 4 11 13 14 12
		f 4 47 68 -58 -68
		mu 0 4 13 15 16 14
		f 4 48 69 -59 -69
		mu 0 4 15 17 18 16
		f 4 49 60 -60 -70
		mu 0 4 17 0 2 18
		f 4 -41 70 72 -72
		mu 0 4 94 0 19 95
		f 4 -42 71 74 -74
		mu 0 4 93 94 95 96
		f 4 -43 73 76 -76
		mu 0 4 5 3 20 21
		f 4 -44 75 78 -78
		mu 0 4 7 5 21 22
		f 4 -45 77 80 -80
		mu 0 4 9 7 22 23
		f 4 -46 79 82 -82
		mu 0 4 11 9 23 24
		f 4 -47 81 84 -84
		mu 0 4 13 11 24 25
		f 4 -48 83 86 -86
		mu 0 4 15 13 25 26
		f 4 -49 85 88 -88
		mu 0 4 17 15 26 27
		f 4 -50 87 89 -71
		mu 0 4 0 17 27 19
		f 4 50 91 -93 -91
		mu 0 4 2 1 28 29
		f 4 51 93 -95 -92
		mu 0 4 1 97 98 28
		f 4 52 95 -97 -94
		mu 0 4 4 6 31 30
		f 4 53 97 -99 -96
		mu 0 4 6 8 32 31
		f 4 54 99 -101 -98
		mu 0 4 8 10 33 32
		f 4 55 101 -103 -100
		mu 0 4 10 12 34 33
		f 4 56 103 -105 -102
		mu 0 4 12 14 35 34
		f 4 57 105 -107 -104
		mu 0 4 14 16 36 35
		f 4 58 107 -109 -106
		mu 0 4 16 18 37 36
		f 4 59 90 -110 -108
		mu 0 4 18 2 29 37
		f 4 179 -131 110 131
		mu 0 4 92 91 90 43
		f 4 178 -132 111 132
		mu 0 4 44 92 43 42
		f 4 177 -133 112 133
		mu 0 4 87 89 88 86
		f 4 176 -134 113 134
		mu 0 4 85 87 86 84
		f 4 175 -135 114 135
		mu 0 4 83 85 84 82
		f 4 174 -136 115 136
		mu 0 4 81 83 82 80
		f 4 173 -137 116 137
		mu 0 4 79 81 80 78
		f 4 172 -138 117 138
		mu 0 4 77 79 78 76
		f 4 171 -139 118 139
		mu 0 4 75 77 76 74
		f 4 170 -140 119 130
		mu 0 4 91 75 74 90
		f 4 190 -142 -151 140
		mu 0 4 73 72 71 70
		f 4 191 -143 -152 141
		mu 0 4 72 69 68 71
		f 4 192 -144 -153 142
		mu 0 4 69 67 66 68
		f 4 193 -145 -154 143
		mu 0 4 67 65 64 66
		f 4 194 -146 -155 144
		mu 0 4 65 63 62 64
		f 4 195 -147 -156 145
		mu 0 4 63 61 60 62
		f 4 196 -148 -157 146
		mu 0 4 61 59 58 60
		f 4 197 -149 -158 147
		mu 0 4 59 57 56 58
		f 4 198 -150 -159 148
		mu 0 4 41 55 39 40
		f 4 199 -141 -160 149
		mu 0 4 55 73 70 39
		f 4 150 -162 -171 160
		mu 0 4 70 71 75 91
		f 4 151 -163 -172 161
		mu 0 4 71 68 77 75
		f 4 152 -164 -173 162
		mu 0 4 68 66 79 77
		f 4 153 -165 -174 163
		mu 0 4 66 64 81 79
		f 4 154 -166 -175 164
		mu 0 4 64 62 83 81
		f 4 155 -167 -176 165
		mu 0 4 62 60 85 83
		f 4 156 -168 -177 166
		mu 0 4 60 58 87 85
		f 4 157 -169 -178 167
		mu 0 4 58 56 89 87
		f 4 158 -170 -179 168
		mu 0 4 40 39 92 44
		f 4 159 -161 -180 169
		mu 0 4 39 70 91 92
		f 4 -130 -182 -191 180
		mu 0 4 54 53 72 73
		f 4 -129 -183 -192 181
		mu 0 4 53 52 69 72
		f 4 -128 -184 -193 182
		mu 0 4 52 51 67 69
		f 4 -127 -185 -194 183
		mu 0 4 51 50 65 67
		f 4 -126 -186 -195 184
		mu 0 4 50 49 63 65
		f 4 -125 -187 -196 185
		mu 0 4 49 48 61 63
		f 4 -124 -188 -197 186
		mu 0 4 48 47 59 61
		f 4 -123 -189 -198 187
		mu 0 4 47 46 57 59
		f 4 -122 -190 -199 188
		mu 0 4 38 45 55 41
		f 4 -121 -181 -200 189
		mu 0 4 45 54 73 55;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 30 
		40 0.94999998807907104 
		41 0.94999998807907104 
		42 0.94999998807907104 
		43 0.94999998807907104 
		44 0.94999998807907104 
		45 0.94999998807907104 
		46 0.94999998807907104 
		47 0.94999998807907104 
		48 0.94999998807907104 
		49 0.94999998807907104 
		50 0.94999998807907104 
		51 0.94999998807907104 
		52 0.94999998807907104 
		53 0.94999998807907104 
		54 0.94999998807907104 
		55 0.94999998807907104 
		56 0.94999998807907104 
		57 0.94999998807907104 
		58 0.94999998807907104 
		59 0.94999998807907104 
		150 3.349998950958252 
		151 3.349998950958252 
		152 3.349998950958252 
		153 3.349998950958252 
		154 3.349998950958252 
		155 3.349998950958252 
		156 3.349998950958252 
		157 3.349998950958252 
		158 3.349998950958252 
		159 3.349998950958252 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 7 
		99 0 
		101 0 
		104 0 
		107 0 
		109 0 
		114 0 
		115 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "6425C8F8-44F3-F22A-B730-92BDEA39E712";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6496B8D5-4536-2A68-1BCB-B4AD2947BF3A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "3911F378-4320-D57D-ABD9-4489E5999427";
createNode displayLayerManager -n "layerManager";
	rename -uid "93DD003B-4E5A-1335-56FD-3BBD03C3A872";
createNode displayLayer -n "defaultLayer";
	rename -uid "F96FD805-4E72-7D47-E90C-A093B75C7A0F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "DA1CFCBF-4860-B825-C0E3-5C91353F1C55";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "553AA26A-450E-6CD8-90C2-D8894787CC15";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "E8E139B0-49D1-B395-6C7D-C39B01E18403";
	setAttr ".version" -type "string" "5.2.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "869C3569-4DD8-F5C1-6F6B-7386A70FD686";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "8BE4C2CD-4FD7-CA00-C3F9-ADB92FD07553";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "6D7006C5-4916-F8E4-8E9C-B3B6727448F8";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode rmanGlobals -s -n "rmanGlobals";
	rename -uid "F2FCF34C-4D6F-8947-235D-F584A6CADEE2";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".hider_minSamples" 0;
	setAttr ".hider_maxSamples" 128;
	setAttr ".ri_pixelVariance" 0.014999999664723873;
	setAttr ".hider_incremental" yes;
	setAttr ".ipr_hider_maxSamples" 64;
	setAttr ".ipr_ri_pixelVariance" 0.05000000074505806;
	setAttr ".ipr_ri_decidither" 0;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".ri_displayFilter" -type "string" "gaussian";
	setAttr ".ri_displayFilterSize" -type "float2" 2 2 ;
	setAttr ".pixelFilterMode" -type "string" "importance";
	setAttr ".renderVariant" -type "string" "ris";
	setAttr ".xpuMode" -type "long2" 1 1 ;
	setAttr ".motionBlur" 0;
	setAttr ".cameraBlur" no;
	setAttr ".shutterAngle" 180;
	setAttr ".shutterOpenEnd" 0;
	setAttr ".shutterCloseStart" 1;
	setAttr ".shutterTiming" 0;
	setAttr ".motionSamples" 2;
	setAttr ".ocioConfig" 0;
	setAttr ".ocioConfigPath" -type "string" "";
	setAttr ".ocioColorSpaceName" -type "string" "";
	setAttr ".enableStylizedLooks" no;
	setAttr ".displayFilters[0]" -type "string" "";
	setAttr ".sampleFilters[0]" -type "string" "";
	setAttr ".outputAllShaders" no;
	setAttr ".reentrantProcedurals" yes;
	setAttr ".outputShadowAOV" 0;
	setAttr ".enableImagePlaneFilter" yes;
	setAttr ".learnLightSelection" yes;
	setAttr ".shadowBumpTerminator" yes;
	setAttr ".blueNoise" yes;
	setAttr ".geomShadowTermBias" yes;
	setAttr ".roughnessMollification" 1;
	setAttr ".opt_bucket_order" -type "string" "circle";
	setAttr ".limits_bucketsize" -type "long2" 16 16 ;
	setAttr ".limits_othreshold" -type "float3" 0.99599999 0.99599999 0.99599999 ;
	setAttr ".rfm_referenceFrame" 0;
	setAttr ".adaptiveMetric" -type "string" "variance";
	setAttr ".hider_darkfalloff" 0.02500000037252903;
	setAttr ".hider_exposurebracket" -type "float2" -1 1 ;
	setAttr ".ri_hider_adaptAll" no;
	setAttr ".dice_micropolygonlength" 1;
	setAttr ".dice_watertight" no;
	setAttr ".dice_referenceCameraType" 0;
	setAttr ".dice_referenceCamera" -type "string" "";
	setAttr ".hair_minWidth" 0.5;
	setAttr ".trace_autobias" yes;
	setAttr ".trace_bias" 0.0010000000474974513;
	setAttr ".trace_worldorigin" -type "string" "camera";
	setAttr ".trace_worldoffset" -type "float3" 0 0 0 ;
	setAttr ".opt_oslmatchcpp" no;
	setAttr ".opt_oslSIMDEnable" yes;
	setAttr ".opt_oslVerbosity" 0;
	setAttr ".opt_oslStatistics" 0;
	setAttr ".deep_quality" 0.75;
	setAttr ".opt_cropWindowEnable" no;
	setAttr ".opt_cropWindowTopLeft" -type "float2" 0 0 ;
	setAttr ".opt_cropWindowBottomRight" -type "float2" 1 1 ;
	setAttr ".user_sceneUnits" 1;
	setAttr ".user_iesIgnoreWatts" yes;
	setAttr ".limits_texturememory" 4096;
	setAttr ".limits_geocachememory" 4096;
	setAttr ".limits_opacitycachememory" 2048;
	setAttr ".statistics_level" 1;
	setAttr ".statistics_xmlfilename" -type "string" "";
	setAttr ".lpe_reload_definitions" -type "string" "";
	setAttr ".lpe_diffuse2" -type "string" "Diffuse,HairDiffuse,diffuse,translucent,hair4,irradiance";
	setAttr ".lpe_diffuse3" -type "string" "Subsurface,subsurface";
	setAttr ".lpe_specular2" -type "string" "Specular,HairSpecularR,specular,hair1";
	setAttr ".lpe_specular3" -type "string" "RoughSpecular,HairSpecularTRT,hair3";
	setAttr ".lpe_specular4" -type "string" "Clearcoat";
	setAttr ".lpe_specular5" -type "string" "Iridescence";
	setAttr ".lpe_specular6" -type "string" "Fuzz,HairSpecularGLINTS";
	setAttr ".lpe_specular7" -type "string" "SingleScatter,HairSpecularTT,hair2";
	setAttr ".lpe_specular8" -type "string" "Glass,specular";
	setAttr ".lpe_user2" -type "string" "Albedo,DiffuseAlbedo,SubsurfaceAlbedo,HairAlbedo";
	setAttr ".lpe_user3" -type "string" "Position";
	setAttr ".lpe_user4" -type "string" "UserColor";
	setAttr ".lpe_user5" -type "string" "";
	setAttr ".lpe_user6" -type "string" "Normal,DiffuseNormal,HairTangent,SubsurfaceNormal,SpecularNormal,RoughSpecularNormal,SingleScatterNormal,FuzzNormal,IridescenceNormal,GlassNormal";
	setAttr ".lpe_user7" -type "string" "";
	setAttr ".lpe_user8" -type "string" "";
	setAttr ".lpe_user9" -type "string" "";
	setAttr ".lpe_user10" -type "string" "";
	setAttr ".lpe_user11" -type "string" "";
	setAttr ".lpe_user12" -type "string" "";
	setAttr ".imageFileFormat" -type "string" "<scene>_<layer>_<camera>_<aov>.<f4>.<ext>";
	setAttr ".ribFileFormat" -type "string" "<camera><layer>.<f4>.rib";
	setAttr ".version" 1;
	setAttr ".take" 1;
	setAttr ".imageOutputDir" -type "string" "<ws>/images/<scene>_v<version>_t<take>";
	setAttr ".ribOutputDir" -type "string" "<ws>/renderman/rib/<scene>/v<version>_t<take>";
	setAttr -s 10 ".UserTokens";
	setAttr ".UserTokens[0].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[0].userTokenValues" -type "string" "";
	setAttr ".UserTokens[1].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[1].userTokenValues" -type "string" "";
	setAttr ".UserTokens[2].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[2].userTokenValues" -type "string" "";
	setAttr ".UserTokens[3].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[3].userTokenValues" -type "string" "";
	setAttr ".UserTokens[4].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[4].userTokenValues" -type "string" "";
	setAttr ".UserTokens[5].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[5].userTokenValues" -type "string" "";
	setAttr ".UserTokens[6].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[6].userTokenValues" -type "string" "";
	setAttr ".UserTokens[7].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[7].userTokenValues" -type "string" "";
	setAttr ".UserTokens[8].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[8].userTokenValues" -type "string" "";
	setAttr ".UserTokens[9].userTokenKeys" -type "string" "";
	setAttr ".UserTokens[9].userTokenValues" -type "string" "";
	setAttr ".rlfData" -type "string" "init";
	setAttr ".jobid" -type "string" "";
	setAttr ".txmanagerData" -type "string" "";
createNode PxrPathTracer -s -n "PxrPathTracer";
	rename -uid "60790525-4987-2E17-6E16-D399657F97A0";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".risPathGuiding" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
	setAttr ".volumeAggregate" -type "string" "";
	setAttr ".volumeAggregateCamera" -type "string" "";
	setAttr ".volumeAggregateIndirect" -type "string" "";
	setAttr ".volumeAggregateTransmission" -type "string" "";
	setAttr ".jointSampling" no;
createNode rmanBakingGlobals -s -n "rmanBakingGlobals";
	rename -uid "8FB8612B-48A5-1FDF-A7C6-7E8C26ADB2F8";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".bakeMode" 0;
	setAttr ".bakingImageFileFormat" -type "string" "<scene>_<user:bakingIdentifier>_<aov>.<ext>";
	setAttr ".resolution" 512;
	setAttr ".rman_diceDistanceLength" 0.05000000074505806;
	setAttr ".ri_maxSpecularDepth" 4;
	setAttr ".ri_maxDiffuseDepth" 1;
	setAttr ".init" 0;
createNode rmanDisplay -n "rmanDefaultBakeDisplay";
	rename -uid "F7203CDC-4C13-5FB8-9062-44AFA6C42273";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".denoise" no;
	setAttr ".frameMode" 0;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr -s 2 ".displayChannels";
	setAttr ".name" -type "string" "";
createNode rmanDisplayChannel -n "diffuse";
	rename -uid "31450933-44B2-605E-3F80-40981CB48B85";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "color";
	setAttr ".channelSource" -type "string" "lpe:C(D[DS]*[LO])|[LO]";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "diffuse";
createNode rmanDisplayChannel -n "a";
	rename -uid "B93C1A66-4F2E-6DA4-C134-D8B21CB79103";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".enable" yes;
	setAttr ".channelType" -type "string" "float";
	setAttr ".channelSource" -type "string" "a";
	setAttr ".lpeLightGroup" -type "string" "";
	setAttr ".filter" -type "string" "inherit from display";
	setAttr ".filterwidth" -type "float2" -1 -1 ;
	setAttr ".statistics" -type "string" "";
	setAttr ".relativepixelvariance" -1;
	setAttr ".shadowthreshold" 0.0099999997764825821;
	setAttr ".remapBreakPoint" 0;
	setAttr ".remapMaxValue" 0;
	setAttr ".remapSmoothness" 0;
	setAttr ".name" -type "string" "a";
createNode PxrPathTracer -s -n "bake_PxrPathTracer";
	rename -uid "635826DC-42D7-2328-732F-C788ADB6399B";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".maxIndirectBounces" 8;
	setAttr ".maxContinuationLength" -1;
	setAttr ".maxNonStochasticOpacityEvents" 0;
	setAttr ".sampleMode" -type "string" "bxdf";
	setAttr ".numLightSamples" 1;
	setAttr ".numBxdfSamples" 1;
	setAttr ".numIndirectSamples" 1;
	setAttr ".numDiffuseSamples" 1;
	setAttr ".numSpecularSamples" 1;
	setAttr ".numSubsurfaceSamples" 1;
	setAttr ".numRefractionSamples" 1;
	setAttr ".allowCaustics" no;
	setAttr ".accumOpacity" no;
	setAttr ".risPathGuiding" no;
	setAttr ".rouletteDepth" 4;
	setAttr ".rouletteThreshold" 0.20000000298023224;
	setAttr ".clampDepth" 2;
	setAttr ".clampLuminance" 10;
	setAttr ".volumeAggregate" -type "string" "";
	setAttr ".volumeAggregateCamera" -type "string" "";
	setAttr ".volumeAggregateIndirect" -type "string" "";
	setAttr ".volumeAggregateTransmission" -type "string" "";
	setAttr ".jointSampling" no;
createNode rmanVolumeAggregateSet -n "globalVolumeAggregate";
	rename -uid "A0B56229-4665-7D7A-6B6A-10B3102A7901";
lockNode -l 1 ;
createNode d_openexr -n "d_openexr";
	rename -uid "7604239C-4101-7D3B-6741-0993C8522B16";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".asrgba" yes;
	setAttr ".autocrop" -type "string" "false";
	setAttr ".storage" -type "string" "scanline";
	setAttr ".exrpixeltype" -type "string" "half";
	setAttr ".compression" -type "string" "zips";
	setAttr ".compressionlevel" 45;
	setAttr ".forcepar" 0;
	setAttr ".metadatacount" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "446AF2F4-4A0D-82E8-E82D-00811FC6C7F9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n"
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1982\n            -height 1170\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1982\\n    -height 1170\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1982\\n    -height 1170\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E14754A0-4C60-0A60-F33C-768228A5A198";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 23 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode rmanVolumeAggregateSet -n "parcel_Sandbag:globalVolumeAggregate";
	rename -uid "726B7781-4514-9240-51A4-7A8C2D8ECC0D";
lockNode -l 1 ;
createNode d_openexr -n "parcel_Sandbag:d_openexr";
	rename -uid "36BA04B0-4420-F3F3-C5A9-C09597072C01";
	setAttr ".cch" no;
	setAttr ".fzn" no;
	setAttr ".ihi" 2;
	setAttr ".nds" 0;
	setAttr ".asrgba" yes;
	setAttr ".autocrop" -type "string" "false";
	setAttr ".storage" -type "string" "scanline";
	setAttr ".exrpixeltype" -type "string" "half";
	setAttr ".compression" -type "string" "zips";
	setAttr ".compressionlevel" 45;
	setAttr ".forcepar" 0;
	setAttr ".metadatacount" 0;
createNode objectSet -n "set2";
	rename -uid "44F7C763-4BEA-8E85-0476-868CF6A0861D";
	setAttr ".ihi" 0;
createNode objectSet -n "set3";
	rename -uid "D3A87AE6-4C45-5DD7-3013-5D8998667DD8";
	setAttr ".ihi" 0;
createNode objectSet -n "set4";
	rename -uid "2D4BFB32-4583-2ABF-3169-B18BF8B0FB65";
	setAttr ".ihi" 0;
createNode objectSet -n "set5";
	rename -uid "A5A387E6-4962-2792-FFDC-6DBAB5CC7ABD";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "B59EB035-4417-F3A7-A13A-199E8698F325";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "E72A203A-4609-081C-788C-568944F0ABE5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "F10534B2-41FD-37DE-3538-9994C45A648B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "C21290E8-450B-4A28-4567-D49E19D7E227";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "DCC4D7D9-4604-1C5C-8D54-8CA687EBE5E8";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId2.id" "LampPostShape.iog.og[0].gid";
connectAttr "set5.mwc" "LampPostShape.iog.og[0].gco";
connectAttr "groupId3.id" "LampPostShape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "LampPostShape.iog.og[1].gco";
connectAttr "groupId4.id" "LampPostShape.iog.og[2].gid";
connectAttr "set4.mwc" "LampPostShape.iog.og[2].gco";
connectAttr "groupId5.id" "LampPostShape.iog.og[3].gid";
connectAttr "set2.mwc" "LampPostShape.iog.og[3].gco";
connectAttr "groupId6.id" "LampPostShape.iog.og[4].gid";
connectAttr "set3.mwc" "LampPostShape.iog.og[4].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr ":PxrPathTracer.msg" ":rmanGlobals.ri_integrator";
connectAttr "rmanDefaultBakeDisplay.msg" ":rmanBakingGlobals.displays[0]";
connectAttr ":bake_PxrPathTracer.msg" ":rmanBakingGlobals.ri_integrator";
connectAttr "diffuse.msg" "rmanDefaultBakeDisplay.displayChannels[0]";
connectAttr "a.msg" "rmanDefaultBakeDisplay.displayChannels[1]";
connectAttr "d_openexr.msg" "rmanDefaultBakeDisplay.displayType";
connectAttr "groupId5.msg" "set2.gn" -na;
connectAttr "LampPostShape.iog.og[3]" "set2.dsm" -na;
connectAttr "groupId6.msg" "set3.gn" -na;
connectAttr "LampPostShape.iog.og[4]" "set3.dsm" -na;
connectAttr "groupId4.msg" "set4.gn" -na;
connectAttr "LampPostShape.iog.og[2]" "set4.dsm" -na;
connectAttr "groupId2.msg" "set5.gn" -na;
connectAttr "LampPostShape.iog.og[0]" "set5.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanBakingGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":bake_PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr "d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr "parcel_Sandbag:d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr "LampPostShape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
// End of parcel_Lamp.ma
