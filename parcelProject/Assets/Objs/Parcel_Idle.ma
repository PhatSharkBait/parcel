//Maya ASCII 2023 scene
//Name: Parcel_Idle.ma
//Last modified: Mon, Dec 12, 2022 04:00:52 AM
//Codeset: 1252
file -rdi 1 -ns "parcelMailbox" -rfn "parcelMailboxRN" -op "v=0;p=17;f=0" -typ
		 "mayaAscii" "E:/Projects/Fall2022/Maya//Scenes/parcelMailbox.ma";
file -r -ns "parcelMailbox" -dr 1 -rfn "parcelMailboxRN" -op "v=0;p=17;f=0" -typ
		 "mayaAscii" "E:/Projects/Fall2022/Maya//Scenes/parcelMailbox.ma";
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "rmanVolumeAggregateSet" "rfm_volume_aggregate_set.py" "1.0";
requires -nodeType "d_openexr" -nodeType "PxrPathTracer" -nodeType "rmanBakingGlobals"
		 -nodeType "rmanDisplay" -nodeType "rmanDisplayChannel" -nodeType "rmanGlobals" "RenderMan_for_Maya.py" "24.4 @ 2226585";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "40DC70F8-4082-0B2D-CFFE-40A44B0E7462";
createNode transform -s -n "persp";
	rename -uid "4337C239-4118-A363-F305-C0AB3A041257";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 460.46745635856558 167.6026328727213 42.172871505849486 ;
	setAttr ".r" -type "double3" -13.200000000000662 -1000.7999999999978 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "91422429-4DD4-33C8-1001-39A9A80D161A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 440.83267139608483;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 21.951963675696334 33.998200778676448 6.8423127634924654 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dgm" no;
createNode transform -s -n "top";
	rename -uid "4682D149-48EE-7C9F-BB24-BF9589241573";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CDC69AB2-462B-38EB-3906-949D9063ABF7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 53.591523048393988;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D5955C81-4510-5886-3A6C-E5BB3972618A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.4234685780227716 51.957044350718391 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B050C9F5-4771-D62F-4E9E-2F84214ECC1C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 613.35432168390764;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F1B40FA2-41A7-B158-96B2-89B1465025DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8A6CA5EA-4382-49B4-D0EC-50BF1F48F039";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C43B67A7-4422-F7A2-107E-C396B9A1E2BC";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "34BA2491-44A7-60D4-D102-86B8EBEB8DD2";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "41F329B3-462D-B0D5-70D4-9E8D62DE62E7";
createNode displayLayerManager -n "layerManager";
	rename -uid "E56A4426-4B4C-49DF-B3CD-DF830B083536";
createNode displayLayer -n "defaultLayer";
	rename -uid "2C336748-4811-7AF1-4830-6BA51367922A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F24A9596-4329-3D19-1D78-819E7A12FF7E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B14CE794-42AD-ABFA-A13F-EF9E4BACD1BE";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "3988AB84-4ED4-C755-334E-6A9201729CB8";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".AA_samples" 8;
	setAttr ".autotx" no;
	setAttr ".rndrdvc" 1;
	setAttr ".version" -type "string" "5.2.0";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "266ADA09-4BFC-16F3-ACED-D88650714E36";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "C043576F-4B98-CFA4-818D-B98F67E226CA";
	setAttr ".color_management" 1;
	setAttr ".ai_translator" -type "string" "png";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "01555B89-4F3E-DB2B-83FA-72AD6E319491";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "parcelMailboxRN";
	rename -uid "91360E1A-4441-F028-F546-F68EC624F6A5";
	setAttr -s 381 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"parcelMailboxRN"
		"parcelMailboxRN" 3
		2 "|parcelMailbox:bigdaddy" "visibility" " 0"
		2 "|parcelMailbox:back" "visibility" " 0"
		2 "|parcelMailbox:Lights" "visibility" " 0"
		"parcelMailboxRN" 388
		2 "|parcelMailbox:GEO|parcelMailbox:Mailbox" "visibility" " 1"
		2 "|parcelMailbox:GEO|parcelMailbox:Mouth" "visibility" " 1"
		2 "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl" 
		"Constrain_R_IK" " -k 1"
		2 "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl" 
		"rotateZ" " -av"
		2 "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl|parcelMailbox:R_IK_Handle" 
		"translate" " -type \"double3\" -7.4752706407110728e-06 5.9632005999787907e-09 3.5946601730785233e-05"
		
		2 "parcelMailbox:aiStandardSurface2" "baseColor" " -type \"float3\" 0 0.0045769690000000002 0.017000001000000001"
		
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[1]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[2]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[3]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[4]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[5]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[6]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[7]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[8]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[9]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[10]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.Constrain_R_IK" 
		"parcelMailboxRN.placeHolderList[11]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[12]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[13]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[14]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[15]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[16]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[17]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[18]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[19]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[20]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[21]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[22]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[23]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[24]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[25]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[26]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[27]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[28]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[29]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[30]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[31]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:R_IKFK_switch_grp|parcelMailbox:R_IKFK_Switch.R_Leg_IKFK" 
		"parcelMailboxRN.placeHolderList[32]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:R_IKFK_switch_grp|parcelMailbox:R_IKFK_Switch.R_Arm_IKFK" 
		"parcelMailboxRN.placeHolderList[33]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:R_IKFK_switch_grp|parcelMailbox:R_IKFK_Switch.visibility" 
		"parcelMailboxRN.placeHolderList[34]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:L_IKFK_switch_grp|parcelMailbox:L_IKFK_Switch.L_Leg_IKFK" 
		"parcelMailboxRN.placeHolderList[35]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:L_IKFK_switch_grp|parcelMailbox:L_IKFK_Switch.L_Arm_IKFK" 
		"parcelMailboxRN.placeHolderList[36]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:L_IKFK_switch_grp|parcelMailbox:L_IKFK_Switch.visibility" 
		"parcelMailboxRN.placeHolderList[37]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[38]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[39]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[40]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[41]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[42]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[43]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[44]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[45]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[46]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[47]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[48]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[49]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[50]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[51]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[52]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[53]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[54]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateX" 
		"parcelMailboxRN.placeHolderList[55]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateY" 
		"parcelMailboxRN.placeHolderList[56]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateZ" 
		"parcelMailboxRN.placeHolderList[57]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.visibility" 
		"parcelMailboxRN.placeHolderList[58]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateX" 
		"parcelMailboxRN.placeHolderList[59]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateY" 
		"parcelMailboxRN.placeHolderList[60]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateZ" 
		"parcelMailboxRN.placeHolderList[61]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleX" 
		"parcelMailboxRN.placeHolderList[62]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleY" 
		"parcelMailboxRN.placeHolderList[63]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleZ" 
		"parcelMailboxRN.placeHolderList[64]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[65]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[66]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[67]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[68]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[69]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[70]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[71]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[72]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[73]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[74]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[75]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[76]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[77]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[78]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[79]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[80]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[81]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateX" 
		"parcelMailboxRN.placeHolderList[82]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateY" 
		"parcelMailboxRN.placeHolderList[83]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateZ" 
		"parcelMailboxRN.placeHolderList[84]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateX" 
		"parcelMailboxRN.placeHolderList[85]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateY" 
		"parcelMailboxRN.placeHolderList[86]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateZ" 
		"parcelMailboxRN.placeHolderList[87]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.visibility" 
		"parcelMailboxRN.placeHolderList[88]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleX" 
		"parcelMailboxRN.placeHolderList[89]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleY" 
		"parcelMailboxRN.placeHolderList[90]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleZ" 
		"parcelMailboxRN.placeHolderList[91]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[92]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[93]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[94]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[95]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[96]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[97]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[98]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[99]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[100]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[101]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.translateX" 
		"parcelMailboxRN.placeHolderList[102]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.translateY" 
		"parcelMailboxRN.placeHolderList[103]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.translateZ" 
		"parcelMailboxRN.placeHolderList[104]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.visibility" 
		"parcelMailboxRN.placeHolderList[105]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.rotateX" 
		"parcelMailboxRN.placeHolderList[106]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.rotateY" 
		"parcelMailboxRN.placeHolderList[107]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.rotateZ" 
		"parcelMailboxRN.placeHolderList[108]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.scaleX" 
		"parcelMailboxRN.placeHolderList[109]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.scaleY" 
		"parcelMailboxRN.placeHolderList[110]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_Knee_IK_point_grp|parcelMailbox:L_Knee_IK_point.scaleZ" 
		"parcelMailboxRN.placeHolderList[111]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[112]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[113]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[114]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[115]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[116]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[117]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[118]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[119]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[120]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[121]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.translateX" 
		"parcelMailboxRN.placeHolderList[122]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.translateY" 
		"parcelMailboxRN.placeHolderList[123]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.translateZ" 
		"parcelMailboxRN.placeHolderList[124]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.rotateX" 
		"parcelMailboxRN.placeHolderList[125]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.rotateY" 
		"parcelMailboxRN.placeHolderList[126]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.rotateZ" 
		"parcelMailboxRN.placeHolderList[127]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.visibility" 
		"parcelMailboxRN.placeHolderList[128]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.scaleX" 
		"parcelMailboxRN.placeHolderList[129]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.scaleY" 
		"parcelMailboxRN.placeHolderList[130]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_Knee_IK_point_grp|parcelMailbox:R_Knee_IK_point.scaleZ" 
		"parcelMailboxRN.placeHolderList[131]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[132]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[133]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[134]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[135]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[136]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[137]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[138]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[139]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[140]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:CONTROLS|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[141]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[142]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[143]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[144]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[145]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[146]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[147]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[148]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[149]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[150]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[151]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[152]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[153]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[154]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[155]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[156]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[157]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[158]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[159]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[160]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Middle2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[161]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[162]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[163]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[164]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[165]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[166]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[167]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[168]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[169]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[170]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[171]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[172]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[173]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[174]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[175]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[176]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[177]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[178]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[179]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[180]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Pinkie2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[181]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[182]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[183]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[184]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[185]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[186]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[187]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[188]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[189]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[190]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[191]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[192]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[193]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[194]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[195]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[196]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[197]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[198]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[199]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[200]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:R_Clavicle_jnt|parcelMailbox:R_Arm_Shoulder_jnt_RK|parcelMailbox:R_Arm_Elbow_jnt_RK|parcelMailbox:R_Arm_Wrist_jnt_RK|parcelMailbox:R_Arm_Palm_jnt_RK|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Arm_Thumb2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[201]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[202]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[203]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[204]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[205]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[206]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[207]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[208]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[209]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[210]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[211]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[212]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[213]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[214]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[215]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[216]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[217]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[218]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[219]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[220]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[221]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[222]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[223]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[224]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[225]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[226]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[227]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[228]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[229]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[230]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[231]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[232]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[233]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[234]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[235]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[236]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[237]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[238]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[239]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[240]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[241]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[242]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[243]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[244]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[245]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[246]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[247]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[248]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[249]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[250]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[251]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[252]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[253]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[254]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[255]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[256]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[257]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[258]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[259]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[260]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:Neck_jnt|parcelMailbox:L_Clavicle_jnt|parcelMailbox:L_Arm_Shoulder_jnt_RK|parcelMailbox:L_Arm_Elbow_jnt_RK|parcelMailbox:L_Arm_Wrist_jnt_RK|parcelMailbox:L_Arm_Palm_jnt_RK|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[261]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[262]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[263]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[264]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[265]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[266]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[267]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[268]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[269]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[270]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[271]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[272]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[273]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[274]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[275]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[276]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[277]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[278]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[279]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[280]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle1_jnt_RK_ctrl|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Middle2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[281]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[282]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[283]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[284]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[285]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[286]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[287]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[288]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[289]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[290]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[291]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[292]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[293]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[294]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[295]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[296]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[297]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[298]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[299]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[300]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie1_jnt_RK_ctrl|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Pinkie2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[301]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[302]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[303]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[304]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[305]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[306]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[307]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[308]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[309]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[310]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[311]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[312]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[313]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[314]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[315]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[316]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[317]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[318]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[319]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[320]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:R_Leg_Hip_jnt_RK|parcelMailbox:R_Leg_Knee_jnt_RK|parcelMailbox:R_Leg_Ankle1_jnt_RK|parcelMailbox:R_Leg_Ankle2_jnt_RK|parcelMailbox:R_Leg_ball_jnt|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb1_jnt_RK_ctrl|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:R_Leg_Thumb2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[321]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[322]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[323]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[324]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[325]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[326]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[327]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[328]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[329]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[330]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[331]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[332]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[333]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[334]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[335]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[336]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[337]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[338]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[339]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[340]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie1_jnt_RK_ctrl|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Pinkie2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[341]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[342]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[343]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[344]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[345]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[346]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[347]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[348]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[349]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[350]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[351]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[352]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[353]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[354]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[355]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[356]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[357]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[358]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[359]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[360]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle1_jnt_RK_ctrl|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Middle2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[361]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[362]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[363]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[364]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[365]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[366]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[367]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[368]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[369]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[370]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[371]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[372]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[373]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[374]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[375]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[376]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[377]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[378]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[379]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[380]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:JOINTS|parcelMailbox:Root_jnt|parcelMailbox:COG_jnt|parcelMailbox:L_Leg_Hip_jnt_RK|parcelMailbox:L_Leg_Knee_jnt_RK|parcelMailbox:L_Leg_Ankle1_jnt_RK|parcelMailbox:L_Leg_Ankle2_jnt_RK|parcelMailbox:L_Leg_ball_jnt|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb1_jnt_RK_ctrl|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl_grp|parcelMailbox:L_Arm_Thumb2_jnt_RK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[381]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode ikSpringSolver -s -n "ikSpringSolver";
	rename -uid "7608DEF1-4DCE-F0EF-29F8-EB9A9AC33E05";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DF8DD075-4B97-9606-8C82-BE9F96E2A0E4";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 2011\n            -height 1082\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2011\\n    -height 1082\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 2011\\n    -height 1082\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.16404200000000002 -size 0.393701 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9306D78C-4B35-278D-3750-1EAC4E289E88";
	setAttr ".b" -type "string" "playbackOptions -min 32 -max 201 -ast 1 -aet 201 ";
	setAttr ".st" 6;
