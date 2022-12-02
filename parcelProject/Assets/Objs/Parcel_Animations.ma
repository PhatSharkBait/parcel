//Maya ASCII 2023 scene
//Name: Parcel_Animations.ma
//Last modified: Tue, Nov 22, 2022 06:56:31 PM
//Codeset: 1252
file -rdi 1 -ns "parcelMailbox" -rfn "parcelMailboxRN" -op "v=0;p=17;f=0" -typ
		 "mayaAscii" "E:/Projects/Fall2022/Maya//Scenes/parcelMailbox.ma";
file -r -ns "parcelMailbox" -dr 1 -rfn "parcelMailboxRN" -op "v=0;p=17;f=0" -typ
		 "mayaAscii" "E:/Projects/Fall2022/Maya//Scenes/parcelMailbox.ma";
requires maya "2023";
requires -nodeType "ikSpringSolver" "ikSpringSolver" "1.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.2.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202208031415-1dee56799d";
fileInfo "osv" "Windows 10 Home v2009 (Build: 19044)";
fileInfo "UUID" "0ACCCDCD-435C-943A-CE3F-26B82E2E3C7C";
createNode transform -s -n "persp";
	rename -uid "4337C239-4118-A363-F305-C0AB3A041257";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 167.9692820207641 121.32917664687186 357.46257413960882 ;
	setAttr ".r" -type "double3" -6.5999999999978378 -1057.2000000001008 -4.3126719459127669e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "91422429-4DD4-33C8-1001-39A9A80D161A";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 388.469548077365;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	rename -uid "2598DE43-45E3-F8F8-443B-D99ADF8673C5";
	setAttr -s 14 ".lnk";
	setAttr -s 14 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5A7B7F43-4CBB-D9FE-0FF0-F6BD564FA240";
	setAttr ".bsdt[0].bscd" -type "Int32Array" 1 0 ;
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "22562E8D-4055-DB82-EFB5-47B191F0DCA2";
createNode displayLayerManager -n "layerManager";
	rename -uid "A95F50B3-4EB6-EE85-F22F-569F60D92D77";
