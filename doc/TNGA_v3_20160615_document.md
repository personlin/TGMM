|Column_name           |Description_en                                            |說明                                |單位(unit)      |Note                       |    
|:---------------------|:---------------------------------------------------------|:----------------------------------|:---------------|---------------------------|
|file.id               |data id (file from CWB)                                   |資料ID(氣象局檔名)                   |                |SSHAC SSC 地震目錄資料      | 
|Pfile                 |eq id (pfile name from CWB)                               |地震ID(氣象局pfile名)               |                 |SSHAC SSC 地震目錄資料      | 
|filename              |file name of the record (from CWB)                        |                                   |                |SSHAC SSC 地震目錄資料      | 
|EQ_ID                 |eq id using timestamp                                     |地震ID使用時間                      |                 |                          |
|EQID.NGA              |eq id from NGA database (NGA-West2, NGA-Sub)              |地震ID(NGA database)               |                 | NGA資料庫                | 
|ID.eqcatalog          |eq id from SSC earthquake catalog                         |地震ID(SSC地震目錄)                 |                |SSHAC SSC 地震目錄資料      | 
|EQID.ISC              |ISC eq id from SSC earthquake catalog                     |ISC地震ID (SSC地震目錄)             |                |SSHAC SSC 地震目錄資料      | 
|EQID.CSN              |CSN eq id from SSC earthquake catalog                     |CNS地震ID (SSC地震目錄)             |                |SSHAC SSC 地震目錄資料      | 
|RSN.NGAWest2          |Record series number from NGA-West2 database              |記錄編號 (NGA-West2)                |               | NGA資料庫                  | 
|RSN.NGASUB            |Record series number from NGA-Sub database                |記錄編號 (NGA-Sub)                  |               | NGA資料庫                  | 
|Lon_X.NGA             |epicenter longitude from NGA database                     |震央經度(NGA)                      |degree          | NGA資料庫                  | 
|Lat_Y.NGA             |epicenter latitude from NGA database                      |震央緯度(NGA)                      |degree          | NGA資料庫                  |
|Depth.NGA             |hypocenter depth from NGA database                        |震源深度(NGA)                      |km              | NGA資料庫                  |
|Lon_X.Wu.ccld         |epicenter longitude by Prof.Wu                            |震央經度(吳逸民教授)                |                |Brain模擬計算段層面距離資料    |
|Lat_Y.Wu.ccld         |epicenter latitude by Prof.Wu                             |震央緯度(吳逸民教授)                |                |Brain模擬計算段層面距離資料    |
|Depth.Wu.ccld         |hypocenter depth by Prof.Wu                               |震源深度(吳逸民教授)                |km              |Brain模擬計算段層面距離資料    | 
|Lon_X.CWB             |epicenter longitude by CWB                                |震央經度(氣象局)                    |                |SSHAC SSC 地震目錄資料     | 
|Lat_Y.CWB             |epicenter latitude by CWB                                 |震央緯度(氣象局)                    |                |SSHAC SSC 地震目錄資料     | 
|Depth.CWB             |hypocenter depth by CWB                                   |震源深度(氣象局)                    |km              |SSHAC SSC 地震目錄資料     |
|Lon_X.WU              |epicenter longitude by Prof.Wu                            |震央經度(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     | 
|Lat_Y.WU              |epicenter latitude by Prof.Wu                             |震央緯度(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     | 
|Depth.WU              |hypocenter depth by Prof.Wu                               |震源深度(吳逸民教授)                |km              |SSHAC SSC 地震目錄資料     | 
|Magnitude             |magnitude from database (NGA, TNGA)                       |地震規模(NGA, TNGA)                 |                |NGA, TNGA 資料庫           | 
|Magnitude.Type        |magnitude type from database (NGA, TNGA)                  |地震規模類型(NGA, TNGA)             |               |NGA, TNGA 資料庫           | 
|M.Author              |magnitude author infomation from NGA database             |地震規模來源(NGA)                   |                |NGA資料庫                | 
|ML.CWB                |Local magnitude by CWB                                    |芮氏規模(氣象局)                    |                |SSHAC SSC 地震目錄資料     | 
|ML.WU                 |Local magnitude by Prof.Wu                                |芮氏規模(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     |
|MW.GCMT               |Moment magnitude from Global CMT                          |地震矩規模(Global CMT)              |                |SSHAC SSC 地震目錄資料     | 
|MW.BATS               |Moment magnitude from BATS                                |地震矩規模(BATS)                    |                |SSHAC SSC 地震目錄資料     | 
|MW.CWB                |Moment magnitude from CWB                                 |地震矩規模(CWB)                     |                |SSHAC SSC 地震目錄資料     | 
|MW.Convert            |Moment magnitude convert from ML                          |地震矩規模(轉換自ML)                |                |SSHAC SSC 地震目錄資料     |
|MW.sugg               |suggest moment magnitude                                  |建議之地震矩規模                    |                |SSHAC SSC 地震目錄資料     | 
|M_type                |magnitude type                                            |地震規模類型(原始地震目錄)           |                |SSHAC SSC 地震目錄資料     | 
|M_convert_tag         |converted magnitude indicator (N=not)                     |有無轉換之規模(N表示沒有)             |                |SSHAC SSC 地震目錄資料     | 
|Mainshock_ID          |mainshock id                                              |主震ID，標示主餘震序列ID<br>(主震為0，若是前震或餘震<br>則標示為該地震序列的主震ID)，<br>ID編號為SSC地震目錄之地震ID<br>(ID.eqcatalog)|                |SSHAC SSC 地震目錄資料     |
|Ztor.NGA              |Depth to top of fault rupture from NGA database           |距斷層破裂面頂端深度                 |km              |NGA資料庫                  | 
|Ztor.ccld             |Depth to top of fault rupture                             |距斷層破裂面頂端深度                 |km              |Brain模擬計算段層面距離資料  | 
|Fault.type            |mechanism base on rake angle(SS=Strike‐Slip, N=Normal, R=Reverse, RO=Reverse‐Oblique, NO=Normal‐Oblique)|斷層機制                            |                |                           | 
|Intra.Inter.Flag      |earthquake type for subduction EQ from NGA database       |隱沒帶地震類型(NGA-Sub)              |                |NGA資料庫                  |
|eq.type               |earthquake type                                           |地震類型                             |               |                            |
|Strike.NGA            |strike                                                    |走向                                |degree          |NGA資料庫                  |
|Dip.NGA               |dip                                                       |傾角                                |degree          |NGA資料庫                  |
|Rake.NGA              |rake                                                      |滑移角                              |degree          |NGA資料庫                  |
|Strike.ccld           |strike                                                    |走向                                |degree          |Brain模擬計算段層面距離資料 |
|Dip.ccld              |dip                                                       |傾角                                |degree          |Brain模擬計算段層面距離資料 | 
|Rake.ccld             |rake                                                      |滑移角                              |degree          |Brain模擬計算段層面距離資料 | 
|Strike1               |strike                                                    |走向                                |degree          |SSHAC SSC 地震目錄資料     | 
|Dip1                  |dip                                                       |傾角                                |degree          |SSHAC SSC 地震目錄資料     |
|Rake1                 |rake                                                      |滑移角                              |degree          |SSHAC SSC 地震目錄資料     | 
|Strike2               |strike                                                    |走向                                |degree          |SSHAC SSC 地震目錄資料     | 
|Dip2                  |dip                                                       |傾角                                |degree          |SSHAC SSC 地震目錄資料     | 
|Rake2                 |rake                                                      |滑移角                              |degree          |SSHAC SSC 地震目錄資料     |
|fault_plane           |the selection of two fault plane (WU)                     |震源機制解中選擇的斷層面              |                 |SSHAC SSC 地震目錄資料     |
|STA_ID                |station id                                                |測站ID                              |                |                           | 
|STA_Lon_X             |station longitude                                         |測站經度                            |                |NCREE Dr.Kuo               | 
|STA_Lat_Y             |station latitude                                          |測站緯度                            |                |NCREE Dr.Kuo               |
|STA_Elevation         |station elevation                                         |測站高程                            |m               |NCREE Dr.Kuo               | 
|Vs30_sugg             |suggest Vs30                                              |Vs30                                |m/s             |NCREE Dr.Kuo               | 
|Vs30_ref              |reference of Vs30(K12: Kuo et al. (2012) and EGDT (measured Vs30), K16: Kuo et al. (2016) (measured Vs30), LT08: Lee and Tsai (2008) (estimated Vs30), AW09: Allen and Wald (2009) (estimated Vs30), na: not available)|Vs30出處                            |                |NCREE Dr.Kuo               | 
|Z1.0_sugg             |Z1.0                                                      |Z1.0                                |m               |NCREE Dr.Kuo               |
|Z1.0_ref              |reference of Z1.0(a: microtremor array method (Kuo et al., 2016), e: EGDT (Kuo et al., 2012), r: Receiver Function, h: HVSR, inf: Inferred from relationship of Vs30 and Z1.0 in Taiwan, na: not available)|Z1.0出處                            |                |NCREE Dr.Kuo               | 
|STA_Lat_Y.NGA         |station latitude from NGA database                        |測站緯度 (NGA)                      |                | NGA資料庫                 |
|STA_Lon_X.NGA         |station longitude from NGA database                       |測站經度 (NGA)                      |                | NGA資料庫                 |
|STA_Lat_Y.ccld        |station latitude from CCLD                                |測站緯度 (CCLD)                     |degree          |Brain模擬計算段層面距離資料| 
|STA_Lon_X.ccld        |station longitude from CCLD                               |測站經度 (CCLD)                     |degree          |Brain模擬計算段層面距離資料| 
|EpiD.CWB              |epicentral distance (by CWB hypocenter location)          |震央距離                            |km              |Lon_X.CWB,Lat_Y.CWB  | 
|EpiD.WU               |epicentral distance (by Prof.Wu's relocatoin hypocenter location)|震央距離                     |km              |Lon_X.WU,Lat_Y.WU    | 
|EpiD.NGA              |epicentral distance from NGA database                     |震央距離                            |km              | NGA資料庫           | 
|HypD.CWB              |hypocentral distance (by CWB hypocenter location)         |震源距離                            |km              |Lon_X.CWB,Lat_Y.CWB,Depth.CWB|
|HypD.WU               |hypocentral distance (by Prof.Wu's relocatoin hypocenter location)|震源距離                    |km              |Lon_X.WU,Lat_Y.WU,Depth.WU|
|HypD.NGA              |hypocentral distance from NGA database                    |震源距離                            |km              | NGA資料庫          |
|Rrup.NGA              |Closest distance to fault rupture from NGA database       |距斷層面最短距離                     |km              | NGA資料庫           |
|Rjb.NGA               |Joyner and Boore distance from NGA database               |距斷層地表投影面最短距離              |km              | NGA資料庫           | 
|Rseis.NGA             |Campbell distance from NGA database                       |距孕震深度最短距離                   |km              | NGA資料庫           |
|RmsD.NGA              |Root-mean-squared distance from NGA database              |                                   |km              |NGA資料庫            | 
|Rx.NGA                |Horizontal distance from top edge of rupture. perpendicular to the fault strike.from NGA database | 測站垂直斷層走向方向的水平距離 |km |NGA資料庫 | 
|Rrup.ccld             |Closest distance to fault rupture                         |距斷層面最短距離                     |km              |Brain模擬計算段層面距離資料| 
|Rjb.ccld              |Joyner and Boore distance                                 |距斷層地表投影面最短距離              |km              |Brain模擬計算段層面距離資料| 
|Rseis.ccld            |Campbell distance                                         |距孕震深度最短距離                   |km              | Brain模擬計算段層面距離資料| 
|Rx.ccld               |Horizontal distance from top edge of rupture. perpendicular to the fault strike.| 測站垂直斷層走向方向的水平距離 |km |Brain模擬計算段層面距離資料|
|FW.HW.Indicator       |hanging-wall footwall indicator(hw=hanging wall region, fw= footwall region, nu=neutral region, na: not applicable as fault dip is greater than 70, NA= no data.)|斷層上下盤指標                       |                |NGA資料庫                  |
|HP_H1                 |High-pass corner frequency for component H1               |高通濾波頻率-H1分量                  |Hz              |                           |
|HP_H2                 |High-pass corner frequency for component H2               |高通濾波頻率-H2分量                  |Hz              |                           |
|HP_Z                  |High-pass corner frequency for component Z                |高通濾波頻率- Z分量                  |Hz              |                           |
|LP_H1                 |Low-pass corner frequency for component H1                |低通濾波頻率-H1分量                  |Hz              |                           |
|LP_H2                 |Low-pass corner frequency for component H2                |低通濾波頻率-H2分量                  |Hz              |                           |
|LP_Z                  |Low-pass corner frequency for component Z                 |低通濾波頻率- Z分量                  |Hz              |                           |
|Lowest_Usable_Freq_H1 |lowest usable frequency H1                                |最小可用頻率-水平分量1                |Hz             |NGA資料庫                   |
|Lowest_Usable_Freq_H2 |lowest usable frequency H2                                |最小可用頻率-水平分量2                |Hz             |NGA資料庫                   |
|Lowest_Usable_Freq_Ave|lowest usable frequencty avg (largest of H1,H2))          |最小可用頻率-兩水平量最大值            |Hz             | NGA資料庫                 |
|usable_period_H       |longest usable period                                     |最長可用週期                         |sec            |                           |
|PGA                   |PGA                                                       |PGA                                 |g              |                           |
|PGV                   |PGV                                                       |PGV                                 |cm/s           |                           | 
|PGD                   |PGD                                                       |PGD                                 |cm             |                           | 
|T0.010S               |PSA                                                       |Sa                                  |g              |                           | 
|...                   |PSA                                                       |Sa                                  |g              |                           |
|T20.000S              |PSA                                                       |Sa                                  |g              |                           | 
|Sa_source             |Source of Sa value                                        |Sa值資料來源                         |               |                           |