createNode animCurveTL -n "R_IK_ctrl_translateX";
	rename -uid "FED782E3-4418-06BF-1A93-559486A0F815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 24.953098866807427 12 -12.298313012926632
		 18 -10.036492121743569 24 24.953098866807427 31 24.953098866807427 32 0 200 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "R_IK_ctrl_translateY";
	rename -uid "A2D2631A-42D1-7DB9-45A9-869CD4E5DA9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 16.344008361546788 12 -8.0552612639052743
		 18 12.181298764728631 24 16.344008361546788 31 16.344008361546788 32 0 200 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "R_IK_ctrl_translateZ";
	rename -uid "1B10EB3C-440E-1E91-9D19-D596D2EC4A86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 5.1960650145867255 12 -2.5609177571892019
		 18 -2.0900302556316777 24 5.1960650145867255 31 5.1960650145867255 32 0 200 0;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "R_IK_ctrl_visibility";
	rename -uid "E35CD87C-4F54-6303-7772-6797D3F97BA3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 12 1 18 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 1 9 9 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
createNode animCurveTA -n "R_IK_ctrl_rotateX";
	rename -uid "021780E8-42EF-ECC9-0B34-49A1F601742B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -7.9513867036587939e-16 12 -7.9513867036587939e-16
		 18 0 24 -7.9513867036587939e-16 31 -7.9513867036587939e-16 32 21.962664649149691
		 200 21.962664649149691;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "R_IK_ctrl_rotateY";
	rename -uid "1676321D-49D3-D8E4-DFC1-D89846919C57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 4.3794226550966445e-32 12 4.3794226550966445e-32
		 18 0 24 4.3794226550966445e-32 31 4.3794226550966445e-32 32 -33.069508419646958 200 -33.069508419646958;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "R_IK_ctrl_rotateZ";
	rename -uid "A47FEB0E-49CE-7060-50A9-E1957BFB6169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 6.3114131960291676e-15 12 6.3114131960291676e-15
		 18 -27.590852562651417 24 6.3114131960291676e-15 31 6.3114131960291676e-15 32 -2.1003304367716629
		 200 -2.1003304367716629;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "R_IK_ctrl_scaleX";
	rename -uid "DAC55220-4D53-DAD0-C962-829CE8CFB4A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 12 1 18 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "R_IK_ctrl_scaleY";
	rename -uid "99BBB96D-4BD2-E5CC-79D5-F3ACC401825C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 12 1 18 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "R_IK_ctrl_scaleZ";
	rename -uid "E8AD3F9C-4B72-091A-6181-EEAC4B27BE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 12 1 18 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "L_IK_ctrl_translateX";
	rename -uid "5284E85B-4A8B-C030-8DE2-7CBB65CC54FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -12.120076592449349 6 -9.2489192504323405
		 12 23.170734662035503 24 -12.120076592449349 31 -12.120076592449349 32 8.6865276568015215
		 200 8.6865276568015215;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "L_IK_ctrl_translateY";
	rename -uid "A3738898-4F52-A4A3-60EE-6E8A30248679";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -7.9385183470370322 6 16.550936445700938
		 12 15.17657919286491 24 -7.9385183470370322 31 -7.9385183470370322 32 5.6895811383340229
		 200 5.6895811383340229;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "L_IK_ctrl_translateZ";
	rename -uid "D22A95C7-4D25-43B2-9F43-CC9A7CBE93C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -2.5238030070849864 6 -1.926051699366095
		 12 4.8249175135448183 24 -2.5238030070849864 31 -2.5238030070849864 32 1.8088239339197227
		 200 1.8088239339197227;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "L_IK_ctrl_visibility";
	rename -uid "0DAAEBAC-4351-8EAC-9F90-F4B6437C4759";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 6 1 12 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[0:6]"  9 9 9 1 9 9 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
createNode animCurveTA -n "L_IK_ctrl_rotateX";
	rename -uid "4D597BB4-4166-B02B-1D06-718E7A4C9C09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 0 12 0 24 0 31 0 32 20.547494649424685
		 200 20.547494649424685;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "L_IK_ctrl_rotateY";
	rename -uid "273EFCDB-4027-CB83-BB2C-8DB0D3C05DB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 0 12 0 24 0 31 0 32 -31.29099955868179
		 200 -31.29099955868179;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTA -n "L_IK_ctrl_rotateZ";
	rename -uid "F70DE7C4-468A-DA92-1341-AD91AC1A1A6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 6 -22.264770295127217 12 0 24 0 31 0
		 32 -1.5839456943414738 200 -1.5839456943414738;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "L_IK_ctrl_scaleX";
	rename -uid "E3F5F283-43B5-DC44-B932-8CAD8841372E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 6 1 12 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "L_IK_ctrl_scaleY";
	rename -uid "ECDECC2D-45EC-08D9-0953-2EB40430BAF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 6 1 12 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTU -n "L_IK_ctrl_scaleZ";
	rename -uid "4AE8CF1A-44AD-F98B-67D7-7A8D530A5BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 6 1 12 1 24 1 31 1 32 1 200 1;
	setAttr -s 7 ".kit[3:6]"  1 18 18 1;
	setAttr -s 7 ".kot[3:6]"  1 18 18 1;
	setAttr -s 7 ".kix[3:6]"  1 1 1 1;
	setAttr -s 7 ".kiy[3:6]"  0 0 0 0;
	setAttr -s 7 ".kox[3:6]"  1 1 1 1;
	setAttr -s 7 ".koy[3:6]"  0 0 0 0;
createNode animCurveTL -n "COG_ctrl_translateX";
	rename -uid "0C7544B7-4801-301B-6D08-C1A25CD2E4A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0.078650994768507745 58 2.8089640988752649 74 0 81 0 95 0 111 0 131 0 133 0
		 156 0 172 0 182 0 193 0 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 0.88909940197391535 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0.45771416125091213 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 0.88909940197391535 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0.45771416125091213 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_ctrl_translateY";
	rename -uid "A989B12F-423A-28B4-198D-238D62430BFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 -6.5670550635049949 9 1.6409705559242553
		 12 0 15 -6.3825217810473447 21 1.6409705559242553 24 0 31 0 32 0 38 -5.5256601806227366
		 49 -0.16682101785057057 58 -5.9578934946632103 74 0 81 -2.3891086778694302 95 -1.0259927964329023
		 111 -3.4116413000936632 131 0.17536155573404244 133 0 156 0 172 0.8094665173324691
		 182 -2.588758170836158 193 -0.36090503112658556 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  0.031143387601020152 1 1 0.031143387601020152 
		1 1 0.031143387601020152 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.27827122357710382 1;
	setAttr -s 23 ".kiy[0:22]"  -0.99951492705648615 0 0 -0.99951492705648615 
		0 0 -0.99951492705648615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.96050253832506949 0;
	setAttr -s 23 ".kox[0:22]"  0.031143387601020152 1 1 0.031143387601020152 
		1 1 0.031143387601020152 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.27827122357710388 1;
	setAttr -s 23 ".koy[0:22]"  -0.99951492705648615 0 0 -0.99951492705648615 
		0 0 -0.99951492705648615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.96050253832506949 0;
createNode animCurveTL -n "COG_ctrl_translateZ";
	rename -uid "8322CF55-4793-5281-CE2F-BCBF823665A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0 58 0 74 0 81 0 95 0 111 0 131 0 133 0 156 0 172 0 182 0 193 0 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTU -n "COG_ctrl_visibility";
	rename -uid "CF0522FA-426A-F89F-4685-5DBCCA3C203A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1 31 1 32 1
		 38 1 49 1 58 1 74 1 81 1 95 1 111 1 131 1 133 1 156 1 172 1 182 1 193 1 200 1;
	setAttr -s 23 ".kit[0:22]"  1 9 1 9 9 1 1 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateX";
	rename -uid "BAF2EC2D-4A82-7968-8F9B-07811DD6D341";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0 58 0 74 0 81 0 95 0 111 0 131 0 133 0 156 0 172 5.2027061812203051e-19
		 182 7.7651803533566593e-19 193 2.6096971009223481e-19 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateY";
	rename -uid "B287395B-47EC-C81B-AF69-E696E4665FB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0.10742096624639341 58 3.8364630802283206 74 1.8000003335266603 81 1.8000003335266603
		 95 1.8000003335266603 111 1.8000003335266603 131 1.8000003335266603 133 1.8000003335266603
		 156 1.3092783120429059 172 0.71722747397471664 182 0.36116956687398644 193 0.078767666553630988
		 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 0.9999247106717406 
		1 1 1 1 1 1 1 0.99993238412351559 0.99988336179063519 0.99991891828312929 0.99996468156094909 
		1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0.01227081855606744 
		0 0 0 0 0 0 0 -0.011628722245455057 -0.015272943863509487 -0.012734082593450364 -0.008404500622276807 
		0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 0.9999247106717406 
		1 1 1 1 1 1 1 0.99993238412351559 0.99988336179063519 0.99991891828312918 0.99996468156094886 
		1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0.01227081855606744 
		0 0 0 0 0 0 0 -0.011628722245455057 -0.015272943863509485 -0.012734082593450366 -0.0084045006222768052 
		0;
createNode animCurveTA -n "COG_ctrl_rotateZ";
	rename -uid "CB68AAB4-4B32-2946-0BDA-A3A6CBFF5275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0 58 0 74 0 81 0 95 0 111 0 131 0 133 0 156 0 172 -1.2269088245767208 182 -1.8311947605944654
		 193 -0.61542210747002224 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99956510319278613 
		1 0.99909326518892028 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.029489056939728465 
		0 0.042575197640666911 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99956510319278635 
		1 0.99909326518892017 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.029489056939728468 
		0 0.042575197640666911 0;
