# Document of the version 4 (20161228) flatfile

## Columns for IDs

| Column_name | Description_en                  | 說明                     | 單位(unit) | Note         |
| :---------- | :------------------------------ | :--------------------- | :------- | ------------ |
| EQSN        | SSHAC GMC GMC database event id | SSHAC GMC database地震ID |          | SSHAC GMC資料庫 |
| EQ_ID       | eq id using timestamp           | 地震ID使用時間               |          |              |
| Pfile       | eq id (pfile name from CWB)     | 地震ID(氣象局pfile名)        |          | CWB          |
| file.id     | data id (file from CWB)         | 資料ID(氣象局檔名)            |          | CWB          |


## Columns for Earthquake related information

| Column_name       | Description_en                           | 說明                                       | 單位(unit) | Note                               |
| :---------------- | :--------------------------------------- | :--------------------------------------- | :------- | ---------------------------------- |
| Hyp.Lat           | epicenter latitude                       | 1. Prof. Wu's relocation<br> 2. CWB<br> 3. Cat=A using ccld | degree   | SSHAC SSC 地震目錄資料, CWB, Brain Chiou |
| Hyp.Long          | epicenter longitude                      | 1. Prof. Wu's relocation<br> 2. CWB<br> 3. Cat=A using ccld | degree   | SSHAC SSC 地震目錄資料, CWB, Brain Chiou |
| Hyp.Depth         | hypocenter depth                         | 1. Prof. Wu's relocation<br> 2. CWB<br> 3. Cat=A using ccld | km       | SSHAC SSC 地震目錄資料, CWB, Brain Chiou |
| ML                | Local magnitude                          | 1. Prof. Wu's relocation<br> 2. CWB      |          |                                    |
| MW                | Moment magnitude                         | 1. GCMT<br> 2. BATS(convert to GCMT) <br> 3. Converted from ML |          |                                    |
| Mw_source         | Source of Mw                             | Mw的來源                                    |          |                                    |
| Length            | fault length                             | 斷層長度                                     | km       | Brain模擬計算段層面距離資料                   |
| Width             | fault width                              | 斷層寬度                                     | km       | Brain模擬計算段層面距離資料                   |
| Ztor              | Depth to top of fault rupture            | 距斷層破裂面頂端深度                               | km       | Brain模擬計算段層面距離資料                   |
| Cat               | category variable indicating the method used in distance calculation of a particular event.<br>A: All fault attributes are extracted from a preferred finite fault model (see discussions below); randomization of fault attributes is not necessary .<br>B: The strike/dip/rake of preferred fault plane is selected from the available fault plane solutions; random sampling of fault area, fault length, and hypo position on fault are made according to the distributions described in CY2008.<br>C: Fault plane solution is available, but preferred plane is unresolved; in addition to the random sampling of category B,  random selection over the two possible planes (0.5/0.5 weight) is made.<br>D: Fault plane solution is unavailable; fault plane geometry and  faulting mechanism are inferred from historical average; in addition to the randomization of category B,  random sampling of strike (from a uniform distribution between +- 30 degrees of inferred value) and dip (from a uniform distribution between +- 10 degrees of inferred dip)<br>E: Neither fault plane solution nor historical average are available; random samples of mechanism (which is then used to set the dip angle), strike, fault length, fault area, and hypocenter position on fault are made. |                                          |          | Brain模擬計算段層面距離資料                   |
| Strike            | suggest strike                           | 走向                                       | degree   |                                    |
| Dip               | suggest dip                              | 傾角                                       | degree   |                                    |
| Rake              | suggest rake                             | 滑移角                                      | degree   |                                    |
| Mainshock_ID      | mainshock id                             | 主震ID，標示主餘震序列ID<br>(主震為0，若是前震或餘震<br>則標示為該地震序列的主震ID)，<br>ID編號為SSC地震目錄之地震ID<br>(ID.eqcatalog) |          | SSHAC SSC 地震目錄資料                   |
| Fault.type        | mechanism base on rake angle<br>SS=Strike‐Slip,<br>N=Normal,<br>R=Reverse,<br>RO=Reverse‐Oblique,<br>NO=Normal‐Oblique | 斷層機制                                     |          |                                    |
| eq.type           | earthquake type classification base on zoning using new subduction zone model. (GMC_EQ_Classification_20160914.html) | 地震類型                                     |          |                                    |
| eq.type.SSC       | earthquake type classification base on SSC's earthquake activity rate calculation (a, b value in G-R law). ( scheme_B_Mmin_3.0_all_20160711_plot_wflt.xlsx) | 地震類型, SSC地震活動分析                          |          |                                    |
| flag              | flag for mainshock or not <br> 0=Mainshock, 1= fore- and after- shock | 前餘震標記                                    |          |                                    |
| flag_sub          | flag for earthquake type from SSC source modeling. <br> 0=Shallow or Deep Crustal Earthquake<br>1=Beneath Ryukyu Interface Crustal Earthquake<br>2=Beneath Маnilа Interface Crustal Earthquake<br>3=In Front of Ryukyu Trench Earthquake<br>4=In Front of Маnilа Trench Earthquake<br>5=Ryukyu Intraslab Earthquake<br>6=Маnilа Intraslab Earthquake<br> | 地震類型標記                                   |          |                                    |
| flag_crustal_type | flag for crustal earthquake type from SSC sorce modeling. (for earthquake with flag_sub = 0) <BR> 0=Other Earthquake<br>1=Shallow Crustal Earthquake<br>2=Deep Crustal Earthquake<br>3=Shallow Oceanic Earthquake<br>4=Deep Oceanic Earthquake<br> | 非隱沒帶地震類型標記(flag_sub=0)                   |          |                                    |
| flag_cmp          | flag for earthquake region. <br>0=Taiwan Region<br> 1=Pacific Region <br> 2=China Region | 地震區域標記                                   |          |                                    |
| flag_feq          | flag for earthquake relate to known active fault. <br> 0=Non-fault earthquake<br> 1=Fault earthquake | 斷層地震標記                                   |          |                                    |
| Rmax1             | applies to all instruments whose trigger level (TL1) is 4 gal |                                          |          |                                    |
| Rmax2             | applies to the NanoTech instrument whose trigger level (TL2) is 2gal |                                          |          |                                    |