createNode displayLayer -n "defaultLayer";
	rename -uid "2C336748-4811-7AF1-4830-6BA51367922A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9A804572-438B-7541-C5BD-D0801B6A8D75";
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
	setAttr -s 71 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"parcelMailboxRN"
		"parcelMailboxRN" 0
		"parcelMailboxRN" 82
		2 "|parcelMailbox:GEO|parcelMailbox:Mailbox" "visibility" " 1"
		2 "|parcelMailbox:GEO|parcelMailbox:Mouth" "visibility" " 1"
		2 "|parcelMailbox:bigdaddy" "visibility" " 0"
		2 "|parcelMailbox:back" "visibility" " 0"
		2 "|parcelMailbox:Lights" "visibility" " 0"
		2 "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl" "translate" " -type \"double3\" 0 0 0"
		
		2 "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Mailbox_ctrl_grp|parcelMailbox:Mailbox_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl|parcelMailbox:R_IK_Handle" 
		"translate" " -type \"double3\" -7.4752706407110728e-06 5.9632005999787907e-09 3.5946601730785233e-05"
		
		2 "parcelMailbox:aiStandardSurface2" "baseColor" " -type \"float3\" 0 0.0045769690000000002 0.017000001000000001"
		
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.Constrain_R_IK" 
		"parcelMailboxRN.placeHolderList[1]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[2]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[3]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[4]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[5]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[6]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[7]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[8]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[9]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[10]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[11]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateX" 
		"parcelMailboxRN.placeHolderList[12]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateY" 
		"parcelMailboxRN.placeHolderList[13]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.translateZ" 
		"parcelMailboxRN.placeHolderList[14]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.visibility" 
		"parcelMailboxRN.placeHolderList[15]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateX" 
		"parcelMailboxRN.placeHolderList[16]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateY" 
		"parcelMailboxRN.placeHolderList[17]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.rotateZ" 
		"parcelMailboxRN.placeHolderList[18]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleX" 
		"parcelMailboxRN.placeHolderList[19]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleY" 
		"parcelMailboxRN.placeHolderList[20]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_pole_grp|parcelMailbox:R_Arm_IK_pole.scaleZ" 
		"parcelMailboxRN.placeHolderList[21]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[22]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[23]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[24]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[25]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[26]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[27]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[28]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[29]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[30]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:R_Clavicle_ctrl_grp|parcelMailbox:R_Clavicle_ctrl|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl_grp|parcelMailbox:R_Arm_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[31]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateX" 
		"parcelMailboxRN.placeHolderList[32]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateY" 
		"parcelMailboxRN.placeHolderList[33]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.translateZ" 
		"parcelMailboxRN.placeHolderList[34]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateX" 
		"parcelMailboxRN.placeHolderList[35]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateY" 
		"parcelMailboxRN.placeHolderList[36]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.rotateZ" 
		"parcelMailboxRN.placeHolderList[37]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.visibility" 
		"parcelMailboxRN.placeHolderList[38]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleX" 
		"parcelMailboxRN.placeHolderList[39]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleY" 
		"parcelMailboxRN.placeHolderList[40]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_pole_grp|parcelMailbox:L_Arm_IK_pole.scaleZ" 
		"parcelMailboxRN.placeHolderList[41]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[42]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[43]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[44]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[45]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[46]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[47]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[48]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[49]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[50]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:COG_ctrl_grp|parcelMailbox:COG_ctrl|parcelMailbox:Neck_ctrl_grp|parcelMailbox:Neck_ctrl|parcelMailbox:L_Clavicle_ctrl_grp|parcelMailbox:L_Clavicle_ctrl|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl_grp|parcelMailbox:L_Arm_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[51]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[52]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[53]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[54]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[55]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[56]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[57]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[58]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[59]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[60]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:L_Leg_IK_ctrl_grp|parcelMailbox:L_IK_ctrl_grp|parcelMailbox:L_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[61]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateX" 
		"parcelMailboxRN.placeHolderList[62]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateY" 
		"parcelMailboxRN.placeHolderList[63]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.rotateZ" 
		"parcelMailboxRN.placeHolderList[64]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateX" 
		"parcelMailboxRN.placeHolderList[65]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateY" 
		"parcelMailboxRN.placeHolderList[66]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.translateZ" 
		"parcelMailboxRN.placeHolderList[67]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.visibility" 
		"parcelMailboxRN.placeHolderList[68]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleX" 
		"parcelMailboxRN.placeHolderList[69]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleY" 
		"parcelMailboxRN.placeHolderList[70]" ""
		5 4 "parcelMailboxRN" "|parcelMailbox:Root_ctrl_grp|parcelMailbox:Root_ctrl|parcelMailbox:R_Leg_IK_ctrl_grp|parcelMailbox:R_IK_ctrl_grp|parcelMailbox:R_IK_ctrl.scaleZ" 
		"parcelMailboxRN.placeHolderList[71]" "";
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
		+ "            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1116\n            -height 731\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1116\\n    -height 731\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 0.16404200000000002 -size 0.393701 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "9306D78C-4B35-278D-3750-1EAC4E289E88";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 23 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "R_IK_ctrl_translateX";
	rename -uid "FED782E3-4418-06BF-1A93-559486A0F815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 24.953098866807427 12 -12.298313012926632
		 18 -10.036492121743569 24 24.953098866807427;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_IK_ctrl_translateY";
	rename -uid "A2D2631A-42D1-7DB9-45A9-869CD4E5DA9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 16.344008361546788 12 -8.0552612639052743
		 18 12.181298764728631 24 16.344008361546788;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "R_IK_ctrl_translateZ";
	rename -uid "1B10EB3C-440E-1E91-9D19-D596D2EC4A86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 5.1960650145867255 12 -2.5609177571892019
		 18 -2.0900302556316777 24 5.1960650145867255;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_IK_ctrl_visibility";
	rename -uid "E35CD87C-4F54-6303-7772-6797D3F97BA3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 1 18 1 24 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "R_IK_ctrl_rotateX";
	rename -uid "021780E8-42EF-ECC9-0B34-49A1F601742B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -7.9513867036587939e-16 12 -7.9513867036587939e-16
		 18 0 24 -7.9513867036587939e-16;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_IK_ctrl_rotateY";
	rename -uid "1676321D-49D3-D8E4-DFC1-D89846919C57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 4.3794226550966445e-32 12 4.3794226550966445e-32
		 18 0 24 4.3794226550966445e-32;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "R_IK_ctrl_rotateZ";
	rename -uid "A47FEB0E-49CE-7060-50A9-E1957BFB6169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 6.3114131960291676e-15 12 6.3114131960291676e-15
		 18 -27.590852562651417 24 6.3114131960291676e-15;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_IK_ctrl_scaleX";
	rename -uid "DAC55220-4D53-DAD0-C962-829CE8CFB4A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 1 18 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_IK_ctrl_scaleY";
	rename -uid "99BBB96D-4BD2-E5CC-79D5-F3ACC401825C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 1 18 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "R_IK_ctrl_scaleZ";
	rename -uid "E8AD3F9C-4B72-091A-6181-EEAC4B27BE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 12 1 18 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_IK_ctrl_translateX";
	rename -uid "5284E85B-4A8B-C030-8DE2-7CBB65CC54FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -12.120076592449349 6 -9.2489192504323405
		 12 23.170734662035503 24 -12.120076592449349;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_IK_ctrl_translateY";
	rename -uid "A3738898-4F52-A4A3-60EE-6E8A30248679";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -7.9385183470370322 6 16.550936445700938
		 12 15.17657919286491 24 -7.9385183470370322;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "L_IK_ctrl_translateZ";
	rename -uid "D22A95C7-4D25-43B2-9F43-CC9A7CBE93C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 -2.5238030070849864 6 -1.926051699366095
		 12 4.8249175135448183 24 -2.5238030070849864;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_IK_ctrl_visibility";
	rename -uid "0DAAEBAC-4351-8EAC-9F90-F4B6437C4759";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 12 1 24 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