createNode animCurveTU -n "COG_ctrl_scaleX";
	rename -uid "5444932C-4A54-6000-2484-2DA486D622EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1 31 1 32 1
		 38 1 49 1 58 1 74 1 81 1 95 1 111 1 131 1 133 1 156 1 172 1 182 1 193 1 200 1;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleY";
	rename -uid "38658963-470D-DBCD-74F2-F995860F9D30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1 31 1 32 1
		 38 1 49 1 58 1 74 1 81 1 95 1 111 1 131 1 133 1 156 1 172 1 182 1 193 1 200 1;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleZ";
	rename -uid "8E080D51-4E42-D67F-783B-FC8723CFD047";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1 31 1 32 1
		 38 1 49 1 58 1 74 1 81 1 95 1 111 1 131 1 133 1 156 1 172 1 182 1 193 1 200 1;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTU -n "COG_ctrl_Constrain_R_IK";
	rename -uid "2B2EABC6-411D-2B18-FCCA-B095288F44BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0 31 0 32 0
		 38 0 49 0 58 0 74 0 81 0 95 0 111 0 131 0 133 0 156 0 172 0 182 0 193 0 200 0;
	setAttr -s 23 ".kit[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 18 1 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateX";
	rename -uid "509CADA2-4E75-D611-A7D3-EF9A00B59A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 22.365910106184039 14 3.4905358287691231
		 26 22.365910106184039 31 22.365910106184039 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateY";
	rename -uid "E2AFF412-4F82-3DAB-4B4F-4EB9FE48027C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 36.473226593260186 14 18.96265232663491
		 26 36.473226593260186 31 36.473226593260186 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateZ";
	rename -uid "4AE1701E-4162-96D9-DC9D-83BE4A11FC6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 63.293549186827534 14 20.40559502218742
		 26 63.293549186827534 31 63.293549186827534 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_visibility";
	rename -uid "B35F4A0D-491F-B850-C207-92AEE6AD673C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 14 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateX";
	rename -uid "5C17BE25-4F6E-D039-CE7C-4EA678CCBB22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 19.132967665965992 14 5.3190336299724237
		 26 19.132967665965992 31 19.132967665965992 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateY";
	rename -uid "BEB4CAAB-4D30-F427-9DF0-56AC27C0E7E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 15.142574612678715 14 12.567804010640261
		 26 15.142574612678715 31 15.142574612678715 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateZ";
	rename -uid "AE72AA98-44B7-F92C-DB8E-B98A7D777EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 -5.4347147974246983e-15 14 14.350637377046798
		 26 -5.4347147974246983e-15 31 -5.4347147974246983e-15 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleX";
	rename -uid "0B470162-4324-C6CF-E12E-91ABDD95A11A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 14 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleY";
	rename -uid "9110E2C8-49D1-C475-89DA-F8A8E4BA46B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 14 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleZ";
	rename -uid "712F99EE-4B93-7A5D-6D23-1EBF641D9A0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 14 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateX";
	rename -uid "C0129541-4ACF-749C-B9C8-D6BC18C33780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateY";
	rename -uid "D0BCDAAB-40EB-28ED-1F39-6E85E8F7DD4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateZ";
	rename -uid "A495FC7A-4CE0-2BBD-CB6B-63962BCF0B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Arm_IK_pole_visibility";
	rename -uid "DD8C76F5-442C-0D34-4941-3782B906294D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTL -n "L_Arm_IK_pole_translateX";
	rename -uid "226F3593-4308-4C8F-7149-4EA3D54A7E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -5.5126390163080909e-16 31 -5.5126390163080909e-16
		 32 -5.5126390163080909e-16 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Arm_IK_pole_translateY";
	rename -uid "1881C11E-4684-79DA-EBCE-488216F8BE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -1.4006260974202649e-16 31 -1.4006260974202649e-16
		 32 -1.4006260974202649e-16 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_Arm_IK_pole_translateZ";
	rename -uid "C97F8124-4473-410E-DA2E-47BE5CA19DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 15.272663946137403 31 15.272663946137403
		 32 15.272663946137403 200 15.272663946137403;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Arm_IK_pole_scaleX";
	rename -uid "51BC5E54-47E0-A665-DAA9-2F8942382A65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Arm_IK_pole_scaleY";
	rename -uid "29F0D4AC-44DF-F2DC-D79B-4F8BC85CE5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_Arm_IK_pole_scaleZ";
	rename -uid "5BE366C0-4F6D-78D0-3D59-248EFC0E92B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateX";
	rename -uid "8515EA67-4510-F0A5-5753-A79D5B9FA5E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 3.396432640246914 15 25.661360399491361
		 26 3.396432640246914 31 3.396432640246914 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateY";
	rename -uid "477F9CBB-4F1F-1FCA-7655-35B75FFBE749";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 10.258205580838299 15 10.925530742336077
		 26 10.258205580838299 31 10.258205580838299 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateZ";
	rename -uid "D8846569-476E-553B-D00A-5F8FDBA8297F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 16.195301411845819 15 -2.3639543098575911e-14
		 26 16.195301411845819 31 16.195301411845819 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_visibility";
	rename -uid "DF88270C-432F-C41C-1CAF-58A420E6BC6A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 15 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 9 1 9 9 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateX";
	rename -uid "96BCC452-4662-6DDE-074D-15BF1E154F85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 28.211652809128626 15 37.837038742659558
		 26 28.211652809128626 31 28.211652809128626 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateY";
	rename -uid "68F25768-4132-09DB-13A8-C0A3DF5FCD3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 37.734776164043787 15 34.030270973278803
		 26 37.734776164043787 31 37.734776164043787 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateZ";
	rename -uid "A0ABD245-4DFD-A215-2FD2-0DA6D23BE7E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 47.99101949362381 15 53.827309633957213
		 26 47.99101949362381 31 47.99101949362381 32 0 200 0;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleX";
	rename -uid "FD50F361-4B29-4B49-18F4-F0990EF0683A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 15 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleY";
	rename -uid "84D61C5E-46C2-DD8B-7C32-9192A46DFE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 15 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleZ";
	rename -uid "28B660A2-4033-2687-F21E-458E9CD31BA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  3 1 15 1 26 1 31 1 32 1 200 1;
	setAttr -s 6 ".kit[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kot[0:5]"  1 18 1 18 18 1;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "R_Arm_IK_pole_translateX";
	rename -uid "2F10A7B8-4006-3FC7-57EC-759197F26D63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1.2459563482230319e-15 31 1.2459563482230319e-15
		 32 1.2459563482230319e-15 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_Arm_IK_pole_translateY";
	rename -uid "BDE290B9-416C-85B6-18BF-3EA77F8A7024";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 -1.7984988087575182e-15 31 -1.7984988087575182e-15
		 32 -1.7984988087575182e-15 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_Arm_IK_pole_translateZ";
	rename -uid "162558F0-426E-8311-D4F0-2B88001091CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 15.765643657366175 31 15.765643657366175
		 32 15.765643657366175 200 15.765643657366175;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_Arm_IK_pole_visibility";
	rename -uid "43FF0F36-4FCF-249D-A4CD-35B11DEE8744";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "R_Arm_IK_pole_rotateX";
	rename -uid "2E16DB72-4B3E-FD48-01AE-BF87A8A03165";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_Arm_IK_pole_rotateY";
	rename -uid "DD92BA3B-4832-C611-3F12-B69EA4C9D9D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_Arm_IK_pole_rotateZ";
	rename -uid "43F02DB8-47D5-84AD-6A7B-BB9EE51AD64C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 0 31 0 32 0 200 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_Arm_IK_pole_scaleX";
	rename -uid "81672EAB-4226-E6F2-20AC-EBB4231068CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_Arm_IK_pole_scaleY";
	rename -uid "56D78ABF-441F-9399-A402-D0B4ECAE166A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_Arm_IK_pole_scaleZ";
	rename -uid "F50ECD95-4398-0CD9-ECF8-6DBB3910D2C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  15 1 31 1 32 1 200 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode rmanGlobals -s -n "rmanGlobals";
	rename -uid "5692A3D5-474E-E36F-D078-D4AB74B6C65B";
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
	rename -uid "5AE50781-4A57-D6DF-1856-8FA8D3B929E0";
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
	rename -uid "90345ADE-46F0-2DA8-4A19-E0806DE0667E";
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
	rename -uid "04AD028C-406D-A4F3-1234-52B29F198C92";
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
	rename -uid "FE052CFE-4CFE-2180-8650-5EA935CED96A";
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
	rename -uid "E62F4EBA-4A9A-B133-B4E5-33B28CEEE6E2";
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
	rename -uid "B0F4E7E4-4CBF-186F-B749-B2BF1EAA9688";
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
	rename -uid "80FF3C62-42B9-7321-E206-3FA9B41EC41E";
lockNode -l 1 ;
createNode d_openexr -n "d_openexr";
	rename -uid "B9C94895-4D34-AD46-7B20-C0AE967B29EE";
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
createNode animCurveTU -n "R_IKFK_Switch_visibility";
	rename -uid "628D2A45-4217-F544-5B86-A1995E22A007";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "R_IKFK_Switch_R_Leg_IKFK";
	rename -uid "BEFAADEB-44FF-3D3F-956B-8DBFE2F95DAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_IKFK_Switch_R_Arm_IKFK";
	rename -uid "165BCE93-41CC-9919-03F1-4B860995F45F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Knee_IK_point_translateX";
	rename -uid "10777060-45E3-1632-0B21-50BCD73F5EA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 -7.9305297262643605e-05 32 -7.9305297262643605e-05
		 200 -7.9305297262643605e-05;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Knee_IK_point_translateY";
	rename -uid "4ECCF8F6-420B-7809-B5C7-B8BE3FAF7471";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0.00010974462453563894 32 0.00010974462453563894
		 200 0.00010974462453563894;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Knee_IK_point_translateZ";
	rename -uid "80EFC19C-43DE-777C-57AC-419B7C3AAB13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 -13.183935138519331 32 -13.183935138519331
		 200 -13.183935138519331;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Knee_IK_point_visibility";
	rename -uid "3868AB3B-4201-44CE-6317-218101C44A97";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTA -n "L_Knee_IK_point_rotateX";
	rename -uid "52C092C4-43FE-CDBB-C445-7E82C8DF12C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Knee_IK_point_rotateY";
	rename -uid "EEE33BC1-496E-6561-158F-4EA9964FF448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Knee_IK_point_rotateZ";
	rename -uid "CFDFE612-4647-4F31-C216-009F64EF522D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Knee_IK_point_scaleX";
	rename -uid "77B7DB23-4BFF-6C1F-DBBA-7D81F23F3ADE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Knee_IK_point_scaleY";
	rename -uid "4E9AE119-4209-6F3D-C2EC-8D9141D50934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Knee_IK_point_scaleZ";
	rename -uid "332000E2-423A-2D21-2AB7-AA84FF047F3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Mailbox_ctrl_rotateX";
	rename -uid "B88457FA-4408-73B7-D64B-8E84A2829CC8";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 0 52 0 65 -0.27415579217063363 72 0
		 77 0.11025994081862242 92 -0.20165081343931776 110 0.08003860884600951 130 -0.18176687942164052
		 143 -0.18176687942164052 164 0 200 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  0.041666666666666519;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  0.83333333333333326;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "Mailbox_ctrl_rotateY";
	rename -uid "EC688970-4D54-697C-C66C-0091124C4944";
	setAttr ".tan" 18;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 8.1027317321609207e-10 52 0 66 22.095305789733889
		 72 22 77 22.002867526530839 92 22.009608510708457 110 22.001509371341164 130 22.007802299769242
		 143 22.007802299769242 164 -10.44 200 0;
	setAttr -s 12 ".kit[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 1;
	setAttr -s 12 ".kot[0:11]"  1 18 18 18 18 18 18 18 
		18 18 18 1;
	setAttr -s 12 ".kix[0:11]"  2.2815823454456035 0.041666666666666519 
		0.83333333333333326 0.58333333333333348 0.25 0.20833333333333348 0.625 0.74999999999999956 
		0.83333333333333393 0.54166666666666607 0.875 0.041666666666666519;
	setAttr -s 12 ".kiy[0:11]"  6.2443741550804346e-09 0 0 0 0 4.1925037018927829e-05 
		0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  2.2815827994296951 0.83333333333333326 
		0.58333333333333348 0.25 0.20833333333333348 0.625 0.74999999999999956 0.83333333333333393 
		0.54166666666666607 0.875 1.5000000000000009 0.83333333333333326;
	setAttr -s 12 ".koy[0:11]"  7.8580342233181e-10 0 0 0 0 0.00012577511105678338 
		0 0 0 0 0 0;