## Columns for Station related information

| Column_name   | Description_en                           | 說明                    | 單位(unit) | Note         |
| :------------ | :--------------------------------------- | :-------------------- | :------- | ------------ |
| STA_ID        | station id                               | 測站ID                  |          |              |
| STA_Lon_X     | station longitude                        | 測站經度                  |          | NCREE Dr.Kuo |
| STA_Lat_Y     | station latitude                         | 測站緯度                  |          | NCREE Dr.Kuo |
| STA_Elevation | station elevation                        | 測站高程                  | m        | NCREE Dr.Kuo |
| Vs30          | suggest Vs30                             | Vs30                  | m/s      | NCREE Dr.Kuo |
| Vs30_ref      | reference of Vs30:<br>K12: Kuo et al. (2012) and EGDT (measured Vs30),<br>K16: Kuo et al. (2016) (measured Vs30),<br>LT08: Lee and Tsai (2008) (estimated Vs30),<br>AW09: Allen and Wald (2009) (estimated Vs30),<br>na: not available | Vs30出處                |          | NCREE Dr.Kuo |
| Vs30_class    | 1 for measured Vs30, 0 for infered       | 量測或者推估Vs30，1=量測, 0=推估 |          |              |
| Z1.0          | Z1.0                                     | Z1.0                  | m        | NCREE Dr.Kuo |
| Z1.0_ref      | reference of Z1.0:<br>a: microtremor array method (Kuo et al., 2016),<br>e: EGDT (Kuo et al., 2012),<br>r: Receiver Function,<br>h: HVSR,<br>inf: Inferred from relationship of Vs30 and Z1.0 in Taiwan,<br>na: not available | Z1.0出處                |          | NCREE Dr.Kuo |
| Kappa         | Kappa                                    | kappa                 |          | NCREE Dr.Kuo |
| kappa_ref     | reference of kappa (Chang et al. (2016)) | kappa出處               |          | NCREE Dr.Kuo |
| inBasin       | If the station is inside basin(yes, 1, no, 0) |                       |          |              |
| DistBasin_km  | The distanc to the clostest basin.       |                       | km       |              |
| InBasinName   | The name of basin.                       |                       |          |              |
| DistBasinName | The name of clostest basin.              |                       |          |              |

