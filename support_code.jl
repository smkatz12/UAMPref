using PGFPlots
using Colors
using ColorSchemes
using LinearAlgebra
pasteljet = ColorMaps.RGBArrayMap(ColorSchemes.viridis, interpolation_levels=500, invert=true);
pastelRedBlue = ColorMaps.RGBArrayMap([RGB(246/255, 21/255, 92/255),
                                       RGB(1.0,1.0,1.0),
                                       RGB( 27/255,161/255,234/255)], interpolation_levels=500);
pushPGFPlotsPreamble("\\pgfplotscreateplotcyclelist{pastelcolors}{%")
pushPGFPlotsPreamble("  solid, pastelPurple, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelBlue, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelGreen, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelRed, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelMagenta, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelOrange, mark=none\\\\%")
pushPGFPlotsPreamble("  solid, pastelSeaGreen, mark=none\\\\%")
pushPGFPlotsPreamble("}")
pushPGFPlotsPreamble("\\usepackage{amsmath}")
pushPGFPlotsPreamble("\\usepgfplotslibrary{fillbetween}")
pushPGFPlotsPreamble("\\usepgfplotslibrary{statistics}")
pushPGFPlotsPreamble("\\definecolor{pastelMagenta}{HTML}{FF48CF}")
pushPGFPlotsPreamble("\\definecolor{pastelPurple}{HTML}{8770FE}")
pushPGFPlotsPreamble("\\definecolor{pastelBlue}{HTML}{1BA1EA}")
pushPGFPlotsPreamble("\\definecolor{pastelSeaGreen}{HTML}{14B57F}")
pushPGFPlotsPreamble("\\definecolor{pastelGreen}{HTML}{3EAA0D}")
pushPGFPlotsPreamble("\\definecolor{pastelOrange}{HTML}{C38D09}")
pushPGFPlotsPreamble("\\definecolor{pastelRed}{HTML}{F5615C}")
pushPGFPlotsPreamble("\\tikzset{myarrow/.style={line width = 0.05cm, ->, rounded corners=5mm}}")
pushPGFPlotsPreamble("\\newcommand{\\vect}[1]{\\boldsymbol{\\mathbf{#1}}}")
pushPGFPlotsPreamble("\\pgfplotsset{")
pushPGFPlotsPreamble("   	colormap={pasteljet}{")
pushPGFPlotsPreamble("		rgb=(0.99325,0.90616,0.14394)")
pushPGFPlotsPreamble("		rgb=(0.98387,0.90487,0.13690)")
pushPGFPlotsPreamble("		rgb=(0.97442,0.90359,0.13021)")
pushPGFPlotsPreamble("		rgb=(0.96489,0.90232,0.12394)")
pushPGFPlotsPreamble("		rgb=(0.95530,0.90107,0.11813)")
pushPGFPlotsPreamble("		rgb=(0.94564,0.89982,0.11284)")
pushPGFPlotsPreamble("		rgb=(0.93590,0.89857,0.10813)")
pushPGFPlotsPreamble("		rgb=(0.92611,0.89733,0.10407)")
pushPGFPlotsPreamble("		rgb=(0.91624,0.89609,0.10072)")
pushPGFPlotsPreamble("		rgb=(0.90631,0.89485,0.09813)")
pushPGFPlotsPreamble("		rgb=(0.89632,0.89362,0.09634)")
pushPGFPlotsPreamble("		rgb=(0.88627,0.89237,0.09537)")
pushPGFPlotsPreamble("		rgb=(0.87617,0.89112,0.09525)")
pushPGFPlotsPreamble("		rgb=(0.86601,0.88987,0.09595)")
pushPGFPlotsPreamble("		rgb=(0.85581,0.88860,0.09745)")
pushPGFPlotsPreamble("		rgb=(0.84556,0.88732,0.09970)")
pushPGFPlotsPreamble("		rgb=(0.83527,0.88603,0.10265)")
pushPGFPlotsPreamble("		rgb=(0.82494,0.88472,0.10622)")
pushPGFPlotsPreamble("		rgb=(0.81458,0.88339,0.11035)")
pushPGFPlotsPreamble("		rgb=(0.80418,0.88205,0.11496)")
pushPGFPlotsPreamble("		rgb=(0.79376,0.88068,0.12001)")
pushPGFPlotsPreamble("		rgb=(0.78331,0.87928,0.12540)")
pushPGFPlotsPreamble("		rgb=(0.77285,0.87787,0.13111)")
pushPGFPlotsPreamble("		rgb=(0.76237,0.87642,0.13706)")
pushPGFPlotsPreamble("		rgb=(0.75188,0.87495,0.14323)")
pushPGFPlotsPreamble("		rgb=(0.74139,0.87345,0.14956)")
pushPGFPlotsPreamble("		rgb=(0.73089,0.87192,0.15603)")
pushPGFPlotsPreamble("		rgb=(0.72039,0.87035,0.16260)")
pushPGFPlotsPreamble("		rgb=(0.70990,0.86875,0.16926)")
pushPGFPlotsPreamble("		rgb=(0.69942,0.86712,0.17597)")
pushPGFPlotsPreamble("		rgb=(0.68894,0.86545,0.18272)")
pushPGFPlotsPreamble("		rgb=(0.67849,0.86374,0.18950)")
pushPGFPlotsPreamble("		rgb=(0.66805,0.86200,0.19629)")
pushPGFPlotsPreamble("		rgb=(0.65764,0.86022,0.20308)")
pushPGFPlotsPreamble("		rgb=(0.64726,0.85840,0.20986)")
pushPGFPlotsPreamble("		rgb=(0.63690,0.85654,0.21662)")
pushPGFPlotsPreamble("		rgb=(0.62658,0.85464,0.22335)")
pushPGFPlotsPreamble("		rgb=(0.61629,0.85271,0.23005)")
pushPGFPlotsPreamble("		rgb=(0.60604,0.85073,0.23671)")
pushPGFPlotsPreamble("		rgb=(0.59584,0.84872,0.24333)")
pushPGFPlotsPreamble("		rgb=(0.58568,0.84666,0.24990)")
pushPGFPlotsPreamble("		rgb=(0.57556,0.84457,0.25642)")
pushPGFPlotsPreamble("		rgb=(0.56550,0.84243,0.26288)")
pushPGFPlotsPreamble("		rgb=(0.55548,0.84025,0.26928)")
pushPGFPlotsPreamble("		rgb=(0.54552,0.83804,0.27563)")
pushPGFPlotsPreamble("		rgb=(0.53562,0.83579,0.28191)")
pushPGFPlotsPreamble("		rgb=(0.52578,0.83349,0.28813)")
pushPGFPlotsPreamble("		rgb=(0.51599,0.83116,0.29428)")
pushPGFPlotsPreamble("		rgb=(0.50627,0.82879,0.30036)")
pushPGFPlotsPreamble("		rgb=(0.49661,0.82638,0.30638)")
pushPGFPlotsPreamble("		rgb=(0.48703,0.82393,0.31232)")
pushPGFPlotsPreamble("		rgb=(0.47750,0.82144,0.31820)")
pushPGFPlotsPreamble("		rgb=(0.46805,0.81892,0.32400)")
pushPGFPlotsPreamble("		rgb=(0.45867,0.81636,0.32973)")
pushPGFPlotsPreamble("		rgb=(0.44937,0.81377,0.33538)")
pushPGFPlotsPreamble("		rgb=(0.44014,0.81114,0.34097)")
pushPGFPlotsPreamble("		rgb=(0.43098,0.80847,0.34648)")
pushPGFPlotsPreamble("		rgb=(0.42191,0.80577,0.35191)")
pushPGFPlotsPreamble("		rgb=(0.41291,0.80304,0.35727)")
pushPGFPlotsPreamble("		rgb=(0.40400,0.80027,0.36255)")
pushPGFPlotsPreamble("		rgb=(0.39517,0.79748,0.36776)")
pushPGFPlotsPreamble("		rgb=(0.38643,0.79464,0.37289)")
pushPGFPlotsPreamble("		rgb=(0.37778,0.79178,0.37794)")
pushPGFPlotsPreamble("		rgb=(0.36921,0.78889,0.38291)")
pushPGFPlotsPreamble("		rgb=(0.36074,0.78596,0.38781)")
pushPGFPlotsPreamble("		rgb=(0.35236,0.78301,0.39264)")
pushPGFPlotsPreamble("		rgb=(0.34407,0.78003,0.39738)")
pushPGFPlotsPreamble("		rgb=(0.33588,0.77702,0.40205)")
pushPGFPlotsPreamble("		rgb=(0.32780,0.77398,0.40664)")
pushPGFPlotsPreamble("		rgb=(0.31981,0.77091,0.41115)")
pushPGFPlotsPreamble("		rgb=(0.31193,0.76782,0.41559)")
pushPGFPlotsPreamble("		rgb=(0.30415,0.76470,0.41994)")
pushPGFPlotsPreamble("		rgb=(0.29648,0.76156,0.42422)")
pushPGFPlotsPreamble("		rgb=(0.28892,0.75839,0.42843)")
pushPGFPlotsPreamble("		rgb=(0.28148,0.75520,0.43255)")
pushPGFPlotsPreamble("		rgb=(0.27415,0.75199,0.43660)")
pushPGFPlotsPreamble("		rgb=(0.26694,0.74875,0.44057)")
pushPGFPlotsPreamble("		rgb=(0.25986,0.74549,0.44447)")
pushPGFPlotsPreamble("		rgb=(0.25290,0.74221,0.44828)")
pushPGFPlotsPreamble("		rgb=(0.24607,0.73891,0.45202)")
pushPGFPlotsPreamble("		rgb=(0.23937,0.73559,0.45569)")
pushPGFPlotsPreamble("		rgb=(0.23281,0.73225,0.45928)")
pushPGFPlotsPreamble("		rgb=(0.22640,0.72889,0.46279)")
pushPGFPlotsPreamble("		rgb=(0.22012,0.72551,0.46623)")
pushPGFPlotsPreamble("		rgb=(0.21400,0.72211,0.46959)")
pushPGFPlotsPreamble("		rgb=(0.20803,0.71870,0.47287)")
pushPGFPlotsPreamble("		rgb=(0.20222,0.71527,0.47608)")
pushPGFPlotsPreamble("		rgb=(0.19657,0.71183,0.47922)")
pushPGFPlotsPreamble("		rgb=(0.19109,0.70837,0.48228)")
pushPGFPlotsPreamble("		rgb=(0.18578,0.70489,0.48527)")
pushPGFPlotsPreamble("		rgb=(0.18065,0.70140,0.48819)")
pushPGFPlotsPreamble("		rgb=(0.17571,0.69790,0.49103)")
pushPGFPlotsPreamble("		rgb=(0.17095,0.69438,0.49380)")
pushPGFPlotsPreamble("		rgb=(0.16638,0.69086,0.49650)")
pushPGFPlotsPreamble("		rgb=(0.16202,0.68732,0.49913)")
pushPGFPlotsPreamble("		rgb=(0.15785,0.68376,0.50169)")
pushPGFPlotsPreamble("		rgb=(0.15389,0.68020,0.50417)")
pushPGFPlotsPreamble("		rgb=(0.15015,0.67663,0.50659)")
pushPGFPlotsPreamble("		rgb=(0.14662,0.67305,0.50894)")
pushPGFPlotsPreamble("		rgb=(0.14330,0.66946,0.51121)")
pushPGFPlotsPreamble("		rgb=(0.14021,0.66586,0.51343)")
pushPGFPlotsPreamble("		rgb=(0.13734,0.66225,0.51557)")
pushPGFPlotsPreamble("		rgb=(0.13469,0.65864,0.51765)")
pushPGFPlotsPreamble("		rgb=(0.13227,0.65501,0.51966)")
pushPGFPlotsPreamble("		rgb=(0.13007,0.65138,0.52161)")
pushPGFPlotsPreamble("		rgb=(0.12809,0.64775,0.52349)")
pushPGFPlotsPreamble("		rgb=(0.12633,0.64411,0.52531)")
pushPGFPlotsPreamble("		rgb=(0.12478,0.64046,0.52707)")
pushPGFPlotsPreamble("		rgb=(0.12344,0.63681,0.52876)")
pushPGFPlotsPreamble("		rgb=(0.12231,0.63315,0.53040)")
pushPGFPlotsPreamble("		rgb=(0.12138,0.62949,0.53197)")
pushPGFPlotsPreamble("		rgb=(0.12064,0.62583,0.53349)")
pushPGFPlotsPreamble("		rgb=(0.12008,0.62216,0.53495)")
pushPGFPlotsPreamble("		rgb=(0.11970,0.61849,0.53635)")
pushPGFPlotsPreamble("		rgb=(0.11948,0.61482,0.53769)")
pushPGFPlotsPreamble("		rgb=(0.11942,0.61114,0.53898)")
pushPGFPlotsPreamble("		rgb=(0.11951,0.60746,0.54022)")
pushPGFPlotsPreamble("		rgb=(0.11974,0.60379,0.54140)")
pushPGFPlotsPreamble("		rgb=(0.12009,0.60010,0.54253)")
pushPGFPlotsPreamble("		rgb=(0.12057,0.59642,0.54361)")
pushPGFPlotsPreamble("		rgb=(0.12115,0.59274,0.54464)")
pushPGFPlotsPreamble("		rgb=(0.12183,0.58905,0.54562)")
pushPGFPlotsPreamble("		rgb=(0.12261,0.58537,0.54656)")
pushPGFPlotsPreamble("		rgb=(0.12346,0.58169,0.54744)")
pushPGFPlotsPreamble("		rgb=(0.12440,0.57800,0.54829)")
pushPGFPlotsPreamble("		rgb=(0.12539,0.57432,0.54909)")
pushPGFPlotsPreamble("		rgb=(0.12645,0.57063,0.54984)")
pushPGFPlotsPreamble("		rgb=(0.12757,0.56695,0.55056)")
pushPGFPlotsPreamble("		rgb=(0.12873,0.56327,0.55123)")
pushPGFPlotsPreamble("		rgb=(0.12993,0.55958,0.55186)")
pushPGFPlotsPreamble("		rgb=(0.13117,0.55590,0.55246)")
pushPGFPlotsPreamble("		rgb=(0.13244,0.55222,0.55302)")
pushPGFPlotsPreamble("		rgb=(0.13374,0.54853,0.55354)")
pushPGFPlotsPreamble("		rgb=(0.13507,0.54485,0.55403)")
pushPGFPlotsPreamble("		rgb=(0.13641,0.54117,0.55448)")
pushPGFPlotsPreamble("		rgb=(0.13777,0.53749,0.55491)")
pushPGFPlotsPreamble("		rgb=(0.13915,0.53381,0.55530)")
pushPGFPlotsPreamble("		rgb=(0.14054,0.53013,0.55566)")
pushPGFPlotsPreamble("		rgb=(0.14194,0.52645,0.55599)")
pushPGFPlotsPreamble("		rgb=(0.14334,0.52277,0.55629)")
pushPGFPlotsPreamble("		rgb=(0.14476,0.51909,0.55657)")
pushPGFPlotsPreamble("		rgb=(0.14618,0.51541,0.55682)")
pushPGFPlotsPreamble("		rgb=(0.14761,0.51173,0.55705)")
pushPGFPlotsPreamble("		rgb=(0.14904,0.50805,0.55725)")
pushPGFPlotsPreamble("		rgb=(0.15048,0.50437,0.55743)")
pushPGFPlotsPreamble("		rgb=(0.15192,0.50069,0.55759)")
pushPGFPlotsPreamble("		rgb=(0.15336,0.49700,0.55772)")
pushPGFPlotsPreamble("		rgb=(0.15482,0.49331,0.55784)")
pushPGFPlotsPreamble("		rgb=(0.15627,0.48962,0.55794)")
pushPGFPlotsPreamble("		rgb=(0.15773,0.48593,0.55801)")
pushPGFPlotsPreamble("		rgb=(0.15919,0.48224,0.55807)")
pushPGFPlotsPreamble("		rgb=(0.16067,0.47854,0.55812)")
pushPGFPlotsPreamble("		rgb=(0.16214,0.47484,0.55814)")
pushPGFPlotsPreamble("		rgb=(0.16362,0.47113,0.55815)")
pushPGFPlotsPreamble("		rgb=(0.16512,0.46742,0.55814)")
pushPGFPlotsPreamble("		rgb=(0.16662,0.46371,0.55812)")
pushPGFPlotsPreamble("		rgb=(0.16813,0.45999,0.55808)")
pushPGFPlotsPreamble("		rgb=(0.16965,0.45626,0.55803)")
pushPGFPlotsPreamble("		rgb=(0.17118,0.45253,0.55797)")
pushPGFPlotsPreamble("		rgb=(0.17272,0.44879,0.55788)")
pushPGFPlotsPreamble("		rgb=(0.17427,0.44504,0.55779)")
pushPGFPlotsPreamble("		rgb=(0.17584,0.44129,0.55768)")
pushPGFPlotsPreamble("		rgb=(0.17742,0.43753,0.55756)")
pushPGFPlotsPreamble("		rgb=(0.17902,0.43376,0.55743)")
pushPGFPlotsPreamble("		rgb=(0.18063,0.42997,0.55728)")
pushPGFPlotsPreamble("		rgb=(0.18226,0.42618,0.55712)")
pushPGFPlotsPreamble("		rgb=(0.18390,0.42238,0.55694)")
pushPGFPlotsPreamble("		rgb=(0.18556,0.41857,0.55675)")
pushPGFPlotsPreamble("		rgb=(0.18723,0.41475,0.55655)")
pushPGFPlotsPreamble("		rgb=(0.18892,0.41091,0.55633)")
pushPGFPlotsPreamble("		rgb=(0.19063,0.40706,0.55609)")
pushPGFPlotsPreamble("		rgb=(0.19236,0.40320,0.55584)")
pushPGFPlotsPreamble("		rgb=(0.19410,0.39932,0.55556)")
pushPGFPlotsPreamble("		rgb=(0.19586,0.39543,0.55528)")
pushPGFPlotsPreamble("		rgb=(0.19764,0.39153,0.55497)")
pushPGFPlotsPreamble("		rgb=(0.19943,0.38761,0.55464)")
pushPGFPlotsPreamble("		rgb=(0.20124,0.38367,0.55429)")
pushPGFPlotsPreamble("		rgb=(0.20306,0.37972,0.55393)")
pushPGFPlotsPreamble("		rgb=(0.20490,0.37575,0.55353)")
pushPGFPlotsPreamble("		rgb=(0.20676,0.37176,0.55312)")
pushPGFPlotsPreamble("		rgb=(0.20862,0.36775,0.55268)")
pushPGFPlotsPreamble("		rgb=(0.21050,0.36373,0.55221)")
pushPGFPlotsPreamble("		rgb=(0.21240,0.35968,0.55171)")
pushPGFPlotsPreamble("		rgb=(0.21430,0.35562,0.55118)")
pushPGFPlotsPreamble("		rgb=(0.21621,0.35153,0.55063)")
pushPGFPlotsPreamble("		rgb=(0.21813,0.34743,0.55004)")
pushPGFPlotsPreamble("		rgb=(0.22006,0.34331,0.54941)")
pushPGFPlotsPreamble("		rgb=(0.22199,0.33916,0.54875)")
pushPGFPlotsPreamble("		rgb=(0.22393,0.33499,0.54805)")
pushPGFPlotsPreamble("		rgb=(0.22586,0.33081,0.54731)")
pushPGFPlotsPreamble("		rgb=(0.22780,0.32659,0.54653)")
pushPGFPlotsPreamble("		rgb=(0.22974,0.32236,0.54571)")
pushPGFPlotsPreamble("		rgb=(0.23167,0.31811,0.54483)")
pushPGFPlotsPreamble("		rgb=(0.23360,0.31383,0.54391)")
pushPGFPlotsPreamble("		rgb=(0.23553,0.30953,0.54294)")
pushPGFPlotsPreamble("		rgb=(0.23744,0.30520,0.54192)")
pushPGFPlotsPreamble("		rgb=(0.23935,0.30085,0.54084)")
pushPGFPlotsPreamble("		rgb=(0.24124,0.29648,0.53971)")
pushPGFPlotsPreamble("		rgb=(0.24311,0.29209,0.53852)")
pushPGFPlotsPreamble("		rgb=(0.24497,0.28768,0.53726)")
pushPGFPlotsPreamble("		rgb=(0.24681,0.28324,0.53594)")
pushPGFPlotsPreamble("		rgb=(0.24863,0.27877,0.53456)")
pushPGFPlotsPreamble("		rgb=(0.25043,0.27429,0.53310)")
pushPGFPlotsPreamble("		rgb=(0.25219,0.26978,0.53158)")
pushPGFPlotsPreamble("		rgb=(0.25394,0.26525,0.52998)")
pushPGFPlotsPreamble("		rgb=(0.25565,0.26070,0.52831)")
pushPGFPlotsPreamble("		rgb=(0.25732,0.25613,0.52656)")
pushPGFPlotsPreamble("		rgb=(0.25897,0.25154,0.52474)")
pushPGFPlotsPreamble("		rgb=(0.26057,0.24692,0.52283)")
pushPGFPlotsPreamble("		rgb=(0.26214,0.24229,0.52084)")
pushPGFPlotsPreamble("		rgb=(0.26366,0.23763,0.51876)")
pushPGFPlotsPreamble("		rgb=(0.26515,0.23296,0.51660)")
pushPGFPlotsPreamble("		rgb=(0.26658,0.22826,0.51435)")
pushPGFPlotsPreamble("		rgb=(0.26797,0.22355,0.51201)")
pushPGFPlotsPreamble("		rgb=(0.26931,0.21882,0.50958)")
pushPGFPlotsPreamble("		rgb=(0.27059,0.21407,0.50705)")
pushPGFPlotsPreamble("		rgb=(0.27183,0.20930,0.50443)")
pushPGFPlotsPreamble("		rgb=(0.27301,0.20452,0.50172)")
pushPGFPlotsPreamble("		rgb=(0.27413,0.19972,0.49891)")
pushPGFPlotsPreamble("		rgb=(0.27519,0.19490,0.49600)")
pushPGFPlotsPreamble("		rgb=(0.27619,0.19007,0.49300)")
pushPGFPlotsPreamble("		rgb=(0.27713,0.18523,0.48990)")
pushPGFPlotsPreamble("		rgb=(0.27801,0.18037,0.48670)")
pushPGFPlotsPreamble("		rgb=(0.27883,0.17549,0.48340)")
pushPGFPlotsPreamble("		rgb=(0.27957,0.17060,0.48000)")
pushPGFPlotsPreamble("		rgb=(0.28025,0.16569,0.47650)")
pushPGFPlotsPreamble("		rgb=(0.28087,0.16077,0.47290)")
pushPGFPlotsPreamble("		rgb=(0.28141,0.15583,0.46920)")
pushPGFPlotsPreamble("		rgb=(0.28189,0.15088,0.46541)")
pushPGFPlotsPreamble("		rgb=(0.28229,0.14591,0.46151)")
pushPGFPlotsPreamble("		rgb=(0.28262,0.14093,0.45752)")
pushPGFPlotsPreamble("		rgb=(0.28288,0.13592,0.45343)")
pushPGFPlotsPreamble("		rgb=(0.28307,0.13090,0.44924)")
pushPGFPlotsPreamble("		rgb=(0.28319,0.12585,0.44496)")
pushPGFPlotsPreamble("		rgb=(0.28323,0.12078,0.44058)")
pushPGFPlotsPreamble("		rgb=(0.28320,0.11568,0.43611)")
pushPGFPlotsPreamble("		rgb=(0.28309,0.11055,0.43155)")
pushPGFPlotsPreamble("		rgb=(0.28291,0.10539,0.42690)")
pushPGFPlotsPreamble("		rgb=(0.28266,0.10020,0.42216)")
pushPGFPlotsPreamble("		rgb=(0.28233,0.09495,0.41733)")
pushPGFPlotsPreamble("		rgb=(0.28192,0.08967,0.41241)")
pushPGFPlotsPreamble("		rgb=(0.28145,0.08432,0.40741)")
pushPGFPlotsPreamble("		rgb=(0.28089,0.07891,0.40233)")
pushPGFPlotsPreamble("		rgb=(0.28027,0.07342,0.39716)")
pushPGFPlotsPreamble("		rgb=(0.27957,0.06784,0.39192)")
pushPGFPlotsPreamble("		rgb=(0.27879,0.06214,0.38659)")
pushPGFPlotsPreamble("		rgb=(0.27794,0.05632,0.38119)")
pushPGFPlotsPreamble("		rgb=(0.27702,0.05034,0.37572)")
pushPGFPlotsPreamble("		rgb=(0.27602,0.04417,0.37016)")
pushPGFPlotsPreamble("		rgb=(0.27495,0.03775,0.36454)")
pushPGFPlotsPreamble("		rgb=(0.27381,0.03150,0.35885)")
pushPGFPlotsPreamble("		rgb=(0.27259,0.02556,0.35309)")
pushPGFPlotsPreamble("		rgb=(0.27131,0.01994,0.34727)")
pushPGFPlotsPreamble("		rgb=(0.26994,0.01463,0.34138)")
pushPGFPlotsPreamble("		rgb=(0.26851,0.00961,0.33543)")
pushPGFPlotsPreamble("		rgb=(0.26700,0.00487,0.32942)")
pushPGFPlotsPreamble("	  }")
pushPGFPlotsPreamble("}");