createNode animCurveTA -n "Mailbox_ctrl_rotateZ";
	rename -uid "EA4843B6-4E2C-3A5A-C97C-6797FC924240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 0 52 0 65 0.28156191398888786 72 0
		 77 -1.4563696827228776 92 1.1401251478478607 110 -0.22360585354564677 130 1.2609821383236004
		 143 1.2609821383236004 164 0 200 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTU -n "Mailbox_ctrl_visibility";
	rename -uid "B9D92EFB-41FB-969A-55F9-3B8BFFEBEE9D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 1 32 1 52 1 65 1 72 1 77 1 92 1 110 1
		 130 1 143 1 164 1 200 1;
	setAttr -s 12 ".kit[0:11]"  9 9 9 9 9 9 9 9 
		9 9 9 1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
createNode animCurveTL -n "Mailbox_ctrl_translateX";
	rename -uid "6A8F9026-4EA7-E0C9-8282-C994DCCDD0FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 0 52 0 65 0 72 0 77 0 92 0 110 0
		 130 0 143 0 164 0 200 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "Mailbox_ctrl_translateY";
	rename -uid "152B5A04-473C-4DF9-E327-619ED33F9815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 0 52 0 65 0 72 0 77 0 92 0 110 0
		 130 0 143 0 164 0 200 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTL -n "Mailbox_ctrl_translateZ";
	rename -uid "9842A78C-4996-A49D-3397-4D98334009F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 0 32 0 52 0 65 0 72 0 77 0 92 0 110 0
		 130 0 143 0 164 0 200 0;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTU -n "Mailbox_ctrl_scaleX";
	rename -uid "C6C83BE2-4695-934A-B7BF-14819BE58A5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 1 32 1 52 1 65 1 72 1 77 1 92 1 110 1
		 130 1 143 1 164 1 200 1;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTU -n "Mailbox_ctrl_scaleY";
	rename -uid "7CF0C83C-4E3A-DE48-281E-8C8D5392C80D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 1 32 1 52 1 65 1 72 1 77 1 92 1 110 1
		 130 1 143 1 164 1 200 1;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTU -n "Mailbox_ctrl_scaleZ";
	rename -uid "DDC25021-43E8-4E54-8E1A-A7ADAD45A9CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  31 1 32 1 52 1 65 1 72 1 77 1 92 1 110 1
		 130 1 143 1 164 1 200 1;
	setAttr -s 12 ".kit[11]"  1;
	setAttr -s 12 ".kot[11]"  1;
	setAttr -s 12 ".kix[11]"  1;
	setAttr -s 12 ".kiy[11]"  0;
	setAttr -s 12 ".kox[11]"  1;
	setAttr -s 12 ".koy[11]"  0;
createNode animCurveTA -n "Root_ctrl_rotateX";
	rename -uid "D7014252-45D6-1341-9A3E-EF8B8D95A2B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Root_ctrl_rotateY";
	rename -uid "3CC9E995-49FF-3A35-97D2-27A33599E353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Root_ctrl_rotateZ";
	rename -uid "28740713-4B8C-B3A8-5B21-7D82E396D931";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "Neck_ctrl_rotateX";
	rename -uid "EBD6A371-41DA-1969-F790-C397333985CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 0 60 0 72 -0.0013244922732202223
		 85 0 137 0 140 0 149 -0.049116869695556779 161 -0.32678442257130613 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "Neck_ctrl_rotateY";
	rename -uid "107A30FF-4D6F-16DF-35FB-39BA20940275";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 -3.1560588700676808 60 0.80263222958212566
		 72 6.9371535726958848 85 0 137 0 141 3.9310687369928301 149 3.7081615027523545 161 -8.9399096540668239
		 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "Neck_ctrl_rotateZ";
	rename -uid "41044E05-4849-54A4-70D2-64AF3F20E4A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 0 60 0 72 1.2370616127249516
		 85 0 137 0 140 0 149 1.8540295199109307 161 2.2799219293953561 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTA -n "R_Knee_IK_point_rotateX";
	rename -uid "8C642CC4-4397-83AC-5BBC-5BBABDC15C3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 5.4076258768466703 32 5.4076258768466703
		 200 5.4076258768466703;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Knee_IK_point_rotateY";
	rename -uid "AB6CF97D-4035-7CC7-EA43-48AEA6323BA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 4.2672314356800101 32 4.2672314356800101
		 200 4.2672314356800101;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Knee_IK_point_rotateZ";
	rename -uid "BF48461C-4329-05B9-6457-E39920F17F44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0.20161202143400128 32 0.20161202143400128
		 200 0.20161202143400128;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateX";
	rename -uid "2DEF9C2E-4EFB-49B3-ADE4-B78382D40065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateY";
	rename -uid "AA99F36F-4005-3EF6-0ECB-C88E0C4188DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateZ";
	rename -uid "6AAFA890-4767-C999-0008-52BDC29EB337";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateX";
	rename -uid "7DF5F85E-4E1B-FF66-9373-F7A3E7FFD2C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateY";
	rename -uid "12B0E6AC-4A92-B33E-A8CA-758C934AC694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateZ";
	rename -uid "1C5B867A-4219-BE16-2CA2-F4A4B9F07E4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateX";
	rename -uid "FE868DA0-4772-3F02-BF21-849CC6D28315";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateY";
	rename -uid "E61FB89C-4048-5183-268C-7FA7C3E1B428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateZ";
	rename -uid "3727B630-40D8-86F4-DB76-AB9FEF75F6C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateX";
	rename -uid "1720912E-443A-41B4-8E3E-EAB01FA50AC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateY";
	rename -uid "7E17C990-4F99-519D-152C-B1A1AB4DC525";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateZ";
	rename -uid "495D1F33-49F2-E723-798F-02BADF4FB2EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateX";
	rename -uid "1FA945E2-4601-424A-C079-B283F9341FB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateY";
	rename -uid "8B96191E-4127-D905-D45D-E0A273F824A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateZ";
	rename -uid "851B0BA7-4739-CD54-AB3F-66A1A3FDA5A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateX";
	rename -uid "FBF9CBC4-4E80-5284-D379-A68636167DF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateY";
	rename -uid "08637543-4EA3-9B39-5968-41AA6F553C86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateZ";
	rename -uid "77A8540E-4BAD-82A7-5BBF-29A0FE3E1D20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateX1";
	rename -uid "FD2E2E39-4F98-DA6C-6EBA-3D82828756AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateY1";
	rename -uid "5564272D-4BD2-6052-89CC-51BFDB47F566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle1_jnt_RK_ctrl_rotateZ1";
	rename -uid "994EEDE6-4729-AA7E-F1FD-EF9E7930A634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateX1";
	rename -uid "A1B57C1F-438C-27BE-89D6-2DBF4CF1B965";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateY1";
	rename -uid "7BB5EE32-4B5C-64E8-7F88-67AE8A4D7A23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Middle2_jnt_RK_ctrl_rotateZ1";
	rename -uid "E1D610BF-426D-78E8-1B53-EE81AF501F81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateX1";
	rename -uid "974523B0-4CED-66E7-805F-628151929231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateY1";
	rename -uid "8302625D-4525-EB66-8F47-72826ACD3758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie1_jnt_RK_ctrl_rotateZ1";
	rename -uid "5F3343E4-43A6-786C-0D14-CC9C850CE0FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateX1";
	rename -uid "8591E96E-4741-4DF8-84DE-57A824BB7272";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateY1";
	rename -uid "143B23FD-4FC7-8ED6-858B-03BB1A3CADD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Pinkie2_jnt_RK_ctrl_rotateZ1";
	rename -uid "344FCF24-470E-DD86-8931-E08CF6EE0DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateX1";
	rename -uid "E5C4819F-4AF6-F763-C8C2-DBBD1372CD50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateY1";
	rename -uid "2518E368-443E-5AF5-351F-FFB86F16CA2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb1_jnt_RK_ctrl_rotateZ1";
	rename -uid "C38EF6E2-445A-6949-0CAD-988BBE98278A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateX1";
	rename -uid "BF9565EB-4C19-ACE4-B95C-6D8063D5DE9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateY1";
	rename -uid "7FCA1EF3-44EA-61EF-F0AA-60828586868F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "L_Arm_Thumb2_jnt_RK_ctrl_rotateZ1";
	rename -uid "5376F9BC-40E5-C1C2-6491-42B47728D418";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle1_jnt_RK_ctrl_rotateX";
	rename -uid "A79489ED-463E-1888-0069-75AF2EDDBA44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle1_jnt_RK_ctrl_rotateY";
	rename -uid "0E4B7489-4032-1D4B-CA6D-CEA97140F564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle1_jnt_RK_ctrl_rotateZ";
	rename -uid "CC21901B-4121-5C0A-93EE-1B9A6B94956C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle2_jnt_RK_ctrl_rotateX";
	rename -uid "F40B5222-47AE-75B3-7590-A690B73E7B5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle2_jnt_RK_ctrl_rotateY";
	rename -uid "8704773C-40E4-B496-53DD-B094FF97C1A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Middle2_jnt_RK_ctrl_rotateZ";
	rename -uid "FD366363-462E-8D54-6511-8888A30700BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie1_jnt_RK_ctrl_rotateX";
	rename -uid "78735D04-4782-2670-549B-9598FE30E1F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie1_jnt_RK_ctrl_rotateY";
	rename -uid "9856D467-49A4-5B15-5DB1-14B76701F47E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie1_jnt_RK_ctrl_rotateZ";
	rename -uid "0CCD84F1-4631-FD29-D4B7-0990A2FC131E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie2_jnt_RK_ctrl_rotateX";
	rename -uid "F5238021-4D6A-BE42-675A-1599B3CDAEA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie2_jnt_RK_ctrl_rotateY";
	rename -uid "39D0B0E6-4012-5FB2-D5A2-3AB774197B0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Pinkie2_jnt_RK_ctrl_rotateZ";
	rename -uid "3A264A96-4F2F-1296-31FC-769724F0D5D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb1_jnt_RK_ctrl_rotateX";
	rename -uid "AE5BD7E4-4C91-F38D-D09D-B3B4E099F4E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb1_jnt_RK_ctrl_rotateY";
	rename -uid "100A6ED8-4FB3-312B-C942-4A8C51940B7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb1_jnt_RK_ctrl_rotateZ";
	rename -uid "D40A92A6-4CCC-E49E-D199-8EB5FE96F230";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb2_jnt_RK_ctrl_rotateX";
	rename -uid "D7F28722-4034-312A-8114-1FA71303DDCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb2_jnt_RK_ctrl_rotateY";
	rename -uid "913F44DC-4D26-A64D-7389-23B17F4FEBDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Arm_Thumb2_jnt_RK_ctrl_rotateZ";
	rename -uid "94945EB4-47F7-0259-9AAF-DBB74C41137D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle1_jnt_RK_ctrl_rotateX";
	rename -uid "F15FAE4A-4034-23B3-C1AC-CFA1972062CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle1_jnt_RK_ctrl_rotateY";
	rename -uid "978BFFA0-4A0F-04FF-8CF5-648FF4BD1CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle1_jnt_RK_ctrl_rotateZ";
	rename -uid "E4BCF6A4-461F-E72D-1EE7-0188DFAA0D32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle2_jnt_RK_ctrl_rotateX";
	rename -uid "53F1CB4A-49E1-C5DD-26E5-07821F54CE3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle2_jnt_RK_ctrl_rotateY";
	rename -uid "11F7E850-4520-58EF-96E6-4FBE2E6DEB15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Middle2_jnt_RK_ctrl_rotateZ";
	rename -uid "55C55AF0-4CC3-995D-45C6-408214D6DC05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie1_jnt_RK_ctrl_rotateX";
	rename -uid "C2033271-4155-4B04-ADBF-29948CB95906";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie1_jnt_RK_ctrl_rotateY";
	rename -uid "2BB7AF3B-4BC9-CAFB-BDED-FABF2FFD2B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie1_jnt_RK_ctrl_rotateZ";
	rename -uid "4E27F2B2-4476-66F4-CC77-81BCDDE08F10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie2_jnt_RK_ctrl_rotateX";
	rename -uid "5C4221FC-4360-81D5-A8D9-6EAB7D56ACAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie2_jnt_RK_ctrl_rotateY";
	rename -uid "BAB1764D-47EF-28D6-4760-66907A48FB45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Pinkie2_jnt_RK_ctrl_rotateZ";
	rename -uid "C41D65F3-4C05-92AB-FC64-6ABA90407120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb1_jnt_RK_ctrl_rotateX";
	rename -uid "3C8DC26F-4B80-5A05-2979-07A6C27A380E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb1_jnt_RK_ctrl_rotateY";
	rename -uid "471EE460-4142-33AB-9765-81A39E75BD9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb1_jnt_RK_ctrl_rotateZ";
	rename -uid "BBEC0192-4C37-F887-84AD-C38BEB5781B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb2_jnt_RK_ctrl_rotateX";
	rename -uid "E910635D-41D7-866B-774B-109364F4EDF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb2_jnt_RK_ctrl_rotateY";
	rename -uid "2E0025FB-45B6-76E6-FACD-7182A7C058D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTA -n "R_Leg_Thumb2_jnt_RK_ctrl_rotateZ";
	rename -uid "6BAF870C-44CA-21F5-C0B8-619D7B00EAA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Neck_ctrl_visibility";
	rename -uid "05B6CF00-456E-0C11-0BCB-3AAD9B957F12";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 1 32 1 49 1 53 1 60 1 72 1 85 1 137 1
		 140 1 149 1 161 1 181 1 200 1;
	setAttr -s 13 ".kit[0:12]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