createNode animCurveTA -n "L_IK_ctrl_rotateX";
	rename -uid "4D597BB4-4166-B02B-1D06-718E7A4C9C09";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 12 0 24 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_IK_ctrl_rotateY";
	rename -uid "273EFCDB-4027-CB83-BB2C-8DB0D3C05DB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 0 12 0 24 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTA -n "L_IK_ctrl_rotateZ";
	rename -uid "F70DE7C4-468A-DA92-1341-AD91AC1A1A6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 6 -22.264770295127217 12 0 24 0;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_IK_ctrl_scaleX";
	rename -uid "E3F5F283-43B5-DC44-B932-8CAD8841372E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 12 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_IK_ctrl_scaleY";
	rename -uid "ECDECC2D-45EC-08D9-0953-2EB40430BAF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 12 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTU -n "L_IK_ctrl_scaleZ";
	rename -uid "4AE8CF1A-44AD-F98B-67D7-7A8D530A5BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 6 1 12 1 24 1;
	setAttr -s 4 ".kit[3]"  1;
	setAttr -s 4 ".kot[3]"  1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
	setAttr -s 4 ".kox[3]"  1;
	setAttr -s 4 ".koy[3]"  0;
createNode animCurveTL -n "COG_ctrl_translateX";
	rename -uid "0C7544B7-4801-301B-6D08-C1A25CD2E4A9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "COG_ctrl_translateY";
	rename -uid "A989B12F-423A-28B4-198D-238D62430BFA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 -6.5670550635049949 9 1.6409705559242553
		 12 0 15 -6.3825217810473447 21 1.6409705559242553 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  0.031143387601020152 1 1 0.031143387601020152 
		1 1 0.031143387601020152;
	setAttr -s 7 ".kiy[0:6]"  -0.99951492705648615 0 0 -0.99951492705648615 
		0 0 -0.99951492705648615;
	setAttr -s 7 ".kox[0:6]"  0.031143387601020152 1 1 0.031143387601020152 
		1 1 0.031143387601020152;
	setAttr -s 7 ".koy[0:6]"  -0.99951492705648615 0 0 -0.99951492705648615 
		0 0 -0.99951492705648615;
