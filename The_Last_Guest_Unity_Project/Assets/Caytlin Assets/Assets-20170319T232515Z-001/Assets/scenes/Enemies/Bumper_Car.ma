//Maya ASCII 2016 scene
//Name: Bumper_Car.ma
//Last modified: Mon, Mar 13, 2017 03:21:38 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "4FF32E4C-45B4-F942-D2D9-469C3CA9B5BE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -3.1680226861556027 0.94646794940664247 0.88642085429561857 ;
	setAttr ".r" -type "double3" 338.06164724140581 2800.1999999997688 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "96C18F1A-41FF-5F84-EB49-AEBE0D64FB12";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 3.3848643704026222;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "815E51AC-4278-539B-6219-119B952FC55A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "4F2C984E-45A7-65BB-5971-7EB00D0ADD2D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "4AA80891-4529-CEC3-591F-9F881988103D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "252EA46E-4195-314F-8579-ACB1772BF4B7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "83AF1A45-4012-CB8C-6928-C7AAA1C9CC66";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "93C2C1A6-4F60-DEE7-41EC-2099A5E6BE92";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	rename -uid "321698D0-45BD-AFCF-6105-8BADB623B246";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "65EEB59D-404A-883B-0156-A685ABA4CE52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 104 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[2]" -type "float3" 0 0 0.14736593 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.14736593 ;
	setAttr ".pt[4]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[5]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[6]" -type "float3" 0 0 0.13696353 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.13696353 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.22328995 ;
	setAttr ".pt[15]" -type "float3" 0 0 0.20770827 ;
	setAttr ".pt[16]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[17]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.22328995 ;
	setAttr ".pt[20]" -type "float3" 0 0 0.20770827 ;
	setAttr ".pt[21]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[22]" -type "float3" 0 0 0.20770827 ;
	setAttr ".pt[23]" -type "float3" 0 0 0.22328995 ;
	setAttr ".pt[25]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[26]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[27]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[28]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[29]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[30]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[31]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[33]" -type "float3" 0 0 0.16291328 ;
	setAttr ".pt[34]" -type "float3" 0 0 0.24042173 ;
	setAttr ".pt[35]" -type "float3" 0 0 0.24042173 ;
	setAttr ".pt[36]" -type "float3" 0 0 0.24042173 ;
	setAttr ".pt[37]" -type "float3" 0 0 0.16291328 ;
	setAttr ".pt[39]" -type "float3" 0 0 0.063944124 ;
	setAttr ".pt[40]" -type "float3" 0 0 0.15250906 ;
	setAttr ".pt[43]" -type "float3" 0 0 0.063944124 ;
	setAttr ".pt[44]" -type "float3" 0 0 0.071418196 ;
	setAttr ".pt[45]" -type "float3" 0 0 0.059232492 ;
	setAttr ".pt[46]" -type "float3" 0 0 0.059232503 ;
	setAttr ".pt[47]" -type "float3" 0 0 0.071418203 ;
	setAttr ".pt[57]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[58]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[59]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[60]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[61]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[62]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[63]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[64]" -type "float3" 0 -0.08115194 0.059232492 ;
	setAttr ".pt[65]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[66]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[67]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[68]" -type "float3" 0 -0.08115194 0.059232492 ;
	setAttr ".pt[69]" -type "float3" 0 -0.08115194 0.20770827 ;
	setAttr ".pt[70]" -type "float3" 0 -0.08115194 0.13696353 ;
	setAttr ".pt[71]" -type "float3" 0 -0.08115194 0.20770827 ;
	setAttr ".pt[72]" -type "float3" 0 -0.08115194 0.20770827 ;
	setAttr ".pt[73]" -type "float3" 0 -0.08115194 0.13696353 ;
	setAttr ".pt[74]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[75]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[76]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[77]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[78]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[79]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[80]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[81]" -type "float3" 0 -0.028311357 0 ;
	setAttr ".pt[83]" -type "float3" 0 -0.028311357 0 ;
	setAttr ".pt[84]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[85]" -type "float3" 0 -0.028311357 0 ;
	setAttr ".pt[86]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[88]" -type "float3" 0 0 0.38193884 ;
	setAttr ".pt[89]" -type "float3" 0 0 0.15598723 ;
	setAttr ".pt[90]" -type "float3" 0 -0.18980025 0.15665406 ;
	setAttr ".pt[91]" -type "float3" 0 -0.18980025 0 ;
	setAttr ".pt[92]" -type "float3" 0 0.14240386 0 ;
	setAttr ".pt[93]" -type "float3" 0 0 0.15607242 ;
	setAttr ".pt[94]" -type "float3" 0 0.14240386 0 ;
	setAttr ".pt[95]" -type "float3" 0 -0.096145049 0 ;
	setAttr ".pt[96]" -type "float3" 0 -0.096145049 0.061183855 ;
	setAttr ".pt[97]" -type "float3" 0 -0.089148618 0.06112713 ;
	setAttr ".pt[98]" -type "float3" 0 -0.089148618 0 ;
	setAttr ".pt[99]" -type "float3" 0 -0.12669951 0.21373639 ;
	setAttr ".pt[100]" -type "float3" 0 -0.1977981 0.14075282 ;
	setAttr ".pt[101]" -type "float3" 0 -0.26340342 0.21597524 ;
	setAttr ".pt[102]" -type "float3" 0 -0.12669951 0.21379313 ;
	setAttr ".pt[103]" -type "float3" 0 -0.20479453 0.14086629 ;
	setAttr ".pt[104]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[105]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[106]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[107]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[108]" -type "float3" 0 -0.08115194 0.38193884 ;
	setAttr ".pt[109]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[110]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[111]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[112]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[113]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[114]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[115]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[116]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[117]" -type "float3" 0 -0.08115194 0.05991042 ;
	setAttr ".pt[118]" -type "float3" 0 -0.08115194 0.13831937 ;
	setAttr ".pt[119]" -type "float3" 0 -0.08115194 0.20986518 ;
	setAttr ".pt[120]" -type "float3" 0 -0.08115194 0.21066627 ;
	setAttr ".pt[121]" -type "float3" 0 -0.08115194 0.20988551 ;
	setAttr ".pt[122]" -type "float3" 0 -0.08115194 0.13835999 ;
	setAttr ".pt[123]" -type "float3" 0 -0.08115194 0.059930697 ;
	setAttr ".pt[124]" -type "float3" 0 -0.08115194 0 ;
	setAttr ".pt[125]" -type "float3" 0 -0.08115194 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B912D324-4D3D-9497-60B6-3D84C3AED767";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "2CB62502-4716-40C9-D777-8796631BCD77";