## Columns for Distance metrics

| Column_name     | Description_en                           | 說明              | 單位(unit) | Note             |
| :-------------- | :--------------------------------------- | :-------------- | :------- | ---------------- |
| Rx              | Horizontal distance from top edge of rupture. perpendicular to the fault strike. | 測站垂直斷層走向方向的水平距離 | km       | Brain模擬計算段層面距離資料 |
| Ry              |                                          |                 |          |                  |
| U               | strike parallel coordinate (origin is the upper left corner of the fault plane), Ry + L / 2, L is fault length |                 |          |                  |
| Repi            | epicentral distance                      | 震央距離            | km       |                  |
| Rhyp            | hypocentral distance                     | 震源距離            | km       |                  |
| Rrup            | Closest distance to fault rupture        | 距斷層面最短距離        | km       |                  |
| Rjb             | Joyner and Boore distance                | 距斷層地表投影面最短距離    | km       |                  |
| Rrms            | Root-mean-squared distance               |                 | km       |                  |
| ChPrime         | the approximate normalizedisochrone velocity as defined in Spudich and Chiou |                 |          |                  |
| E               | length of the E-path (in km)going from the hypocenter to the direct point on fault |                 |          |                  |
| AveR            | averaged S-wave radiation pattern coefficient along the E-path |                 |          |                  |
| DPP             | direct point directivity parameter       |                 |          |                  |
| FW.HW.Indicator | hanging-wall footwall indicator(hw=hanging wall region, fw= footwall region, nu=neutral region, na: not applicable as fault dip is greater than 70, NA= no data.) |                 |          | NGA database     |
| hwflag          | hanging-wall flag, 1=hanging-wall, 0=not | 斷層上下盤指標         |          |                  |

## Columns for Record process

| Column_name            | Description_en                           | 說明             | 單位(unit) | Note   |
| :--------------------- | :--------------------------------------- | :------------- | :------- | ------ |
| HP_H1                  | High-pass corner frequency for component H1 | 高通濾波頻率-H1分量    | Hz       |        |
| HP_H2                  | High-pass corner frequency for component H2 | 高通濾波頻率-H2分量    | Hz       |        |
| HP_Z                   | High-pass corner frequency for component Z | 高通濾波頻率- Z分量    | Hz       |        |
| LP_H1                  | Low-pass corner frequency for component H1 | 低通濾波頻率-H1分量    | Hz       |        |
| LP_H2                  | Low-pass corner frequency for component H2 | 低通濾波頻率-H2分量    | Hz       |        |
| LP_Z                   | Low-pass corner frequency for component Z | 低通濾波頻率- Z分量    | Hz       |        |
| Lowest_Usable_Freq_H1  | lowest usable frequency H1               | 最小可用頻率-水平分量1   | Hz       | NGA資料庫 |
| Lowest_Usable_Freq_H2  | lowest usable frequency H2               | 最小可用頻率-水平分量2   | Hz       | NGA資料庫 |
| Lowest_Usable_Freq_Ave | lowest usable frequencty avg (largest of H1,H2)) | 最小可用頻率-兩水平量最大值 | Hz       | NGA資料庫 |
| usable_period_H        | longest usable period                    | 最長可用週期         | sec      |        |
| PGA.raw.Z              | record raw PGA (unprocessed)             | 紀錄原始PGA        | gal      |        |
| PGA.raw.NS             | record raw PGA (unprocessed)             | 紀錄原始PGA        | gal      |        |
| PGA.raw.EW             | record raw PGA (unprocessed)             | 紀錄原始PGA        | gal      |        |
| Instrument             | Instrument type                          | 儀器型號           |          |        |

## Columns for Ground motion values

| Column_name | Description_en     | 說明      | 單位(unit) | Note |
| :---------- | :----------------- | :------ | :------- | ---- |
| PGA         | PGA                | PGA     | g        |      |
| PGV         | PGV                | PGV     | cm/s     |      |
| PGD         | PGD                | PGD     | cm       |      |
| T0.010S     | PSA                | Sa      | g        |      |
| ...         | PSA                | Sa      | g        |      |
| T20.000S    | PSA                | Sa      | g        |      |
| Sa_source   | Source of Sa value | Sa值資料來源 |          |      |