createNode animCurveTL -n "COG_ctrl_translateZ";
	rename -uid "8322CF55-4793-5281-CE2F-BCBF823665A1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_visibility";
	rename -uid "CF0522FA-426A-F89F-4685-5DBCCA3C203A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1;
	setAttr -s 7 ".kit[0:6]"  1 9 1 9 9 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateX";
	rename -uid "BAF2EC2D-4A82-7968-8F9B-07811DD6D341";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateY";
	rename -uid "B287395B-47EC-C81B-AF69-E696E4665FB6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "COG_ctrl_rotateZ";
	rename -uid "CB68AAB4-4B32-2946-0BDA-A3A6CBFF5275";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleX";
	rename -uid "5444932C-4A54-6000-2484-2DA486D622EE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleY";
	rename -uid "38658963-470D-DBCD-74F2-F995860F9D30";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_scaleZ";
	rename -uid "8E080D51-4E42-D67F-783B-FC8723CFD047";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 3 1 9 1 12 1 15 1 21 1 24 1;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "COG_ctrl_Constrain_R_IK";
	rename -uid "2B2EABC6-411D-2B18-FCCA-B095288F44BD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 3 0 9 0 12 0 15 0 21 0 24 0;
	setAttr -s 7 ".kit[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kot[1:6]"  18 1 18 18 1 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateX";
	rename -uid "509CADA2-4E75-D611-A7D3-EF9A00B59A8D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 22.365910106184039 14 3.4905358287691231
		 26 22.365910106184039;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateY";
	rename -uid "E2AFF412-4F82-3DAB-4B4F-4EB9FE48027C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 36.473226593260186 14 18.96265232663491
		 26 36.473226593260186;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "L_Arm_IK_ctrl_rotateZ";
	rename -uid "4AE1701E-4162-96D9-DC9D-83BE4A11FC6E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 63.293549186827534 14 20.40559502218742
		 26 63.293549186827534;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_visibility";
	rename -uid "B35F4A0D-491F-B850-C207-92AEE6AD673C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 14 1 26 1;
	setAttr -s 3 ".kit[0:2]"  1 9 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateX";
	rename -uid "5C17BE25-4F6E-D039-CE7C-4EA678CCBB22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 19.132967665965992 14 5.3190336299724237
		 26 19.132967665965992;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateY";
	rename -uid "BEB4CAAB-4D30-F427-9DF0-56AC27C0E7E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 15.142574612678715 14 12.567804010640261
		 26 15.142574612678715;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "L_Arm_IK_ctrl_translateZ";
	rename -uid "AE72AA98-44B7-F92C-DB8E-B98A7D777EE7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 -5.4347147974246983e-15 14 14.350637377046798
		 26 -5.4347147974246983e-15;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleX";
	rename -uid "0B470162-4324-C6CF-E12E-91ABDD95A11A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 14 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleY";
	rename -uid "9110E2C8-49D1-C475-89DA-F8A8E4BA46B5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 14 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "L_Arm_IK_ctrl_scaleZ";
	rename -uid "712F99EE-4B93-7A5D-6D23-1EBF641D9A0D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 14 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateX";
	rename -uid "C0129541-4ACF-749C-B9C8-D6BC18C33780";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateY";
	rename -uid "D0BCDAAB-40EB-28ED-1F39-6E85E8F7DD4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "L_Arm_IK_pole_rotateZ";
	rename -uid "A495FC7A-4CE0-2BBD-CB6B-63962BCF0B99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "L_Arm_IK_pole_visibility";
	rename -uid "DD8C76F5-442C-0D34-4941-3782B906294D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "L_Arm_IK_pole_translateX";
	rename -uid "226F3593-4308-4C8F-7149-4EA3D54A7E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -5.5126390163080909e-16;
createNode animCurveTL -n "L_Arm_IK_pole_translateY";
	rename -uid "1881C11E-4684-79DA-EBCE-488216F8BE72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 -1.4006260974202649e-16;
createNode animCurveTL -n "L_Arm_IK_pole_translateZ";
	rename -uid "C97F8124-4473-410E-DA2E-47BE5CA19DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 15.272663946137403;
createNode animCurveTU -n "L_Arm_IK_pole_scaleX";
	rename -uid "51BC5E54-47E0-A665-DAA9-2F8942382A65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Arm_IK_pole_scaleY";
	rename -uid "29F0D4AC-44DF-F2DC-D79B-4F8BC85CE5B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "L_Arm_IK_pole_scaleZ";
	rename -uid "5BE366C0-4F6D-78D0-3D59-248EFC0E92B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateX";
	rename -uid "8515EA67-4510-F0A5-5753-A79D5B9FA5E3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 3.396432640246914 15 25.661360399491361
		 26 3.396432640246914;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateY";
	rename -uid "477F9CBB-4F1F-1FCA-7655-35B75FFBE749";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 10.258205580838299 15 10.925530742336077
		 26 10.258205580838299;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "R_Arm_IK_ctrl_translateZ";
	rename -uid "D8846569-476E-553B-D00A-5F8FDBA8297F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 16.195301411845819 15 -2.3639543098575911e-14
		 26 16.195301411845819;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_visibility";
	rename -uid "DF88270C-432F-C41C-1CAF-58A420E6BC6A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 15 1 26 1;
	setAttr -s 3 ".kit[0:2]"  1 9 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateX";
	rename -uid "96BCC452-4662-6DDE-074D-15BF1E154F85";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 28.211652809128626 15 37.837038742659558
		 26 28.211652809128626;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateY";
	rename -uid "68F25768-4132-09DB-13A8-C0A3DF5FCD3D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 37.734776164043787 15 34.030270973278803
		 26 37.734776164043787;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTA -n "R_Arm_IK_ctrl_rotateZ";
	rename -uid "A0ABD245-4DFD-A215-2FD2-0DA6D23BE7E1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 47.99101949362381 15 53.827309633957213
		 26 47.99101949362381;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleX";
	rename -uid "FD50F361-4B29-4B49-18F4-F0990EF0683A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 15 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleY";
	rename -uid "84D61C5E-46C2-DD8B-7C32-9192A46DFE9B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 15 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTU -n "R_Arm_IK_ctrl_scaleZ";
	rename -uid "28B660A2-4033-2687-F21E-458E9CD31BA7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  3 1 15 1 26 1;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[0:2]"  1 1 1;
	setAttr -s 3 ".kiy[0:2]"  0 0 0;
	setAttr -s 3 ".kox[0:2]"  1 1 1;
	setAttr -s 3 ".koy[0:2]"  0 0 0;