createNode displayLayer -n "defaultLayer";
	rename -uid "FF6AC73C-4271-785E-BAD6-5AB8EC71B4D5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A4DA6A6C-4B4A-90F7-ABB3-03AF393DE3BB";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "A6102A5A-4190-68EB-74E1-C78CD1649BCC";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "F72A880A-4889-EA55-3048-0B8B63D0C421";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".w" 1;
	setAttr ".h" 1;
	setAttr ".d" 1;
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit1";
	rename -uid "46387C2C-4DFE-741B-C1A1-C19A694BD059";
	setAttr -s 5 ".e[0:4]"  0.181942 0.181942 0.81805801 0.81805801 0.181942;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "35E74F86-43D3-0DED-5C75-1FAF1E177547";
	setAttr -s 7 ".e[0:6]"  0.49468201 0.49468201 0.49468201 0.50531799
		 0.50531799 0.50531799 0.49468201;
	setAttr -s 7 ".d[0:6]"  -2147483642 -2147483641 -2147483631 -2147483637 -2147483638 -2147483629 
		-2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "54FBF8B2-4AB4-9F36-943B-D5BD3BCA06D9";
	setAttr -s 9 ".e[0:8]"  0.50276899 0.49723101 0.50276899 0.49723101
		 0.50276899 0.50276899 0.50276899 0.50276899 0.50276899;
	setAttr -s 9 ".d[0:8]"  -2147483648 -2147483619 -2147483645 -2147483630 -2147483646 -2147483622 
		-2147483647 -2147483632 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "1CB3DD8B-4E63-B0FB-C20F-DAB089E8DCBA";
	setAttr -s 9 ".e[0:8]"  0.46329701 0.53670299 0.46329701 0.53670299
		 0.46329701 0.46329701 0.46329701 0.46329701 0.46329701;
	setAttr -s 9 ".d[0:8]"  -2147483648 -2147483615 -2147483645 -2147483613 -2147483646 -2147483622 
		-2147483647 -2147483632 -2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "CD147970-4E04-E8E5-8721-7D82472C5E85";
	setAttr -s 9 ".e[0:8]"  0.53696901 0.46303099 0.53696901 0.46303099
		 0.46303099 0.46303099 0.46303099 0.46303099 0.53696901;
	setAttr -s 9 ".d[0:8]"  -2147483630 -2147483614 -2147483619 -2147483616 -2147483609 -2147483610 
		-2147483611 -2147483612 -2147483630;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "A87F293B-4245-D06C-3A20-FA96A96BA520";
	setAttr -s 13 ".e[0:12]"  0.51663297 0.483367 0.483367 0.51663297 0.51663297
		 0.483367 0.483367 0.483367 0.51663297 0.51663297 0.483367 0.51663297 0.51663297;
	setAttr -s 13 ".d[0:12]"  -2147483644 -2147483585 -2147483601 -2147483573 -2147483643 -2147483620 
		-2147483634 -2147483576 -2147483606 -2147483590 -2147483633 -2147483618 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "7EF82E51-47F2-EA16-C345-9D808C34632C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[42:53]" -type "float3"  -3.71775651 0 3.71775651 -1.98579288
		 0 3.71775651 0.020589035 0 3.71775651 1.73249245 0 3.71775651 3.71775651 0 3.71775651
		 3.71775651 0 0.039542016 3.71775651 0 -3.71775651 1.73249245 0 -3.71775651 0.020589035
		 0 -3.71775651 -1.98579288 0 -3.71775651 -3.71775651 0 -3.71775651 -3.71775651 0 0.039542016;