createNode animCurveTL -n "Neck_ctrl_translateX";
	rename -uid "FBD6F8C2-481F-6524-6019-4CB44565EF0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 -0.022553307284793038
		 60 0.029133655617502228 72 0.1017194026361827 85 0 137 0 140 0.023553990989150099
		 149 0.0080951799552912845 161 -0.041838700735771624 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTL -n "Neck_ctrl_translateY";
	rename -uid "03A20D98-45D2-7661-DD78-D5A15F5CD170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 1.5502397468380167 60 2.5115020463846172
		 72 4.151381873108102 85 0 137 0 140 -0.78427248749447642 149 -0.47316140185260314
		 161 0.73682543406215084 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTL -n "Neck_ctrl_translateZ";
	rename -uid "D504E44A-4EDA-5ED6-A669-17A6C456955F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 0 32 0 49 0 53 0.760510611659032 60 -0.031041876790838325
		 72 -2.2513337821204913 85 0 137 0 140 -0.77874210539878108 149 -0.199990997396499
		 161 2.0214660333385561 181 0 200 0;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTU -n "Neck_ctrl_scaleX";
	rename -uid "17708C39-4074-10D7-30CC-1AA2298CA8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 1 32 1 49 1 53 1 60 1 72 1 85 1 137 1
		 140 1 149 1 161 1 181 1 200 1;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTU -n "Neck_ctrl_scaleY";
	rename -uid "5C5C9E92-4B57-F22A-FB8A-1C88A24E84B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 1 32 1 49 1 53 1 60 1 72 1 85 1 137 1
		 140 1 149 1 161 1 181 1 200 1;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTU -n "Neck_ctrl_scaleZ";
	rename -uid "60F1A953-47E7-58F0-93AE-D18D0C3E371C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  31 1 32 1 49 1 53 1 60 1 72 1 85 1 137 1
		 140 1 149 1 161 1 181 1 200 1;
	setAttr -s 13 ".kit[12]"  1;
	setAttr -s 13 ".kot[12]"  1;
	setAttr -s 13 ".kix[12]"  1;
	setAttr -s 13 ".kiy[12]"  0;
	setAttr -s 13 ".kox[12]"  1;
	setAttr -s 13 ".koy[12]"  0;