createNode animCurveTL -n "R_Arm_IK_pole_translateX";
	rename -uid "2F10A7B8-4006-3FC7-57EC-759197F26D63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1.2459563482230319e-15;
createNode animCurveTL -n "R_Arm_IK_pole_translateY";
	rename -uid "BDE290B9-416C-85B6-18BF-3EA77F8A7024";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 -1.7984988087575182e-15;
createNode animCurveTL -n "R_Arm_IK_pole_translateZ";
	rename -uid "162558F0-426E-8311-D4F0-2B88001091CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 15.765643657366175;
createNode animCurveTU -n "R_Arm_IK_pole_visibility";
	rename -uid "43FF0F36-4FCF-249D-A4CD-35B11DEE8744";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "R_Arm_IK_pole_rotateX";
	rename -uid "2E16DB72-4B3E-FD48-01AE-BF87A8A03165";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "R_Arm_IK_pole_rotateY";
	rename -uid "DD92BA3B-4832-C611-3F12-B69EA4C9D9D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTA -n "R_Arm_IK_pole_rotateZ";
	rename -uid "43F02DB8-47D5-84AD-6A7B-BB9EE51AD64C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 0;
createNode animCurveTU -n "R_Arm_IK_pole_scaleX";
	rename -uid "81672EAB-4226-E6F2-20AC-EBB4231068CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "R_Arm_IK_pole_scaleY";
	rename -uid "56D78ABF-441F-9399-A402-D0B4ECAE166A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