createNode polySplit -n "polySplit7";
	rename -uid "D461A409-4934-FF80-EE5A-A7AA93C2730A";
	setAttr -s 15 ".e[0:14]"  0.50672698 0.49327299 0.49327299 0.50672698
		 0.50672698 0.49327299 0.49327299 0.49327299 0.49327299 0.50672698 0.50672698 0.49327299
		 0.50672698 0.50672698 0.50672698;
	setAttr -s 15 ".d[0:14]"  -2147483638 -2147483591 -2147483607 -2147483575 -2147483637 -2147483551 
		-2147483626 -2147483627 -2147483570 -2147483604 -2147483588 -2147483628 -2147483629 -2147483546 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "3A89AB63-492E-C327-21F1-7CBBCF77C385";
	setAttr -s 15 ".e[0:14]"  0.57566702 0.42433301 0.42433301 0.57566702
		 0.57566702 0.57566702 0.57566702 0.42433301 0.42433301 0.57566702 0.57566702 0.42433301
		 0.42433301 0.42433301 0.57566702;
	setAttr -s 15 ".d[0:14]"  -2147483642 -2147483587 -2147483603 -2147483571 -2147483641 -2147483631 
		-2147483552 -2147483625 -2147483574 -2147483608 -2147483592 -2147483624 -2147483545 -2147483623 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "E743156E-4D8C-D858-508A-40A7DE0493AD";
	setAttr ".ics" -type "componentList" 7 "f[1]" "f[10]" "f[20:21]" "f[28:29]" "f[37:38]" "f[59:62]" "f[66:69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.0041688918 -0.031938668 ;
	setAttr ".rs" 35274;
	setAttr ".lt" -type "double3" -3.552713678800501e-017 -7.9743090970404338e-017 0.25710873727477013 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.0041688919067382818 -0.73304412841796873 ;
	setAttr ".cbx" -type "double3" 0.5 -0.0041688919067382818 0.66916679382324218 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "F5EF8D7D-4A85-9795-296B-8D876430523C";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[3]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[4]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[5]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[12]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[13]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[18]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[19]" -type "float3" 0 0 9.6165762 ;
	setAttr ".tk[20]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[21]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[22]" -type "float3" 0 -50.416889 -23.304417 ;
	setAttr ".tk[23]" -type "float3" 0 -50.416889 9.6165762 ;
	setAttr ".tk[24]" -type "float3" 0 -50.416889 16.916677 ;
	setAttr ".tk[25]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[26]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[27]" -type "float3" 0 0 9.6165762 ;
	setAttr ".tk[28]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[29]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[30]" -type "float3" 0 -50.416889 -23.304417 ;
	setAttr ".tk[31]" -type "float3" 0 -50.416889 9.6165762 ;
	setAttr ".tk[32]" -type "float3" 0 -50.416889 16.916677 ;
	setAttr ".tk[33]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[34]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[35]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[36]" -type "float3" 0 0 9.6165762 ;
	setAttr ".tk[37]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[38]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[39]" -type "float3" 0 -50.416889 16.916677 ;
	setAttr ".tk[40]" -type "float3" 0 -50.416889 9.6165762 ;
	setAttr ".tk[41]" -type "float3" 0 -50.416889 -23.304417 ;
	setAttr ".tk[43]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[44]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[45]" -type "float3" 0 0 16.916677 ;
	setAttr ".tk[49]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[50]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[51]" -type "float3" 0 0 -23.304417 ;
	setAttr ".tk[55]" -type "float3" 0 0 -26.19536 ;
	setAttr ".tk[56]" -type "float3" 0 0 -26.19536 ;
	setAttr ".tk[57]" -type "float3" 0 0 -26.19536 ;
	setAttr ".tk[61]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[62]" -type "float3" 0 -50.416889 -26.19536 ;
	setAttr ".tk[63]" -type "float3" 0 -50.416889 -26.19536 ;
	setAttr ".tk[64]" -type "float3" 0 -50.416889 -26.19536 ;
	setAttr ".tk[65]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[68]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[69]" -type "float3" 0 -50.416889 18.354597 ;
	setAttr ".tk[70]" -type "float3" 0 -50.416889 18.354597 ;
	setAttr ".tk[71]" -type "float3" 0 -50.416889 18.354597 ;
	setAttr ".tk[72]" -type "float3" 0 -50.416889 0 ;
	setAttr ".tk[76]" -type "float3" 0 0 18.354597 ;
	setAttr ".tk[77]" -type "float3" 0 0 18.354597 ;
	setAttr ".tk[78]" -type "float3" 0 0 18.354597 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "8D6B4407-41DB-964B-1177-F7AF1446FA17";
	setAttr ".ics" -type "componentList" 1 "f[66:69]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.038090132 0.40082192 ;
	setAttr ".rs" 64720;
	setAttr ".lt" -type "double3" 8.8215025562110581e-017 0.016835993681366328 0.22012768957034298 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45636756896972658 0.02563312530517578 0.19365892410278321 ;
	setAttr ".cbx" -type "double3" 0.45636756896972658 0.050547142028808598 0.60798492431640627 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "DBA4A92C-4A52-EE77-1165-2191F422F6F3";
	setAttr ".uopa" yes;
	setAttr -s 73 ".tk";
	setAttr ".tk[0]" -type "float3" 1.0221393 0 -1.0874308 ;
	setAttr ".tk[1]" -type "float3" -1.0221393 0 -1.0874308 ;
	setAttr ".tk[2]" -type "float3" 4.3632421 -14.53303 -4.6419535 ;
	setAttr ".tk[3]" -type "float3" -4.3632421 -14.53303 -4.6419535 ;
	setAttr ".tk[4]" -type "float3" 4.3632421 -14.53303 4.0845299 ;
	setAttr ".tk[5]" -type "float3" -4.3632421 -14.53303 4.0845299 ;
	setAttr ".tk[6]" -type "float3" 1.0221393 0 0.95684773 ;
	setAttr ".tk[7]" -type "float3" -1.0221393 0 0.95684773 ;
	setAttr ".tk[8]" -type "float3" 4.3632421 -1.0922273 -4.6419535 ;
	setAttr ".tk[9]" -type "float3" -4.3632421 -1.0922273 -4.6419535 ;
	setAttr ".tk[10]" -type "float3" -4.3632421 -1.0922273 4.0845299 ;
	setAttr ".tk[11]" -type "float3" 4.3632421 -1.0922273 4.0845299 ;
	setAttr ".tk[12]" -type "float3" 4.3632421 -14.53303 -0.32511964 ;
	setAttr ".tk[13]" -type "float3" -4.3632421 -14.53303 -0.32511964 ;
	setAttr ".tk[14]" -type "float3" -4.3632421 -1.0922273 -0.32511964 ;
	setAttr ".tk[15]" -type "float3" -1.0221393 0 -0.076162994 ;
	setAttr ".tk[16]" -type "float3" 1.0221393 0 -0.076162994 ;
	setAttr ".tk[17]" -type "float3" 4.3632421 -1.0922273 -0.32511964 ;
	setAttr ".tk[18]" -type "float3" -0.0056606326 0 -1.4332548 ;
	setAttr ".tk[20]" -type "float3" -0.0056606326 0 1.4332548 ;
	setAttr ".tk[21]" -type "float3" -0.024163742 -1.0922273 6.1181865 ;
	setAttr ".tk[22]" -type "float3" -0.024163742 -14.53303 6.1181865 ;
	setAttr ".tk[23]" -type "float3" -0.024163742 -14.53303 -6.1181865 ;
	setAttr ".tk[24]" -type "float3" -0.024163742 -1.0922273 -6.1181865 ;
	setAttr ".tk[25]" -type "float3" 0.54596263 0 -1.4332548 ;
	setAttr ".tk[27]" -type "float3" 0.54596263 0 1.4332548 ;
	setAttr ".tk[28]" -type "float3" 2.3305688 -1.0922273 6.1181865 ;
	setAttr ".tk[29]" -type "float3" 2.3305688 -14.53303 6.1181865 ;
	setAttr ".tk[30]" -type "float3" 2.3305688 -14.53303 -6.1181865 ;
	setAttr ".tk[31]" -type "float3" 2.3305688 -1.0922273 -6.1181865 ;
	setAttr ".tk[32]" -type "float3" -2.0332916 -1.0922273 6.1181865 ;
	setAttr ".tk[33]" -type "float3" -0.47632173 0 1.4332548 ;
	setAttr ".tk[35]" -type "float3" -0.47632173 0 -1.4332548 ;
	setAttr ".tk[36]" -type "float3" -2.0332916 -1.0922273 -6.1181865 ;
	setAttr ".tk[37]" -type "float3" -2.0332916 -14.53303 -6.1181865 ;
	setAttr ".tk[38]" -type "float3" -2.0332916 -14.53303 6.1181865 ;
	setAttr ".tk[51]" -type "float3" 1.0221393 0 0.43339327 ;
	setAttr ".tk[55]" -type "float3" -1.0221393 0 0.43339327 ;
	setAttr ".tk[57]" -type "float3" -4.3632421 -1.0922273 1.8500413 ;
	setAttr ".tk[58]" -type "float3" -4.3632421 -14.53303 1.8500413 ;
	setAttr ".tk[59]" -type "float3" 4.3632421 -14.53303 1.8500413 ;
	setAttr ".tk[60]" -type "float3" 4.3632421 -1.0922273 1.8500414 ;
	setAttr ".tk[62]" -type "float3" 4.3632421 -14.53303 -2.1568947 ;
	setAttr ".tk[63]" -type "float3" -4.3632421 -14.53303 -2.1568947 ;
	setAttr ".tk[64]" -type "float3" -4.3632421 -1.0922273 -2.1568947 ;
	setAttr ".tk[66]" -type "float3" -1.0221393 0 -0.50527728 ;
	setAttr ".tk[70]" -type "float3" 1.0221393 0 -0.50527728 ;
	setAttr ".tk[72]" -type "float3" 4.3632421 -1.0922273 -2.1568947 ;
	setAttr ".tk[73]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[74]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[75]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[76]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[77]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[78]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[79]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[80]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[81]" -type "float3" 0 -20.239271 0 ;
	setAttr ".tk[82]" -type "float3" 4.3632421 -22.730673 -0.32511964 ;
	setAttr ".tk[83]" -type "float3" 4.3632421 -22.730673 1.8500413 ;
	setAttr ".tk[84]" -type "float3" 4.3632421 -22.730673 -2.1568947 ;
	setAttr ".tk[85]" -type "float3" -4.3632421 -22.730673 -2.1568947 ;
	setAttr ".tk[86]" -type "float3" -4.3632421 -22.730673 -0.32511964 ;
	setAttr ".tk[87]" -type "float3" -4.3632421 -22.730673 1.8500413 ;
	setAttr ".tk[88]" -type "float3" -2.0332916 -22.730673 6.1181865 ;
	setAttr ".tk[89]" -type "float3" -4.3632421 -22.730673 4.0845299 ;
	setAttr ".tk[90]" -type "float3" -0.024163742 -22.730673 6.1181865 ;
	setAttr ".tk[91]" -type "float3" 2.3305688 -22.730673 6.1181865 ;
	setAttr ".tk[92]" -type "float3" 4.3632421 -22.730673 4.0845299 ;
	setAttr ".tk[93]" -type "float3" 4.3632421 -22.730673 -4.6419535 ;
	setAttr ".tk[94]" -type "float3" 2.3305688 -22.730673 -6.1181865 ;
	setAttr ".tk[95]" -type "float3" -0.024163742 -22.730673 -6.1181865 ;
	setAttr ".tk[96]" -type "float3" -2.0332916 -22.730673 -6.1181865 ;
	setAttr ".tk[97]" -type "float3" -4.3632421 -22.730673 -4.6419535 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "0AFB9313-44A3-07DE-1416-22B10F568396";
	setAttr ".ics" -type "componentList" 5 "f[1]" "f[20]" "f[28]" "f[38]" "f[59:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.038090132 -0.28518924 ;
	setAttr ".rs" 51907;
	setAttr ".lt" -type "double3" -3.552713678800501e-017 -5.041478533350242e-017 0.16743782633271387 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45636756896972658 0.02563312530517578 -0.67186225891113283 ;
	setAttr ".cbx" -type "double3" 0.45636756896972658 0.050547142028808598 0.10148375511169434 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "40B24E88-4CC4-91EA-4DED-B4A633AB2473";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[3]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[4]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[5]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[12]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[13]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[22]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[23]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[29]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[30]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[37]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[38]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[58]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[59]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[62]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[63]" -type "float3" 0 -8.2483015 0 ;
	setAttr ".tk[73]" -type "float3" 0 -11.95558 -14.94362 ;
	setAttr ".tk[74]" -type "float3" 0 -11.95558 -14.94362 ;
	setAttr ".tk[75]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[76]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[77]" -type "float3" 0 -11.95558 -14.94362 ;
	setAttr ".tk[78]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[79]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[80]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[81]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[82]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[83]" -type "float3" 0 -11.95558 0 ;
	setAttr ".tk[84]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[85]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[86]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[87]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[88]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[89]" -type "float3" 0 -11.712434 0 ;
	setAttr ".tk[90]" -type "float3" 0 -11.342984 0 ;
	setAttr ".tk[91]" -type "float3" 0 -11.342984 0 ;
	setAttr ".tk[92]" -type "float3" 0 -11.342984 0 ;
	setAttr ".tk[93]" -type "float3" 0 -11.342984 0 ;
	setAttr ".tk[94]" -type "float3" 0 -11.342984 0 ;
	setAttr ".tk[107]" -type "float3" 0 0 -14.94362 ;
	setAttr ".tk[108]" -type "float3" 0 0 -14.94362 ;
	setAttr ".tk[110]" -type "float3" 0 0 -14.94362 ;