createNode animCurveTU -n "R_Knee_IK_point_visibility";
	rename -uid "115DB84F-4D85-CEC1-3061-5FA2E22AC56D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Knee_IK_point_translateX";
	rename -uid "120018C7-4BB9-1515-22DF-5695481234F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 -4.3867928164669646e-05 32 -4.3867928164669646e-05
		 200 -4.3867928164669646e-05;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Knee_IK_point_translateY";
	rename -uid "41FA01CC-4DE0-8C28-DBDB-D8A75260CA2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 6.0705519947106111e-05 32 6.0705519947106111e-05
		 200 6.0705519947106111e-05;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Knee_IK_point_translateZ";
	rename -uid "8B03A5E4-49C9-12DE-9C8F-4B944CC89732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 7.2927274647252549 32 7.2927274647252549
		 200 7.2927274647252549;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Knee_IK_point_scaleX";
	rename -uid "3A8BABAD-4F5F-82B3-B793-7CB7D7F3ED8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Knee_IK_point_scaleY";
	rename -uid "B34449F5-4AA7-F376-599E-429292333CF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Knee_IK_point_scaleZ";
	rename -uid "B471995C-4EC2-6D63-C204-E3B0726A069E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Clavicle_ctrl_visibility";
	rename -uid "1F30401F-4387-5EC2-9BFD-7D891ED848A6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Clavicle_ctrl_translateX";
	rename -uid "7A2ED3F2-4E7E-678D-AC10-6B9605BA2C5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Clavicle_ctrl_translateY";
	rename -uid "8EFA505B-4001-FB6F-F8BA-9EB618BE66E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Clavicle_ctrl_translateZ";
	rename -uid "2D48155C-4538-238A-8D46-2E9C9264DB8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Clavicle_ctrl_scaleX";
	rename -uid "FCACE647-4E68-24F5-3681-F4862AB77604";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Clavicle_ctrl_scaleY";
	rename -uid "ABF7394B-49D0-9BB6-9314-AAAF056A7B2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Clavicle_ctrl_scaleZ";
	rename -uid "ACD72D68-4B59-2A10-092D-069A5987A8DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_visibility";
	rename -uid "48769094-4848-9BAE-FA86-3A8EF2672245";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateX";
	rename -uid "4A9DB21C-41A6-BE05-76A4-BB898EEF4BD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateY";
	rename -uid "F65F747F-4DE8-9E85-18D6-EF9438323C7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateZ";
	rename -uid "479FECBD-44A8-B8D7-7728-1399A3FD1D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleX";
	rename -uid "5C3D2861-4F20-1ABC-24EE-C2BDDF3480BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleY";
	rename -uid "DBA98F04-4AF1-E666-B7FE-249FC9E0D39E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleZ";
	rename -uid "748960BB-4EFC-BCFF-3148-31AECB721EEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_visibility1";
	rename -uid "7EA76C86-4C64-239F-55F6-E89F870CC7B9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateX1";
	rename -uid "1E396192-4269-BB72-0F0B-64B185C33AD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateY1";
	rename -uid "A9BEA901-4D1D-D1C4-B773-A7948E97C79E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb2_jnt_RK_ctrl_translateZ1";
	rename -uid "9C18CB70-43D1-8261-8B20-9D872E98CDA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleX1";
	rename -uid "045C5C42-4EFB-C138-FFAD-E8A7178BEF1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleY1";
	rename -uid "5E75CC36-4CC8-FBA8-6480-C98FCD79966D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb2_jnt_RK_ctrl_scaleZ1";
	rename -uid "8F1E1863-4108-A5CA-4AAF-5A9CE621E044";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_visibility";
	rename -uid "82AAB9D9-45C3-7B23-F2C3-A68169BC3042";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateX";
	rename -uid "B549405E-41EC-AB01-BD50-638864C5BCED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateY";
	rename -uid "0B5FB720-4EE0-DAD5-A25A-AD9FDFFB807F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateZ";
	rename -uid "ECE19FF1-473A-467F-7504-7DBAFAF909A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleX";
	rename -uid "A94DF96D-4BBE-464B-C8CD-3FAAE13FD4F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleY";
	rename -uid "AA7CC452-44CC-E706-68AD-96A30E36C9CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleZ";
	rename -uid "EAF634EB-46E3-C649-F2E2-95A8351D6E66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_visibility";
	rename -uid "C8543B00-4967-09D8-6E6D-73B568899DE4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateX";
	rename -uid "8E245C25-4FAF-037E-D441-6189DE34DA45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateY";
	rename -uid "71B2D17C-47C6-0B9B-3187-76AC5721A763";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateZ";
	rename -uid "0E2B21A3-468D-A06D-4ADE-11A1DBBDB029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleX";
	rename -uid "56AB331D-43D9-C1C2-3F6C-C98526DBCF12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleY";
	rename -uid "3ABBC70C-43B8-CE97-94F5-17A03548812A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleZ";
	rename -uid "E7D89E63-4BBF-9A19-321D-57A417D494D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb2_jnt_RK_ctrl_visibility";
	rename -uid "077A22C6-48C5-C411-EB89-B6B3578F1FB3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb2_jnt_RK_ctrl_translateX";
	rename -uid "23DBA105-480A-E3A7-99F2-23BE0DA358AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb2_jnt_RK_ctrl_translateY";
	rename -uid "6B4EDB5E-4A4C-971E-229A-368C5DC8C069";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb2_jnt_RK_ctrl_translateZ";
	rename -uid "B0D5F6D3-450C-05A1-811A-AA94CA205AD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb2_jnt_RK_ctrl_scaleX";
	rename -uid "550C7BA4-4D1A-B027-891C-5AAB7E2CCE23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb2_jnt_RK_ctrl_scaleY";
	rename -uid "72C995D1-4483-C082-D8B8-EEA6A9219391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb2_jnt_RK_ctrl_scaleZ";
	rename -uid "B9916068-4190-3648-7790-F69FDD98A27F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb1_jnt_RK_ctrl_visibility";
	rename -uid "0D753613-41FC-B2B3-E975-ADB246ED7CB6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb1_jnt_RK_ctrl_translateX";
	rename -uid "BB6567F5-4650-4C8B-FCE9-4E8432214DA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb1_jnt_RK_ctrl_translateY";
	rename -uid "65630027-4220-8263-4D76-38BF5083BE47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb1_jnt_RK_ctrl_translateZ";
	rename -uid "4DDD3972-41AA-A335-81D6-AA833320A58E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb1_jnt_RK_ctrl_scaleX";
	rename -uid "35EA4B66-4462-88F1-E837-57B019CC31F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb1_jnt_RK_ctrl_scaleY";
	rename -uid "7892FA22-4790-8BA8-1609-51A168ECA8D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb1_jnt_RK_ctrl_scaleZ";
	rename -uid "6C1ABC13-49F2-18EA-C818-B092D869DB4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_visibility";
	rename -uid "104E98D8-4B6D-5C64-85A3-64A458BA67D2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateX";
	rename -uid "07AADA97-4B41-FC66-21C9-28A695BA4607";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateY";
	rename -uid "F3391100-4679-2CC8-E097-2D81FF76DBAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateZ";
	rename -uid "8D2419C8-42B4-4142-6109-F5A7300CEF23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleX";
	rename -uid "790E784D-4076-0AEA-2F2C-2C9AAC71211B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleY";
	rename -uid "AF56DD93-4DF5-C412-1395-5B8DAA32B412";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleZ";
	rename -uid "38318D5F-4EC4-D2AC-A96E-959E8A45BFD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_visibility1";
	rename -uid "3EF917DD-4B7E-A3F2-A471-37808E7066F2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateX1";
	rename -uid "15DA2B2B-408F-9A24-E3A0-48AD9DAE77A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateY1";
	rename -uid "277067C3-4613-493A-C6D3-088F0C660394";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Thumb1_jnt_RK_ctrl_translateZ1";
	rename -uid "59F88DBD-463A-17A1-7CE7-5C943A874CA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleX1";
	rename -uid "80A875F1-47C1-DBBC-28F2-5A9CC19F7DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleY1";
	rename -uid "314FA7F5-4E8F-FF54-A4A2-8D9DEDA9B003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Thumb1_jnt_RK_ctrl_scaleZ1";
	rename -uid "7282AC5F-4522-2649-0662-C0953B2761D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb2_jnt_RK_ctrl_visibility";
	rename -uid "3D8B829C-42CD-465C-6B77-5AB4DBFDC5E8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb2_jnt_RK_ctrl_translateX";
	rename -uid "3F783D15-4E1B-EA3D-D6D0-5ABF1F7947FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb2_jnt_RK_ctrl_translateY";
	rename -uid "B9F11BDB-4D30-2988-B47C-519E1746B43B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Thumb2_jnt_RK_ctrl_translateZ";
	rename -uid "CEE5FAFB-4FA9-8512-DA85-BF815826716D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb2_jnt_RK_ctrl_scaleX";
	rename -uid "7FB9CDA9-41CE-96DD-33D3-5EA694877C01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb2_jnt_RK_ctrl_scaleY";
	rename -uid "F6EA438E-4D7B-2997-B0D4-0EBA9A79F739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Thumb2_jnt_RK_ctrl_scaleZ";
	rename -uid "476BAB95-4016-77B5-BA00-9F9EE08D0558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_IKFK_Switch_visibility";
	rename -uid "C49CF5F6-46C5-B987-98CF-54B67510E60F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTU -n "L_IKFK_Switch_L_Leg_IKFK";
	rename -uid "9DE844A1-4FB5-961B-2791-F1B541F919BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_IKFK_Switch_L_Arm_IKFK";
	rename -uid "9C7976BE-4187-604A-8D21-39811BFA2709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_visibility1";
	rename -uid "FE26A963-401A-A17D-5196-BEBFD302C946";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateX1";
	rename -uid "8A6F489E-4AB9-7B7D-CDC8-F2BBEF2769D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateY1";
	rename -uid "F6BEF298-4EDA-6B68-7E00-7EAAFE32445E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle1_jnt_RK_ctrl_translateZ1";
	rename -uid "4D285D5B-493A-07D2-E482-B3BC1EDCC64D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleX1";
	rename -uid "A97CD702-433F-4C98-F522-30B9046FE03B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleY1";
	rename -uid "F2A75BB0-4500-4CAA-155A-C89C781FCA06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle1_jnt_RK_ctrl_scaleZ1";
	rename -uid "AEDF1888-4463-51A4-4F7D-248677562411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle1_jnt_RK_ctrl_visibility";
	rename -uid "07013B8D-4479-608B-90E4-CCB5D5DAEEB1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle1_jnt_RK_ctrl_translateX";
	rename -uid "00FE5018-45B9-5923-BF62-BD9039A6F5A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle1_jnt_RK_ctrl_translateY";
	rename -uid "038D114A-4A1B-8DE3-2426-2A99A725851A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle1_jnt_RK_ctrl_translateZ";
	rename -uid "564009FB-4A0E-2586-A73E-E09E33CB37D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle1_jnt_RK_ctrl_scaleX";
	rename -uid "B22336BF-462C-A04C-F119-EA86068ECAEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle1_jnt_RK_ctrl_scaleY";
	rename -uid "FCD43FA1-4F33-6DC4-7A8D-499645FB3AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle1_jnt_RK_ctrl_scaleZ";
	rename -uid "4FB57CB8-4E51-EFBA-E7C1-8CB42B58F5CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle1_jnt_RK_ctrl_visibility";
	rename -uid "4E788C27-439C-80CE-71D2-60BCDC136884";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle1_jnt_RK_ctrl_translateX";
	rename -uid "D4290311-4A4A-A559-1E3D-61890BEC83D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle1_jnt_RK_ctrl_translateY";
	rename -uid "1325CC02-4E51-8563-002A-1C8236EEA184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle1_jnt_RK_ctrl_translateZ";
	rename -uid "AA205599-4C1D-85E5-254C-888E59FAEA4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle1_jnt_RK_ctrl_scaleX";
	rename -uid "1329809B-4951-6213-B940-43A5220DFF1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle1_jnt_RK_ctrl_scaleY";
	rename -uid "D9C0BEDB-4044-6ED9-426C-0FB82C986766";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle1_jnt_RK_ctrl_scaleZ";
	rename -uid "B93CE3F1-4921-2E1E-55D4-E8B318ACA8ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie1_jnt_RK_ctrl_visibility";
	rename -uid "FBCAFC12-4799-847D-8675-068F89685634";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie1_jnt_RK_ctrl_translateX";
	rename -uid "56A6C669-463C-23AE-85E3-79A2257ADA1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie1_jnt_RK_ctrl_translateY";
	rename -uid "CD54AE93-472A-DC33-B6B4-F1998CB5DADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie1_jnt_RK_ctrl_translateZ";
	rename -uid "733EA550-4766-E003-1D42-86A6CFD24C81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie1_jnt_RK_ctrl_scaleX";
	rename -uid "776AB825-4193-EC66-1332-EB99DC89FFB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie1_jnt_RK_ctrl_scaleY";
	rename -uid "7717BF71-4DDC-4F41-C619-E3A5FE378558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie1_jnt_RK_ctrl_scaleZ";
	rename -uid "48E167B3-4F3F-6FE5-97BD-80B55E236974";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb1_jnt_RK_ctrl_visibility";
	rename -uid "4D7F44F1-4758-2C1C-BF8F-AB82E20F447A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb1_jnt_RK_ctrl_translateX";
	rename -uid "80C980BF-463C-9993-A870-81A5222E3AEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb1_jnt_RK_ctrl_translateY";
	rename -uid "EBE1EF18-40C6-F143-2DB3-0E9E3331E9A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Thumb1_jnt_RK_ctrl_translateZ";
	rename -uid "F458056A-45CB-7B7B-53BC-B28787CAA8E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb1_jnt_RK_ctrl_scaleX";
	rename -uid "0B9D1906-4EB4-F51D-14DA-D1B0CDC2B3E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb1_jnt_RK_ctrl_scaleY";
	rename -uid "8329B6CE-4DD7-125D-471E-DCB3D7E07F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Thumb1_jnt_RK_ctrl_scaleZ";
	rename -uid "BDB3B43A-4D16-1757-76ED-609CCC4D1159";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_visibility";
	rename -uid "CB6BA96A-4F02-3817-6C74-78BF412819BF";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateX";
	rename -uid "B08C01D6-4DC0-05AF-1F63-6F9A36D748E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateY";
	rename -uid "3DB89E67-4703-06E2-34B6-19A74A1CD9EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateZ";
	rename -uid "DE760B06-406A-9241-908E-00AE957A400F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleX";
	rename -uid "AB7D4D2B-4EAA-B01E-3892-8F95DFD73867";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleY";
	rename -uid "BA8FA6DF-4A4D-72E5-66CF-B5B4C82D7604";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleZ";
	rename -uid "058A43F4-45DF-2FBE-8954-1A9E94432AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie2_jnt_RK_ctrl_visibility";
	rename -uid "521736D9-40F9-36F1-64D5-D09C8BD558D3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie2_jnt_RK_ctrl_translateX";
	rename -uid "889624C1-4D65-78FE-940B-8DA9265A0F34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie2_jnt_RK_ctrl_translateY";
	rename -uid "4F1F96AD-4B2C-C507-BAA9-10BF246DEB5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie2_jnt_RK_ctrl_translateZ";
	rename -uid "CC1AE853-442D-ED65-A354-0FAB737F038E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie2_jnt_RK_ctrl_scaleX";
	rename -uid "AC9726D6-4311-80A2-AB4A-30B5F72360E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie2_jnt_RK_ctrl_scaleY";
	rename -uid "48448731-4F9C-ADA2-AEA9-9EA423EFDB71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie2_jnt_RK_ctrl_scaleZ";
	rename -uid "38E05A79-42CF-D48A-1BD1-D8A1F5FB29C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle2_jnt_RK_ctrl_visibility";
	rename -uid "F4E7D99C-4EF5-546C-2F3C-FBB093872F04";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle2_jnt_RK_ctrl_translateX";
	rename -uid "8CF6C3D2-4E87-B2B0-C575-03A812688224";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle2_jnt_RK_ctrl_translateY";
	rename -uid "1705AB3B-4C8D-2C9D-03EC-0FBEC39517F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Middle2_jnt_RK_ctrl_translateZ";
	rename -uid "E2B97C79-4DD5-68D6-1D1E-DBB6E20249EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle2_jnt_RK_ctrl_scaleX";
	rename -uid "BF55388E-4D17-0B4D-CB2A-DEAB269330F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle2_jnt_RK_ctrl_scaleY";
	rename -uid "A4E67108-4FDB-A410-CF05-5DB792D4FBA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Middle2_jnt_RK_ctrl_scaleZ";
	rename -uid "9D7D14E2-455D-C97D-9C8A-F3B4F77F4E0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Root_ctrl_visibility";
	rename -uid "508213F3-4792-F9C7-569E-B3876FF341C9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "Root_ctrl_translateX";
	rename -uid "462D0A58-4023-75D6-0AF0-FDAE2A985BBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Root_ctrl_translateY";
	rename -uid "4A4F90D6-4564-F1FE-78F5-6A9356E29B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "Root_ctrl_translateZ";
	rename -uid "764C7646-4692-1A3E-37CA-92AF34590591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Root_ctrl_scaleX";
	rename -uid "1138EF2D-4694-A389-C50E-4CAFB2058BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Root_ctrl_scaleY";
	rename -uid "1114EE2B-4E8F-6A52-1819-A2AC49F8699C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "Root_ctrl_scaleZ";
	rename -uid "48EAF253-4750-6F2C-52B6-8CBE80F962E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_visibility";
	rename -uid "AB5BBB10-488B-36BD-C154-46B43502BE24";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateX";
	rename -uid "2DC42C3E-4E51-BA7C-B9FC-72B144BC09F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateY";
	rename -uid "F15F14CF-46DC-0437-908A-BB900FE08971";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateZ";
	rename -uid "175BB856-442A-FE54-94CA-DF862F22A400";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleX";
	rename -uid "608C4186-4C4F-BE1B-124F-4D9F51C77065";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleY";
	rename -uid "0C346396-49EF-2411-C5EE-ABAD0764092E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleZ";
	rename -uid "8A0C99FC-4794-F6F4-35E3-EEBA1BF27806";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_visibility1";
	rename -uid "F3F88C70-4E0B-E903-B9CC-A480E92E3751";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateX1";
	rename -uid "9955C80D-417A-753B-1ADC-32B7B6EF720D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateY1";
	rename -uid "7789E7BC-45B8-47B4-17B1-568B74FB6B88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie2_jnt_RK_ctrl_translateZ1";
	rename -uid "F1CEB533-41EF-21DD-35EC-6F92104FAB27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleX1";
	rename -uid "811C3F20-4135-2FAD-9F6B-148FC3F13DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleY1";
	rename -uid "67DA7493-456E-4918-E018-FB9066683ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie2_jnt_RK_ctrl_scaleZ1";
	rename -uid "1836AF5F-439D-5A6F-8A7F-63AD2734EB3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie2_jnt_RK_ctrl_visibility";
	rename -uid "A61690F4-4B2E-4224-5384-888D6BBF0786";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie2_jnt_RK_ctrl_translateX";
	rename -uid "36D2ACA8-4999-9BA8-8BCA-45A2FA7305BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie2_jnt_RK_ctrl_translateY";
	rename -uid "D70EC478-43F9-A179-F96E-8D9586162EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Leg_Pinkie2_jnt_RK_ctrl_translateZ";
	rename -uid "636E7BA7-4F5F-A01E-521B-8FA6B18880E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie2_jnt_RK_ctrl_scaleX";
	rename -uid "032724A2-47A8-700A-D3AC-A49CBD1F8B9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie2_jnt_RK_ctrl_scaleY";
	rename -uid "8EBE04E6-4ED7-E300-D506-46AD9FD2EA67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Leg_Pinkie2_jnt_RK_ctrl_scaleZ";
	rename -uid "EDBA0E73-4EE9-4C18-4643-74887F774291";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Clavicle_ctrl_visibility";
	rename -uid "48CAFDD3-4DE0-F6DE-E552-14B1F3E49AD2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Clavicle_ctrl_translateX";
	rename -uid "F4B677FE-40A5-36E0-AB3C-7D869205A634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Clavicle_ctrl_translateY";
	rename -uid "CB58B8C6-4F3E-35D9-4361-B38D235F4EA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Clavicle_ctrl_translateZ";
	rename -uid "C804034B-4E2F-4D3C-F733-838174E51EEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Clavicle_ctrl_scaleX";
	rename -uid "D885EE8B-49FD-3574-A449-D09CC15A389F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Clavicle_ctrl_scaleY";
	rename -uid "A2FF7C5F-464C-74F6-AA99-7E9755A41F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Clavicle_ctrl_scaleZ";
	rename -uid "47209FC5-4165-8536-272A-CDBF56FF38E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle2_jnt_RK_ctrl_visibility";
	rename -uid "DF877FE8-4504-9C36-6DFC-C381FE01852F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle2_jnt_RK_ctrl_translateX";
	rename -uid "E25FA17B-4E4C-F716-846C-31A60C916A0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle2_jnt_RK_ctrl_translateY";
	rename -uid "2BC1FE4F-4A26-2AEB-7731-F0B408E0AE71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Middle2_jnt_RK_ctrl_translateZ";
	rename -uid "79ECD290-4D52-D220-347F-008F5D54DA9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle2_jnt_RK_ctrl_scaleX";
	rename -uid "40646C0E-44AE-E442-5698-2ABAB0C41DB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle2_jnt_RK_ctrl_scaleY";
	rename -uid "C4055464-4E48-C8FD-9624-27A354A5C46B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Middle2_jnt_RK_ctrl_scaleZ";
	rename -uid "6371031B-4DA4-2114-C22A-7181C9C6284E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_visibility1";
	rename -uid "FD4CC768-4E71-A017-B59E-2E9259C4EEE6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateX1";
	rename -uid "54F588A4-47EB-8F8C-F6A3-EEB160B6D6A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateY1";
	rename -uid "D4B5F380-4874-BE25-4552-78BB283741DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Pinkie1_jnt_RK_ctrl_translateZ1";
	rename -uid "6F57A291-41E2-BAEB-8173-C89ADE80230D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleX1";
	rename -uid "8ECE295B-46D2-7ACC-1A93-03B32AA6C0AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleY1";
	rename -uid "A1CF3911-48D2-99EA-3168-40A1BF5CDE57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Pinkie1_jnt_RK_ctrl_scaleZ1";
	rename -uid "B9AF5899-46B0-8B20-86E3-239794FFB8F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_visibility1";
	rename -uid "80877C3D-405B-B130-C427-449744472F9F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateX1";
	rename -uid "63522BC3-48AA-63B1-25DC-16B198BF5915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateY1";
	rename -uid "346D3735-4245-9BA7-F419-B2865390C0BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "L_Arm_Middle2_jnt_RK_ctrl_translateZ1";
	rename -uid "A9C14637-4AEF-7ABD-3B10-03A0BD14CCAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleX1";
	rename -uid "46A521BB-4300-38E9-9DF4-50BCACAABACC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleY1";
	rename -uid "483B8774-4989-F312-1830-6FB486216660";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "L_Arm_Middle2_jnt_RK_ctrl_scaleZ1";
	rename -uid "378193C6-4424-78EF-CCEB-A6A93FCED314";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie1_jnt_RK_ctrl_visibility";
	rename -uid "40DF972D-48BD-ED20-132F-12A39FF2F1B8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[0:2]"  9 9 1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie1_jnt_RK_ctrl_translateX";
	rename -uid "D4C72290-4CF1-0CB8-AD87-C48F034BB977";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie1_jnt_RK_ctrl_translateY";
	rename -uid "89674521-40B3-966F-4B8E-3F9F5547530E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTL -n "R_Arm_Pinkie1_jnt_RK_ctrl_translateZ";
	rename -uid "7741CBD8-49C8-F82D-67ED-3AB0595CC7D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 0 32 0 200 0;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie1_jnt_RK_ctrl_scaleX";
	rename -uid "B86C4997-4CD6-8AC8-387B-9380D4968B67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie1_jnt_RK_ctrl_scaleY";
	rename -uid "4B9CDD0B-4F28-FDCF-266F-3D8E8B398197";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