createNode animCurveTU -n "R_Arm_IK_pole_scaleZ";
	rename -uid "F50ECD95-4398-0CD9-ECF8-6DBB3910D2C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  15 1;
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
	setAttr -s 14 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 19 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 23 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :lightList1;
	setAttr -s 2 ".l";
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
select -ne :defaultLightSet;
	setAttr -s 2 ".dsm";
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
connectAttr "COG_ctrl_Constrain_R_IK.o" "parcelMailboxRN.phl[1]";
connectAttr "COG_ctrl_translateX.o" "parcelMailboxRN.phl[2]";
connectAttr "COG_ctrl_translateY.o" "parcelMailboxRN.phl[3]";
connectAttr "COG_ctrl_translateZ.o" "parcelMailboxRN.phl[4]";
connectAttr "COG_ctrl_rotateX.o" "parcelMailboxRN.phl[5]";
connectAttr "COG_ctrl_rotateY.o" "parcelMailboxRN.phl[6]";
connectAttr "COG_ctrl_rotateZ.o" "parcelMailboxRN.phl[7]";
connectAttr "COG_ctrl_scaleX.o" "parcelMailboxRN.phl[8]";
connectAttr "COG_ctrl_scaleY.o" "parcelMailboxRN.phl[9]";
connectAttr "COG_ctrl_scaleZ.o" "parcelMailboxRN.phl[10]";
connectAttr "COG_ctrl_visibility.o" "parcelMailboxRN.phl[11]";
connectAttr "R_Arm_IK_pole_translateX.o" "parcelMailboxRN.phl[12]";
connectAttr "R_Arm_IK_pole_translateY.o" "parcelMailboxRN.phl[13]";
connectAttr "R_Arm_IK_pole_translateZ.o" "parcelMailboxRN.phl[14]";
connectAttr "R_Arm_IK_pole_visibility.o" "parcelMailboxRN.phl[15]";
connectAttr "R_Arm_IK_pole_rotateX.o" "parcelMailboxRN.phl[16]";
connectAttr "R_Arm_IK_pole_rotateY.o" "parcelMailboxRN.phl[17]";
connectAttr "R_Arm_IK_pole_rotateZ.o" "parcelMailboxRN.phl[18]";
connectAttr "R_Arm_IK_pole_scaleX.o" "parcelMailboxRN.phl[19]";
connectAttr "R_Arm_IK_pole_scaleY.o" "parcelMailboxRN.phl[20]";
connectAttr "R_Arm_IK_pole_scaleZ.o" "parcelMailboxRN.phl[21]";
connectAttr "R_Arm_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[22]";
connectAttr "R_Arm_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[23]";
connectAttr "R_Arm_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[24]";
connectAttr "R_Arm_IK_ctrl_translateX.o" "parcelMailboxRN.phl[25]";
connectAttr "R_Arm_IK_ctrl_translateY.o" "parcelMailboxRN.phl[26]";
connectAttr "R_Arm_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[27]";
connectAttr "R_Arm_IK_ctrl_visibility.o" "parcelMailboxRN.phl[28]";
connectAttr "R_Arm_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[29]";
connectAttr "R_Arm_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[30]";
connectAttr "R_Arm_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[31]";
connectAttr "L_Arm_IK_pole_translateX.o" "parcelMailboxRN.phl[32]";
connectAttr "L_Arm_IK_pole_translateY.o" "parcelMailboxRN.phl[33]";
connectAttr "L_Arm_IK_pole_translateZ.o" "parcelMailboxRN.phl[34]";
connectAttr "L_Arm_IK_pole_rotateX.o" "parcelMailboxRN.phl[35]";
connectAttr "L_Arm_IK_pole_rotateY.o" "parcelMailboxRN.phl[36]";
connectAttr "L_Arm_IK_pole_rotateZ.o" "parcelMailboxRN.phl[37]";
connectAttr "L_Arm_IK_pole_visibility.o" "parcelMailboxRN.phl[38]";
connectAttr "L_Arm_IK_pole_scaleX.o" "parcelMailboxRN.phl[39]";
connectAttr "L_Arm_IK_pole_scaleY.o" "parcelMailboxRN.phl[40]";
connectAttr "L_Arm_IK_pole_scaleZ.o" "parcelMailboxRN.phl[41]";
connectAttr "L_Arm_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[42]";
connectAttr "L_Arm_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[43]";
connectAttr "L_Arm_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[44]";
connectAttr "L_Arm_IK_ctrl_translateX.o" "parcelMailboxRN.phl[45]";
connectAttr "L_Arm_IK_ctrl_translateY.o" "parcelMailboxRN.phl[46]";
connectAttr "L_Arm_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[47]";
connectAttr "L_Arm_IK_ctrl_visibility.o" "parcelMailboxRN.phl[48]";
connectAttr "L_Arm_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[49]";
connectAttr "L_Arm_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[50]";
connectAttr "L_Arm_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[51]";
connectAttr "L_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[52]";
connectAttr "L_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[53]";
connectAttr "L_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[54]";
connectAttr "L_IK_ctrl_translateX.o" "parcelMailboxRN.phl[55]";
connectAttr "L_IK_ctrl_translateY.o" "parcelMailboxRN.phl[56]";
connectAttr "L_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[57]";
connectAttr "L_IK_ctrl_visibility.o" "parcelMailboxRN.phl[58]";
connectAttr "L_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[59]";
connectAttr "L_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[60]";
connectAttr "L_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[61]";
connectAttr "R_IK_ctrl_rotateX.o" "parcelMailboxRN.phl[62]";
connectAttr "R_IK_ctrl_rotateY.o" "parcelMailboxRN.phl[63]";
connectAttr "R_IK_ctrl_rotateZ.o" "parcelMailboxRN.phl[64]";
connectAttr "R_IK_ctrl_translateX.o" "parcelMailboxRN.phl[65]";
connectAttr "R_IK_ctrl_translateY.o" "parcelMailboxRN.phl[66]";
connectAttr "R_IK_ctrl_translateZ.o" "parcelMailboxRN.phl[67]";
connectAttr "R_IK_ctrl_visibility.o" "parcelMailboxRN.phl[68]";
connectAttr "R_IK_ctrl_scaleX.o" "parcelMailboxRN.phl[69]";
connectAttr "R_IK_ctrl_scaleY.o" "parcelMailboxRN.phl[70]";
connectAttr "R_IK_ctrl_scaleZ.o" "parcelMailboxRN.phl[71]";
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
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Parcel_Animations.ma