createNode polySplit -n "polySplit9";
	rename -uid "6344A41E-4E0B-9A67-2BD0-ACB0130CE27B";
	setAttr -s 11 ".e[0:10]"  0.301916 0.301916 0.301916 0.301916 0.301916
		 0.301916 0.301916 0.301916 0.301916 0.301916 0.301916;
	setAttr -s 11 ".d[0:10]"  -2147483469 -2147483468 -2147483459 -2147483454 -2147483449 -2147483451 
		-2147483456 -2147483461 -2147483466 -2147483464 -2147483469;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "8259A7AC-434D-CB7B-9DE6-D9849D3EBFB2";
	setAttr -s 13 ".e[0:12]"  0.357811 0.357811 0.357811 0.357811 0.357811
		 0.357811 0.357811 0.357811 0.357811 0.357811 0.357811 0.357811 0.357811;
	setAttr -s 13 ".d[0:12]"  -2147483445 -2147483443 -2147483429 -2147483431 -2147483424 -2147483426 
		-2147483421 -2147483418 -2147483415 -2147483434 -2147483436 -2147483439 -2147483445;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "71552F4E-4287-03A2-D406-1CBDF45B7219";
	setAttr ".ics" -type "componentList" 8 "e[1:2]" "e[6:7]" "e[20:21]" "e[35:36]" "e[48:49]" "e[62:63]" "e[101:102]" "e[115:116]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "B62490F5-4046-0B64-AC27-E5813A8F9C61";
	setAttr ".uopa" yes;
	setAttr -s 76 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[3]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[4]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[5]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[8]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[9]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[10]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[11]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[12]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[13]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[14]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[17]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[21]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[22]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[23]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[24]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[28]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[29]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[30]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[31]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[32]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[36]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[37]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[38]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[57]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[58]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[59]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[60]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[62]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[63]" -type "float3" 0 -6.4246163 0 ;
	setAttr ".tk[64]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[72]" -type "float3" 0 -1.9775813 0 ;
	setAttr ".tk[73]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[74]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[75]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[76]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[77]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[78]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[79]" -type "float3" 0 -11.226254 2.0628626 ;
	setAttr ".tk[80]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[81]" -type "float3" 0 -11.226254 -2.0628626 ;
	setAttr ".tk[82]" -type "float3" 0 -11.413777 -2.1912885 ;
	setAttr ".tk[83]" -type "float3" 0 -11.185321 2.4989991 ;
	setAttr ".tk[84]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[85]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[86]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[87]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[88]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[89]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[90]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[91]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[92]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[93]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[94]" -type "float3" 0 -11.852515 0 ;
	setAttr ".tk[120]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[121]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[122]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[123]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[124]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[125]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[126]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[127]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[128]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[129]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[130]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[131]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[132]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[133]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[134]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[135]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[136]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[137]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[138]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[139]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[140]" -type "float3" 0 -18.791195 0 ;
	setAttr ".tk[141]" -type "float3" 0 -18.791195 0 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "2145B9E6-4926-FE8C-AEB8-2D89328AB088";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1857\n                -height 1632\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1857\n            -height 1632\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1857\\n    -height 1632\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1857\\n    -height 1632\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1D6BF997-4143-2696-ADF0-94958A943E9F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".ovt" no;
	setAttr ".povt" no;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polyDelEdge1.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplit8.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweak5.out" "polyDelEdge1.ip";
connectAttr "polySplit10.out" "polyTweak5.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Bumper_Car.ma