createNode animCurveTU -n "R_Arm_Pinkie1_jnt_RK_ctrl_scaleZ";
	rename -uid "5CC03FAD-48AB-E00D-6434-9FBD22C3E446";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  31 1 32 1 200 1;
	setAttr -s 3 ".kit[2]"  1;
	setAttr -s 3 ".kot[2]"  1;
	setAttr -s 3 ".kix[2]"  1;
	setAttr -s 3 ".kiy[2]"  0;
	setAttr -s 3 ".kox[2]"  1;
	setAttr -s 3 ".koy[2]"  0;
select -ne :time1;
	setAttr ".o" 32;
	setAttr ".unw" 32;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 22 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 7 ".r";
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "png";
	setAttr ".an" yes;
	setAttr ".ef" 23;
	setAttr ".sef" yes;
	setAttr ".ep" 2;
	setAttr ".pff" yes;
	setAttr ".ifp" -type "string" "ParcelWalk";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
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
select -ne :ikSystem;
connectAttr "Root_ctrl_translateX.o" "parcelMailboxRN.phl[1]";
connectAttr "Root_ctrl_translateY.o" "parcelMailboxRN.phl[2]";
connectAttr "Root_ctrl_translateZ.o" "parcelMailboxRN.phl[3]";
connectAttr "Root_ctrl_rotateX.o" "parcelMailboxRN.phl[4]";
connectAttr "Root_ctrl_rotateY.o" "parcelMailboxRN.phl[5]";
connectAttr "Root_ctrl_rotateZ.o" "parcelMailboxRN.phl[6]";
connectAttr "Root_ctrl_scaleX.o" "parcelMailboxRN.phl[7]";
connectAttr "Root_ctrl_scaleY.o" "parcelMailboxRN.phl[8]";
connectAttr "Root_ctrl_scaleZ.o" "parcelMailboxRN.phl[9]";
connectAttr "Root_ctrl_visibility.o" "parcelMailboxRN.phl[10]";
connectAttr "COG_ctrl_Constrain_R_IK.o" "parcelMailboxRN.phl[11]";
connectAttr "COG_ctrl_translateX.o" "parcelMailboxRN.phl[12]";
connectAttr "COG_ctrl_translateY.o" "parcelMailboxRN.phl[13]";
connectAttr "COG_ctrl_translateZ.o" "parcelMailboxRN.phl[14]";
connectAttr "COG_ctrl_rotateX.o" "parcelMailboxRN.phl[15]";
connectAttr "COG_ctrl_rotateY.o" "parcelMailboxRN.phl[16]";
connectAttr "COG_ctrl_rotateZ.o" "parcelMailboxRN.phl[17]";
connectAttr "COG_ctrl_scaleX.o" "parcelMailboxRN.phl[18]";
connectAttr "COG_ctrl_scaleY.o" "parcelMailboxRN.phl[19]";
connectAttr "COG_ctrl_scaleZ.o" "parcelMailboxRN.phl[20]";
connectAttr "COG_ctrl_visibility.o" "parcelMailboxRN.phl[21]";
connectAttr "Mailbox_ctrl_translateX.o" "parcelMailboxRN.phl[22]";
connectAttr "Mailbox_ctrl_translateY.o" "parcelMailboxRN.phl[23]";
connectAttr "Mailbox_ctrl_translateZ.o" "parcelMailboxRN.phl[24]";
connectAttr "Mailbox_ctrl_rotateX.o" "parcelMailboxRN.phl[25]";
connectAttr "Mailbox_ctrl_rotateY.o" "parcelMailboxRN.phl[26]";
connectAttr "Mailbox_ctrl_rotateZ.o" "parcelMailboxRN.phl[27]";
connectAttr "Mailbox_ctrl_scaleX.o" "parcelMailboxRN.phl[28]";
connectAttr "Mailbox_ctrl_scaleY.o" "parcelMailboxRN.phl[29]";
connectAttr "Mailbox_ctrl_scaleZ.o" "parcelMailboxRN.phl[30]";
connectAttr "Mailbox_ctrl_visibility.o" "parcelMailboxRN.phl[31]";
connectAttr "R_IKFK_Switch_R_Leg_IKFK.o" "parcelMailboxRN.phl[32]";
connectAttr "R_IKFK_Switch_R_Arm_IKFK.o" "parcelMailboxRN.phl[33]";
connectAttr "R_IKFK_Switch_visibility.o" "parcelMailboxRN.phl[34]";
connectAttr "L_IKFK_Switch_L_Leg_IKFK.o" "parcelMailboxRN.phl[35]";
connectAttr "L_IKFK_Switch_L_Arm_IKFK.o" "parcelMailboxRN.phl[36]";
connectAttr "L_IKFK_Switch_visibility.o" "parcelMailboxRN.phl[37]";
connectAttr "Neck_ctrl_translateX.o" "parcelMailboxRN.phl[38]";
connectAttr "Neck_ctrl_translateY.o" "parcelMailboxRN.phl[39]";
connectAttr "Neck_ctrl_translateZ.o" "parcelMailboxRN.phl[40]";
connectAttr "Neck_ctrl_rotateX.o" "parcelMailboxRN.phl[41]";
connectAttr "Neck_ctrl_rotateY.o" "parcelMailboxRN.phl[42]";
connectAttr "Neck_ctrl_rotateZ.o" "parcelMailboxRN.phl[43]";
connectAttr "Neck_ctrl_scaleX.o" "parcelMailboxRN.phl[44]";
connectAttr "Neck_ctrl_scaleY.o" "parcelMailboxRN.phl[45]";
connectAttr "Neck_ctrl_scaleZ.o" "parcelMailboxRN.phl[46]";
connectAttr "Neck_ctrl_visibility.o" "parcelMailboxRN.phl[47]";
connectAttr "R_Clavicle_ctrl_translateX.o" "parcelMailboxRN.phl[48]";
connectAttr "R_Clavicle_ctrl_translateY.o" "parcelMailboxRN.phl[49]";
connectAttr "R_Clavicle_ctrl_translateZ.o" "parcelMailboxRN.phl[50]";
connectAttr "R_Clavicle_ctrl_scaleX.o" "parcelMailboxRN.phl[51]";
connectAttr "R_Clavicle_ctrl_scaleY.o" "parcelMailboxRN.phl[52]";
connectAttr "R_Clavicle_ctrl_scaleZ.o" "parcelMailboxRN.phl[53]";
connectAttr "R_Clavicle_ctrl_visibility.o" "parcelMailboxRN.phl[54]";
connectAttr "R_Arm_IK_pole_translateX.o" "parcelMailboxRN.phl[55]";
connectAttr "R_Arm_IK_pole_translateY.o" "parcelMailboxRN.phl[56]";
connectAttr "R_Arm_IK_pole_translateZ.o" "parcelMailboxRN.phl[57]";
connectAttr "R_Arm_IK_pole_visibility.o" "parcelMailboxRN.phl[58]";
connectAttr "R_Arm_IK_pole_rotateX.o" "parcelMailboxRN.phl[59]";
connectAttr "R_Arm_IK_pole_rotateY.o" "parcelMailboxRN.phl[60]";
connectAttr "R_Arm_IK_pole_rotateZ.o" "parcelMailboxRN.phl[61]";
connectAttr "R_Arm_IK_pole_scaleX.o" "parcelMailboxRN.phl[62]";
connectAttr "R_Arm_IK_pole_scaleY.o" "parcelMailboxRN.phl[63]";
connectAttr "R_Arm_IK_pole_scaleZ.o" "parcelMailboxRN.phl[64]";
connectAttr "R_Arm_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[65]";
connectAttr "R_Arm_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[66]";
connectAttr "R_Arm_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[67]";
connectAttr "R_Arm_IK_ctrl_translateX.o" "parcelMailboxRN.phl[68]";
connectAttr "R_Arm_IK_ctrl_translateY.o" "parcelMailboxRN.phl[69]";
connectAttr "R_Arm_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[70]";
connectAttr "R_Arm_IK_ctrl_visibility.o" "parcelMailboxRN.phl[71]";
connectAttr "R_Arm_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[72]";
connectAttr "R_Arm_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[73]";
connectAttr "R_Arm_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[74]";
connectAttr "L_Clavicle_ctrl_translateX.o" "parcelMailboxRN.phl[75]";
connectAttr "L_Clavicle_ctrl_translateY.o" "parcelMailboxRN.phl[76]";
connectAttr "L_Clavicle_ctrl_translateZ.o" "parcelMailboxRN.phl[77]";
connectAttr "L_Clavicle_ctrl_scaleX.o" "parcelMailboxRN.phl[78]";
connectAttr "L_Clavicle_ctrl_scaleY.o" "parcelMailboxRN.phl[79]";
connectAttr "L_Clavicle_ctrl_scaleZ.o" "parcelMailboxRN.phl[80]";
connectAttr "L_Clavicle_ctrl_visibility.o" "parcelMailboxRN.phl[81]";
connectAttr "L_Arm_IK_pole_translateX.o" "parcelMailboxRN.phl[82]";
connectAttr "L_Arm_IK_pole_translateY.o" "parcelMailboxRN.phl[83]";
connectAttr "L_Arm_IK_pole_translateZ.o" "parcelMailboxRN.phl[84]";
connectAttr "L_Arm_IK_pole_rotateX.o" "parcelMailboxRN.phl[85]";
connectAttr "L_Arm_IK_pole_rotateY.o" "parcelMailboxRN.phl[86]";
connectAttr "L_Arm_IK_pole_rotateZ.o" "parcelMailboxRN.phl[87]";
connectAttr "L_Arm_IK_pole_visibility.o" "parcelMailboxRN.phl[88]";
connectAttr "L_Arm_IK_pole_scaleX.o" "parcelMailboxRN.phl[89]";
connectAttr "L_Arm_IK_pole_scaleY.o" "parcelMailboxRN.phl[90]";
connectAttr "L_Arm_IK_pole_scaleZ.o" "parcelMailboxRN.phl[91]";
connectAttr "L_Arm_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[92]";
connectAttr "L_Arm_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[93]";
connectAttr "L_Arm_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[94]";
connectAttr "L_Arm_IK_ctrl_translateX.o" "parcelMailboxRN.phl[95]";
connectAttr "L_Arm_IK_ctrl_translateY.o" "parcelMailboxRN.phl[96]";
connectAttr "L_Arm_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[97]";
connectAttr "L_Arm_IK_ctrl_visibility.o" "parcelMailboxRN.phl[98]";
connectAttr "L_Arm_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[99]";
connectAttr "L_Arm_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[100]";
connectAttr "L_Arm_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[101]";
connectAttr "L_Knee_IK_point_translateX.o" "parcelMailboxRN.phl[102]";
connectAttr "L_Knee_IK_point_translateY.o" "parcelMailboxRN.phl[103]";
connectAttr "L_Knee_IK_point_translateZ.o" "parcelMailboxRN.phl[104]";
connectAttr "L_Knee_IK_point_visibility.o" "parcelMailboxRN.phl[105]";
connectAttr "L_Knee_IK_point_rotateX.o" "parcelMailboxRN.phl[106]";
connectAttr "L_Knee_IK_point_rotateY.o" "parcelMailboxRN.phl[107]";
connectAttr "L_Knee_IK_point_rotateZ.o" "parcelMailboxRN.phl[108]";
connectAttr "L_Knee_IK_point_scaleX.o" "parcelMailboxRN.phl[109]";
connectAttr "L_Knee_IK_point_scaleY.o" "parcelMailboxRN.phl[110]";
connectAttr "L_Knee_IK_point_scaleZ.o" "parcelMailboxRN.phl[111]";
connectAttr "L_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[112]";
connectAttr "L_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[113]";
connectAttr "L_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[114]";
connectAttr "L_IK_ctrl_translateX.o" "parcelMailboxRN.phl[115]";
connectAttr "L_IK_ctrl_translateY.o" "parcelMailboxRN.phl[116]";
connectAttr "L_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[117]";
connectAttr "L_IK_ctrl_visibility.o" "parcelMailboxRN.phl[118]";
connectAttr "L_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[119]";
connectAttr "L_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[120]";
connectAttr "L_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[121]";
connectAttr "R_Knee_IK_point_translateX.o" "parcelMailboxRN.phl[122]";
connectAttr "R_Knee_IK_point_translateY.o" "parcelMailboxRN.phl[123]";
connectAttr "R_Knee_IK_point_translateZ.o" "parcelMailboxRN.phl[124]";
connectAttr "R_Knee_IK_point_rotateX.o" "parcelMailboxRN.phl[125]";
connectAttr "R_Knee_IK_point_rotateY.o" "parcelMailboxRN.phl[126]";
connectAttr "R_Knee_IK_point_rotateZ.o" "parcelMailboxRN.phl[127]";
connectAttr "R_Knee_IK_point_visibility.o" "parcelMailboxRN.phl[128]";
connectAttr "R_Knee_IK_point_scaleX.o" "parcelMailboxRN.phl[129]";
connectAttr "R_Knee_IK_point_scaleY.o" "parcelMailboxRN.phl[130]";
connectAttr "R_Knee_IK_point_scaleZ.o" "parcelMailboxRN.phl[131]";
connectAttr "R_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[132]";
connectAttr "R_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[133]";
connectAttr "R_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[134]";
connectAttr "R_IK_ctrl_translateX.o" "parcelMailboxRN.phl[135]";
connectAttr "R_IK_ctrl_translateY.o" "parcelMailboxRN.phl[136]";
connectAttr "R_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[137]";
connectAttr "R_IK_ctrl_visibility.o" "parcelMailboxRN.phl[138]";
connectAttr "R_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[139]";
connectAttr "R_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[140]";
connectAttr "R_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[141]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[142]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[143]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[144]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[145]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[146]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[147]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[148]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[149]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[150]";
connectAttr "R_Arm_Middle1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[151]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[152]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[153]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[154]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[155]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[156]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[157]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[158]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[159]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[160]";
connectAttr "R_Arm_Middle2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[161]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[162]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[163]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[164]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[165]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[166]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[167]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[168]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[169]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[170]";
connectAttr "R_Arm_Pinkie1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[171]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[172]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[173]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[174]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[175]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[176]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[177]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[178]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[179]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[180]";
connectAttr "R_Arm_Pinkie2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[181]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[182]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[183]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[184]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[185]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[186]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[187]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[188]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[189]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[190]";
connectAttr "R_Arm_Thumb1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[191]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[192]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[193]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[194]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[195]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[196]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[197]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[198]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[199]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[200]";
connectAttr "R_Arm_Thumb2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[201]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[202]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[203]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[204]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[205]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[206]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[207]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[208]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[209]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[210]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[211]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[212]"
		;
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[213]"
		;
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[214]"
		;
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[215]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[216]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[217]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[218]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[219]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[220]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[221]"
		;
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[222]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[223]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[224]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[225]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[226]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[227]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[228]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[229]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[230]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[231]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[232]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[233]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[234]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[235]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[236]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[237]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[238]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[239]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[240]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[241]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[242]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[243]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[244]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[245]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[246]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[247]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[248]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[249]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[250]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[251]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[252]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[253]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[254]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateX1.o" "parcelMailboxRN.phl[255]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateY1.o" "parcelMailboxRN.phl[256]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateZ1.o" "parcelMailboxRN.phl[257]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[258]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[259]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[260]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[261]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[262]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[263]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[264]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[265]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[266]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[267]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[268]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[269]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[270]";
connectAttr "R_Leg_Middle1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[271]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[272]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[273]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[274]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[275]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[276]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[277]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[278]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[279]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[280]";
connectAttr "R_Leg_Middle2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[281]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[282]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[283]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[284]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[285]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[286]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[287]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[288]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[289]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[290]";
connectAttr "R_Leg_Pinkie1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[291]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[292]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[293]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[294]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[295]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[296]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[297]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[298]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[299]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[300]";
connectAttr "R_Leg_Pinkie2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[301]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[302]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[303]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[304]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[305]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[306]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[307]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[308]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[309]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[310]";
connectAttr "R_Leg_Thumb1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[311]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[312]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[313]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[314]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[315]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[316]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[317]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[318]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[319]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[320]";
connectAttr "R_Leg_Thumb2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[321]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[322]"
		;
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[323]"
		;
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[324]"
		;
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[325]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[326]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[327]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[328]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[329]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[330]";
connectAttr "L_Arm_Pinkie1_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[331]"
		;
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[332]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[333]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[334]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[335]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[336]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[337]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[338]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[339]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[340]";
connectAttr "L_Arm_Pinkie2_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[341]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[342]"
		;
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[343]"
		;
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[344]"
		;
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[345]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[346]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[347]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[348]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[349]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[350]";
connectAttr "L_Arm_Middle1_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[351]"
		;
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[352]"
		;
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[353]"
		;
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[354]"
		;
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[355]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[356]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[357]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[358]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[359]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[360]";
connectAttr "L_Arm_Middle2_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[361]"
		;
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateX.o" "parcelMailboxRN.phl[362]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateY.o" "parcelMailboxRN.phl[363]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_translateZ.o" "parcelMailboxRN.phl[364]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[365]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[366]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[367]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleX.o" "parcelMailboxRN.phl[368]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleY.o" "parcelMailboxRN.phl[369]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_scaleZ.o" "parcelMailboxRN.phl[370]";
connectAttr "L_Arm_Thumb1_jnt_RK_ctrl_visibility.o" "parcelMailboxRN.phl[371]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateX1.o" "parcelMailboxRN.phl[372]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateY1.o" "parcelMailboxRN.phl[373]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_translateZ1.o" "parcelMailboxRN.phl[374]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateX.o" "parcelMailboxRN.phl[375]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateY.o" "parcelMailboxRN.phl[376]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_rotateZ.o" "parcelMailboxRN.phl[377]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleX1.o" "parcelMailboxRN.phl[378]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleY1.o" "parcelMailboxRN.phl[379]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_scaleZ1.o" "parcelMailboxRN.phl[380]";
connectAttr "L_Arm_Thumb2_jnt_RK_ctrl_visibility1.o" "parcelMailboxRN.phl[381]";
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
// End of Parcel_Idle.ma
