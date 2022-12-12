//Maya ASCII 2023 scene
//Name: parcel_Sandbag.ma
//Last modified: Sun, Dec 11, 2022 08:29:51 PM
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
fileInfo "UUID" "DCF7C03C-4260-0A6A-6145-8C81FCE3739D";
createNode transform -s -n "persp";
	rename -uid "8831C396-426A-3038-2C3D-4CB6095E2CEF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.4613908295869269 13.759596378900037 52.609554835000843 ;
	setAttr ".r" -type "double3" -7.5383527283414127 1446.5999999991759 5.0027712273497143e-17 ;
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
createNode transform -n "parcel_Sandbag:Sandbag";
	rename -uid "BEAA521B-4EDA-D226-E9E8-E9B7AA281647";
	setAttr ".rp" -type "double3" 0 0 1.0534733974054689e-08 ;
	setAttr ".sp" -type "double3" 0 0 1.0534733974054689e-08 ;
createNode mesh -n "parcel_Sandbag:SandbagShape" -p "parcel_Sandbag:Sandbag";
	rename -uid "2424B256-4018-BFD1-89A9-42800C8A78D5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[45:59]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[60:89]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0:14]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[108:125]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[90:107]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[15:44]";
	setAttr ".pv" -type "double2" 0.84207713603915502 0.81672578210494717 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 162 ".uvst[0].uvsp[0:161]" -type "float2" 0.96657622 0.75956649
		 0.70528066 0.75996721 0.96655321 0.8738929 0.70533729 0.87369293 0.83185536 0.75940365
		 0.92727834 0.65915084 0.83194435 0.87407172 0.92722118 0.97429204 0.87823123 0.80005652
		 0.74912333 0.80000496 0.94374895 0.87830108 0.92347056 0.80132246 0.94377005 0.75514758
		 0.8783527 0.87767524 0.91536719 0.92680728 0.87833512 0.75575417 0.9154067 0.70663059
		 0.78843707 0.80146319 0.74884999 0.87688088 0.97713029 0.92240274 0.74877882 0.75674385
		 0.97716862 0.71105874 0.94939554 0.80014998 0.94138163 0.8000862 0.94237733 0.78394401
		 0.87826693 0.78395033 0.81521177 0.7996158 0.80736905 0.79964286 0.81427085 0.7826454
		 0.74901813 0.78382415 0.95397907 0.92515457 0.94493759 0.92587411 0.94400823 0.88747603
		 0.95401847 0.70829844 0.94497716 0.70757532 0.95030814 0.66568673 0.96764374 0.84711647
		 0.70871699 0.84802043 0.94979262 0.87800908 0.92446315 0.78517461 0.9498142 0.75544298
		 0.91771227 0.8781054 0.92104924 0.88471818 0.83205903 0.84834266 0.83884597 0.7561689
		 0.92512625 0.66714764 0.81428027 0.88735282 0.95076817 0.97987336 0.78951162 0.7855314
		 0.81415725 0.74615747 0.9508273 0.65357828 0.71119207 0.87687522 0.96946537 0.88231611
		 0.71113312 0.75678188 0.96949011 0.75114363 0.8917892 0.84893197 0.89270425 0.83318442
		 0.86365032 0.83316386 0.86471272 0.84886348 0.76250553 0.84922898 0.76293814 0.83333266
		 0.73530722 0.83333725 0.73561811 0.84925109 0.95030761 0.78391498 0.95029068 0.84953856
		 0.94937742 0.83330071 0.91589153 0.78442204 0.89180112 0.78449422 0.91589749 0.84900737
		 0.91595304 0.8324151 0.84066689 0.84889364 0.84054399 0.83244026 0.86471152 0.78457296
		 0.84061784 0.7845701 0.8070519 0.85081685 0.80745983 0.83388454 0.80698115 0.78270692
		 0.78304517 0.78506148 0.76247096 0.78437757 0.78309315 0.8485117 0.78225279 0.8323105
		 0.71512014 0.84854412 0.71606237 0.83230233 0.73558611 0.78438705 0.7150808 0.78511393
		 0.95347595 0.91128165 0.95047355 0.8868978 0.95691741 0.96733803 0.95546192 0.93918705
		 0.95550632 0.69426632 0.956972 0.66611576 0.95049876 0.74655432 0.95351028 0.72217119
		 0.94136775 0.83336037 0.94236445 0.84950507 0.89274865 0.80024594 0.91589713 0.80102319
		 0.87817192 0.8333717 0.87825704 0.84947777 0.86370081 0.80026829 0.8404687 0.80100954
		 0.81530154 0.83389223 0.81434178 0.85086429 0.76294839 0.80027437 0.7822336 0.8012706
		 0.74911845 0.83361793 0.7490508 0.84979993 0.73530918 0.80029887 0.71602929 0.80135137
		 0.94628733 0.93992668 0.95025343 0.96776462 0.9440484 0.91199297 0.94408268 0.72145617
		 0.94403315 0.74597323 0.94633198 0.69352317 0.96847045 0.80180675 0.70983911 0.80158752
		 0.96766794 0.78634858 0.70867729 0.78563976 0.96842468 0.83166796 0.70988035 0.83207512
		 0.92469096 0.87528974 0.92351985 0.83211398 0.92446804 0.84826344 0.92470658 0.75815004
		 0.89202774 0.87743056 0.91550326 0.91261125 0.86469972 0.87723106 0.91726905 0.94072729
		 0.83892673 0.87729669 0.9250719 0.96629453 0.83300054 0.83223855 0.83293319 0.80122948
		 0.83199888 0.78513229 0.86466289 0.75620615 0.91731387 0.69271159 0.8920244 0.75599259
		 0.91553718 0.72082639 0.91772485 0.75532979 0.92107058 0.74872071 0.80737674 0.88730705
		 0.95897442 0.97880673 0.79206622 0.8736667 0.97881871 0.96810985 0.78845227 0.8321082
		 0.78956455 0.84802753 0.80725271 0.74621636 0.95903319 0.65464783 0.79196668 0.75988764
		 0.97887361 0.66535193 0.76222128 0.87616324 0.97800255 0.9361459 0.78623921 0.87684041
		 0.97761542 0.96109855 0.73545372 0.87623465 0.9755801 0.90839452 0.73538977 0.75740629
		 0.97561342 0.72506642 0.76214182 0.75744522 0.97804594 0.69731581 0.78613865 0.75672591
		 0.97766793 0.67236274;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 2 ".clst";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".clst[1].clsn" -type "string" "SculptMaskColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 128 ".pt[0:127]" -type "float3"  -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 0 0 -9.3132257e-10 
		0 0 -9.3132257e-10 0 0;
	setAttr -s 128 ".vt[0:127]"  -0.62672347 0.13578406 0.47519085 0.62672347 0.13578406 0.47519082
		 -0.62672353 0.54354739 -0.48897046 0.62672353 0.54354739 -0.48897046 -0.6768235 0.67633247 1.6582207e-09
		 -0.16897264 0.090197891 -0.42142162 0.66542184 0.084962666 1.6582207e-09 -0.66542184 0.084962666 -2.6746624e-08
		 0.75862157 0.36078316 0.60148466 -0.16897264 0.54856592 0.43916824 -0.75862157 0.36078316 0.60148466
		 0.67682344 0.67633247 -2.6302798e-08 -0.18874273 0.74310738 -1.0768899e-08 -0.18874273 0.0053412914 -1.4312463e-08
		 -0.18541479 0.2818827 0.50718331 -0.18541479 0.36837101 0.51353925 -0.3678332 0.35950613 0.5186488
		 -0.36967075 0.75579166 -8.9935961e-09 -0.18541479 0.36837101 -0.51353925 -0.18541479 0.2818827 -0.50718331
		 -0.3678332 0.35950622 -0.51864886 -0.36967075 0.021315455 -1.6086766e-08 0.82420087 0.2858071 -2.7634275e-08
		 0.83577436 0.38544869 -4.2724349e-08 0.838736 0.36359125 0.48615709 -0.82420087 0.2858071 2.545872e-09
		 -0.83577436 0.38544869 1.7635946e-08 -0.838736 0.36359125 -0.48615706 0.34406626 0.10396153 0.433826
		 0.75862157 0.28235993 0.59959292 -0.34406626 0.54318917 0.45202851 -0.75862157 0.28235993 0.59959292
		 0.66559613 0.58593434 0.42531097 0.34406626 0.54318911 -0.45202845 -0.66559613 0.58593434 -0.425311
		 0.75862157 0.36078316 -0.60148466 -0.34406626 0.10396153 -0.43382609 -0.75862157 0.36078316 -0.60148466
		 0.66384065 0.11829019 0.41386819 -0.66384065 0.11829019 0.41386819 0.36336696 0.74258256 0.15423349
		 0.18541481 0.73126405 0.15868238 0.18541479 0.73126405 -0.15868241 0.36336702 0.74258256 -0.15423355
		 0.36336696 0.026327878 -0.14968908 0.18541481 0.010602862 -0.15372944 0.18541479 0.010602862 0.15372941
		 0.36336702 0.026327789 0.14968908 -0.36783323 0.27950609 0.51407456 0.3678332 0.27950609 0.51407456
		 0.18541481 0.2818827 0.50718325 -0.35249281 0.62009323 0.39537853 -0.36336696 0.74258256 0.15423349
		 0.35249284 0.62009317 0.39537859 0.17233336 0.60823077 0.38180792 0.35249281 0.62009323 -0.39537859
		 0.17233333 0.60823077 -0.38180786 -0.36336696 0.7425825 -0.15423356 -0.35249284 0.62009323 -0.39537859
		 0.36783323 0.27950606 -0.51407462 0.18541479 0.28188273 -0.50718331 -0.3678332 0.27950606 -0.51407456
		 -0.35249281 0.065178543 -0.37431335 -0.36336696 0.026327878 -0.14968908 0.35249284 0.065178603 -0.37431341
		 0.17233336 0.052456409 -0.36402279 0.35249281 0.065178603 0.37431341 0.17233333 0.052456409 0.36402267
		 -0.36336696 0.026327938 0.14968908 -0.35249284 0.065178603 0.37431341 0.81005704 0.2856544 0.16133346
		 0.83680177 0.28245941 0.48535269 0.83680177 0.28245944 -0.48535275 0.81005692 0.28565437 -0.16133347
		 -0.81005704 0.2856544 -0.16133347 -0.83680177 0.28245944 -0.48535275 -0.83680177 0.28245944 0.48535269
		 -0.81005692 0.28565437 0.16133347 0.18541482 0.36837101 0.51353925 0.36783323 0.35950613 0.5186488
		 -0.18541479 0.73126405 0.15868238 -0.17233336 0.60823077 0.3818078 0.18874277 0.74310738 3.0950716e-08
		 0.36967075 0.75579166 -1.2544202e-08 -0.18541479 0.73126405 -0.15868244 -0.17233333 0.60823077 -0.38180786
		 0.18541481 0.36837101 -0.51353925 0.3678332 0.35950622 -0.51864886 -0.18541479 0.010602862 -0.15372944
		 -0.17233336 0.052456409 -0.3640227 0.18874277 0.0053413212 -5.5866618e-08 0.36967075 0.021315455 -1.2544202e-08
		 -0.18541479 0.010602862 0.15372944 -0.17233333 0.052456409 0.36402267 0.82067263 0.38176119 -0.1613335
		 0.83873594 0.36359128 -0.48615706 0.82067263 0.38176125 0.16133346 -0.82067263 0.38176119 0.16133349
		 -0.83873594 0.36359128 0.48615703 -0.82067263 0.38176125 -0.16133347 -0.16897264 0.090197891 0.42142159
		 -0.34406632 0.10396153 0.43382597 0.16897264 0.090197891 0.42142159 0.62672353 0.54354739 0.48897046
		 0.16897264 0.54856592 0.43916824 0.34406626 0.54318911 0.45202851 -0.62672353 0.54354739 0.48897043
		 0.67057401 0.66131777 0.14808634 0.67057401 0.66131777 -0.14808637 0.66559613 0.58593434 -0.425311
		 0.16897264 0.54856592 -0.43916827 -0.16897264 0.54856592 -0.43916827 -0.34406626 0.54318911 -0.45202848
		 -0.67057401 0.66131777 -0.14808637 -0.67057401 0.66131777 0.14808637 -0.66559613 0.58593434 0.42531097
		 0.75862157 0.28235993 -0.59959292 0.62672347 0.13578406 -0.47519085 0.16897264 0.090197891 -0.42142162
		 0.34406626 0.10396153 -0.43382609 -0.75862157 0.28235993 -0.59959292 -0.62672347 0.13578406 -0.47519085
		 0.65746629 0.08905232 -0.14732894 0.66384059 0.11829016 -0.41386825 0.65746629 0.08905232 0.14732893
		 -0.65746629 0.08905232 0.14732893 -0.65746629 0.08905232 -0.14732894 -0.66384065 0.11829016 -0.41386825;
	setAttr -s 252 ".ed";
	setAttr ".ed[0:165]"  0 101 1 101 100 1 100 102 1 102 28 1 28 1 1 2 112 1
		 112 111 1 111 110 1 110 33 1 33 3 1 0 31 1 31 10 1 10 106 1 1 29 1 29 8 1 8 103 1
		 2 37 1 37 120 1 120 121 1 3 35 1 35 116 1 116 117 1 121 127 1 127 126 1 126 7 1 7 125 1
		 125 39 1 39 0 1 117 123 1 123 122 1 122 6 1 6 124 1 124 38 1 38 1 1 101 48 1 48 31 1
		 100 14 1 14 48 1 14 15 1 15 16 1 16 48 1 16 10 1 49 50 1 50 102 1 50 14 1 29 49 1
		 49 28 1 8 79 1 79 49 1 79 78 1 78 50 1 78 15 1 79 105 1 103 105 1 78 104 1 104 9 1
		 9 15 1 105 104 1 9 30 1 30 16 1 30 106 1 51 115 1 30 51 1 81 51 1 9 81 1 80 52 1
		 52 51 1 81 80 1 80 12 1 12 17 1 17 52 1 52 114 1 17 4 1 104 54 1 54 81 1 53 54 1
		 105 53 1 32 53 1 53 40 1 107 40 1 11 83 1 83 40 1 54 41 1 41 80 1 40 41 1 83 82 1
		 82 41 1 82 12 1 82 42 1 42 84 1 84 12 1 43 42 1 55 56 1 56 42 1 56 85 1 85 84 1 83 43 1
		 108 43 1 109 55 1 55 43 1 33 55 1 110 56 1 111 85 1 57 113 1 17 57 1 57 58 1 58 34 1
		 84 57 1 85 58 1 112 58 1 112 20 1 20 37 1 111 18 1 18 20 1 87 86 1 86 110 1 86 18 1
		 35 87 1 87 33 1 86 60 1 60 19 1 19 18 1 59 60 1 87 59 1 116 59 1 59 119 1 117 119 1
		 60 118 1 118 5 1 5 19 1 119 118 1 61 120 1 20 61 1 19 61 1 5 36 1 36 61 1 36 121 1
		 62 127 1 36 62 1 89 62 1 5 89 1 88 63 1 63 62 1 89 88 1 88 13 1 13 21 1 21 63 1 63 126 1
		 21 7 1 118 65 1 65 89 1 64 65 1 119 64 1 123 64 1 64 44 1 122 44 1 6 91 1 91 44 1
		 65 45 1 45 88 1 44 45 1 91 90 1 90 45 1 90 13 1 90 46 1 46 92 1;
	setAttr ".ed[166:251]" 92 13 1 47 46 1 66 67 1 67 46 1 67 93 1 93 92 1 91 47 1
		 124 47 1 38 66 1 66 47 1 28 66 1 102 67 1 100 93 1 68 125 1 21 68 1 68 69 1 69 39 1
		 92 68 1 93 69 1 101 69 1 38 71 1 71 29 1 6 22 1 22 70 1 70 124 1 70 71 1 22 23 1
		 23 96 1 96 70 1 96 24 1 24 71 1 24 8 1 72 73 1 73 122 1 73 22 1 116 72 1 72 123 1
		 35 95 1 95 72 1 95 94 1 94 73 1 94 23 1 95 109 1 3 109 1 94 108 1 108 11 1 11 23 1
		 109 108 1 96 107 1 107 32 1 32 24 1 11 107 1 32 103 1 127 75 1 75 120 1 7 25 1 25 74 1
		 74 126 1 74 75 1 25 26 1 26 99 1 99 74 1 99 27 1 27 75 1 27 37 1 76 77 1 77 125 1
		 77 25 1 31 76 1 76 39 1 10 98 1 98 76 1 98 97 1 97 77 1 97 26 1 98 115 1 106 115 1
		 97 114 1 114 4 1 4 26 1 115 114 1 99 113 1 113 34 1 34 27 1 4 113 1 34 2 1;
	setAttr -s 126 -ch 504 ".fc[0:125]" -type "polyFaces" 
		f 4 0 34 35 -11
		mu 0 4 0 117 63 40
		f 4 1 36 37 -35
		mu 0 4 117 115 22 63
		f 4 -38 38 39 40
		mu 0 4 63 22 23 24
		f 4 -36 -41 41 -12
		mu 0 4 40 63 24 12
		f 4 3 -47 42 43
		mu 0 4 119 36 64 65
		f 4 2 -44 44 -37
		mu 0 4 115 119 65 22
		f 4 4 13 45 46
		mu 0 4 36 2 38 64
		f 4 -46 14 47 48
		mu 0 4 64 38 10 94
		f 4 -43 -49 49 50
		mu 0 4 65 64 94 93
		f 4 -45 -51 51 -39
		mu 0 4 22 65 93 23
		f 4 -48 15 53 -53
		mu 0 4 94 10 121 123
		f 4 -52 54 55 56
		mu 0 4 23 93 122 11
		f 4 -50 52 57 -55
		mu 0 4 93 94 123 122
		f 4 -40 -57 58 59
		mu 0 4 24 23 11 39
		f 4 -42 -60 60 -13
		mu 0 4 12 24 39 124
		f 4 -61 62 61 -243
		mu 0 4 124 39 66 138
		f 4 -59 64 63 -63
		mu 0 4 39 11 96 66
		f 4 -64 67 65 66
		mu 0 4 66 96 95 67
		f 4 -66 68 69 70
		mu 0 4 67 95 8 25
		f 4 -62 -67 71 -247
		mu 0 4 138 66 67 136
		f 4 -72 -71 72 -245
		mu 0 4 136 67 25 15
		f 4 -56 73 74 -65
		mu 0 4 11 122 69 96
		f 4 -58 76 75 -74
		mu 0 4 122 123 68 69
		f 4 -54 -219 77 -77
		mu 0 4 123 121 41 68
		f 4 -78 -216 79 -79
		mu 0 4 68 41 125 55
		f 4 -80 -218 80 81
		mu 0 4 55 125 13 98
		f 4 -75 82 83 -68
		mu 0 4 96 69 56 95
		f 4 -76 78 84 -83
		mu 0 4 69 68 55 56
		f 4 -85 -82 85 86
		mu 0 4 56 55 98 97
		f 4 -84 -87 87 -69
		mu 0 4 95 56 97 8
		f 4 -88 88 89 90
		mu 0 4 8 97 57 99
		f 4 -86 96 91 -89
		mu 0 4 97 98 58 57
		f 4 -92 -100 92 93
		mu 0 4 57 58 70 71
		f 4 -90 -94 94 95
		mu 0 4 99 57 71 100
		f 4 -81 -212 97 -97
		mu 0 4 98 13 127 58
		f 4 -98 -214 98 99
		mu 0 4 58 127 129 70
		f 4 -99 -210 -10 100
		mu 0 4 70 129 6 43
		f 4 -93 -101 -9 101
		mu 0 4 71 70 43 131
		f 4 -95 -102 -8 102
		mu 0 4 100 71 131 132
		f 4 -73 104 103 -251
		mu 0 4 15 25 72 134
		f 4 -104 105 106 -249
		mu 0 4 134 72 73 44
		f 4 -70 -91 107 -105
		mu 0 4 25 8 99 72
		f 4 -108 -96 108 -106
		mu 0 4 72 99 100 73
		f 4 -109 -103 -7 109
		mu 0 4 73 100 132 133
		f 4 -107 -110 -6 -252
		mu 0 4 44 73 133 4
		f 4 5 110 111 -17
		mu 0 4 4 133 28 49
		f 4 6 112 113 -111
		mu 0 4 133 132 26 28
		f 4 8 -119 114 115
		mu 0 4 131 43 102 101
		f 4 7 -116 116 -113
		mu 0 4 132 131 101 26
		f 4 9 19 117 118
		mu 0 4 43 6 46 102
		f 4 -117 119 120 121
		mu 0 4 26 101 75 27
		f 4 -115 123 122 -120
		mu 0 4 101 102 74 75
		f 4 -118 20 124 -124
		mu 0 4 102 46 140 74
		f 4 -125 21 126 -126
		mu 0 4 74 140 142 145
		f 4 -121 127 128 129
		mu 0 4 27 75 144 17
		f 4 -123 125 130 -128
		mu 0 4 75 74 145 144
		f 4 -112 132 131 -18
		mu 0 4 49 28 76 146
		f 4 -114 -122 133 -133
		mu 0 4 28 26 27 76
		f 4 -134 -130 134 135
		mu 0 4 76 27 17 48
		f 4 -132 -136 136 -19
		mu 0 4 146 76 48 148
		f 4 -137 138 137 -23
		mu 0 4 148 48 77 160
		f 4 -135 140 139 -139
		mu 0 4 48 17 104 77
		f 4 -140 143 141 142
		mu 0 4 77 104 103 78
		f 4 -142 144 145 146
		mu 0 4 78 103 9 29
		f 4 -138 -143 147 -24
		mu 0 4 160 77 78 158
		f 4 -148 -147 148 -25
		mu 0 4 158 78 29 20
		f 4 -129 149 150 -141
		mu 0 4 17 144 80 104
		f 4 -131 152 151 -150
		mu 0 4 144 145 79 80
		f 4 -127 28 153 -153
		mu 0 4 145 142 152 79
		f 4 -154 29 155 -155
		mu 0 4 79 152 150 59
		f 4 -156 30 156 157
		mu 0 4 59 150 18 106
		f 4 -151 158 159 -144
		mu 0 4 104 80 60 103
		f 4 -152 154 160 -159
		mu 0 4 80 79 59 60
		f 4 -161 -158 161 162
		mu 0 4 60 59 106 105
		f 4 -160 -163 163 -145
		mu 0 4 103 60 105 9
		f 4 -164 164 165 166
		mu 0 4 9 105 61 107
		f 4 -162 172 167 -165
		mu 0 4 105 106 62 61
		f 4 -168 -176 168 169
		mu 0 4 61 62 81 82
		f 4 -166 -170 170 171
		mu 0 4 107 61 82 108
		f 4 -157 31 173 -173
		mu 0 4 106 18 154 62
		f 4 -174 32 174 175
		mu 0 4 62 154 51 81
		f 4 -175 33 -5 176
		mu 0 4 81 51 3 37
		f 4 -169 -177 -4 177
		mu 0 4 82 81 37 120
		f 4 -171 -178 -3 178
		mu 0 4 108 82 120 116
		f 4 -149 180 179 -26
		mu 0 4 20 29 83 156
		f 4 -180 181 182 -27
		mu 0 4 156 83 84 53
		f 4 -146 -167 183 -181
		mu 0 4 29 9 107 83
		f 4 -184 -172 184 -182
		mu 0 4 83 107 108 84
		f 4 -185 -179 -2 185
		mu 0 4 84 108 116 118
		f 4 -183 -186 -1 -28
		mu 0 4 53 84 118 1
		f 4 -34 186 187 -14
		mu 0 4 2 52 86 38
		f 4 -32 188 189 190
		mu 0 4 155 19 30 85
		f 4 -33 -191 191 -187
		mu 0 4 52 155 85 86
		f 4 -190 192 193 194
		mu 0 4 85 30 31 111
		f 4 -192 -195 195 196
		mu 0 4 86 85 111 32
		f 4 -188 -197 197 -15
		mu 0 4 38 86 32 10
		f 4 -30 -203 198 199
		mu 0 4 151 153 87 88
		f 4 -31 -200 200 -189
		mu 0 4 19 151 88 30
		f 4 -29 -22 201 202
		mu 0 4 153 143 141 87
		f 4 -202 -21 203 204
		mu 0 4 87 141 47 110
		f 4 -199 -205 205 206
		mu 0 4 88 87 110 109
		f 4 -201 -207 207 -193
		mu 0 4 30 88 109 31
		f 4 -204 -20 209 -209
		mu 0 4 110 47 7 130
		f 4 -208 210 211 212
		mu 0 4 31 109 128 14
		f 4 -206 208 213 -211
		mu 0 4 109 110 130 128
		f 4 -196 214 215 216
		mu 0 4 32 111 126 42
		f 4 -194 -213 217 -215
		mu 0 4 111 31 14 126
		f 4 -198 -217 218 -16
		mu 0 4 10 32 42 121
		f 4 22 219 220 18
		mu 0 4 149 161 90 147
		f 4 24 221 222 223
		mu 0 4 159 21 33 89
		f 4 23 -224 224 -220
		mu 0 4 161 159 89 90
		f 4 -223 225 226 227
		mu 0 4 89 33 34 114
		f 4 -225 -228 228 229
		mu 0 4 90 89 114 35
		f 4 -221 -230 230 17
		mu 0 4 147 90 35 50
		f 4 26 -236 231 232
		mu 0 4 157 54 91 92
		f 4 25 -233 233 -222
		mu 0 4 21 157 92 33
		f 4 27 10 234 235
		mu 0 4 54 0 40 91
		f 4 -235 11 236 237
		mu 0 4 91 40 12 113
		f 4 -232 -238 238 239
		mu 0 4 92 91 113 112
		f 4 -234 -240 240 -226
		mu 0 4 33 92 112 34
		f 4 -237 12 242 -242
		mu 0 4 113 12 124 139
		f 4 -241 243 244 245
		mu 0 4 34 112 137 16
		f 4 -239 241 246 -244
		mu 0 4 112 113 139 137
		f 4 -229 247 248 249
		mu 0 4 35 114 135 45
		f 4 -227 -246 250 -248
		mu 0 4 114 34 16 135
		f 4 -231 -250 251 16
		mu 0 4 50 35 45 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F79DF48D-451E-8E56-BE20-A09B4D4C6492";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8C257E41-4934-9E09-D12E-E3B1F07C9837";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "526F5AD9-4D7A-EB63-D7E5-C78FDAE476D7";
createNode displayLayerManager -n "layerManager";
	rename -uid "A8864E99-4606-D97A-44F9-9D8A75046928";
createNode displayLayer -n "defaultLayer";
	rename -uid "F96FD805-4E72-7D47-E90C-A093B75C7A0F";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "94DF3AAD-4099-E2AB-EDCC-508770EF9956";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":rmanBakingGlobals.msg" ":defaultRenderingList1.r" -na;
connectAttr ":bake_PxrPathTracer.msg" ":defaultRenderingList1.r" -na;
connectAttr "d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr "parcel_Sandbag:d_openexr.msg" ":defaultRenderingList1.r" -na;
connectAttr "parcel_Sandbag:SandbagShape.iog" ":initialShadingGroup.dsm" -na;
// End of parcel_Sandbag.ma
