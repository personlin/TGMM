|Column_name           |Description_en                                            |說明                                |單位(unit)      |Note                       |    
|:---------------------|:---------------------------------------------------------|:-----------------------------------|:---------------|---------------------------|
|file.id               |data id (file from CWB)                                   |資料ID(氣象局檔名)                  |                |氣象局強震資料索引檔       |
|pfile                 |eq id (pfile name from CWB)                               |地震ID(氣象局pfile名)               |                |氣象局強震資料索引檔       |
|EQ_ID                 |eq id using timestamp                                     |地震ID使用時間                      |                |氣象局強震資料索引檔       |
|SGM_ID                |GM data id using timestamp and station id                 |                                    |                |氣象局強震資料索引檔       |
|Lon_X.CWB             |epicenter longitude by CWB                                |震央經度(氣象局)                    |                |SSHAC SSC 地震目錄資料     |
|Lat_Y.CWB             |epicenter latitude by CWB                                 |震央緯度(氣象局)                    |                |SSHAC SSC 地震目錄資料     |
|Depth_CWB             |hypocenter depth by CWB                                   |震源深度(氣象局)                    |km              |SSHAC SSC 地震目錄資料     |
|ML_CWB                |Local magnitude by CWB                                    |芮氏規模(氣象局)                    |                |SSHAC SSC 地震目錄資料     |
|Lon_X.WU              |epicenter longitude by Prof.Wu                            |震央經度(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     |
|Lat_Y.WU              |epicenter latitude by Prof.Wu                             |震央緯度(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     |
|Depth_WU              |hypocenter depth by Prof.Wu                               |震源深度(吳逸民教授)                |km              |SSHAC SSC 地震目錄資料     |
|ML_WU                 |Local magnitude by Prof.Wu                                |芮氏規模(吳逸民教授)                |                |SSHAC SSC 地震目錄資料     |
|MW_GCMT               |Moment magnitude from Global CMT                          |地震矩規模(Global CMT)              |                |SSHAC SSC 地震目錄資料     |
|MW_BATS               |Moment magnitude from BATS                                |地震矩規模(BATS)                    |                |SSHAC SSC 地震目錄資料     |
|MW_CWB                |Moment magnitude from CWB                                 |地震矩規模(CWB)                     |                |SSHAC SSC 地震目錄資料     |
|MW_Convert            |Moment magnitude convert from ML                          |地震矩規模(轉換自ML)                |                |SSHAC SSC 地震目錄資料     |
|MW_SUGG               |suggest moment magnitude                                  |建議之地震矩規模                    |                |SSHAC SSC 地震目錄資料     |
|Strike1               |strike                                                    |走向                                |degree          |SSHAC SSC 地震目錄資料     |
|Dip1                  |dip                                                       |傾角                                |degree          |SSHAC SSC 地震目錄資料     |
|Rake1                 |rake                                                      |滑移角                              |degree          |SSHAC SSC 地震目錄資料     |
|Strike2               |strike                                                    |走向                                |degree          |SSHAC SSC 地震目錄資料     |
|Dip2                  |dip                                                       |傾角                                |degree          |SSHAC SSC 地震目錄資料     |
|Rake2                 |rake                                                      |滑移角                              |degree          |SSHAC SSC 地震目錄資料     |
|Network               |network                                                   |地震目錄測網                        |                |SSHAC SSC 地震目錄資料     |
|M_convert_tag         |                                                          |規模轉換                            |                |SSHAC SSC 地震目錄資料     |
|Mainshock_ID          |mainshock id                                              |主震ID                              |                |SSHAC SSC 地震目錄資料     |
|Mw_Sugg_ccld          |                                                          |地震矩規模                          |                |Brain模擬計算段層面距離資料|
|Lon_wu_ccld           |epicenter longitude by Prof.Wu                            |震央經度(吳逸民教授)                |                |Brain模擬計算段層面距離資料|
|Lat_wu_ccld           |epicenter latitude by Prof.Wu                             |震央緯度(吳逸民教授)                |                |Brain模擬計算段層面距離資料|
|Depth_wu_ccld         |hypocenter depth by Prof.Wu                               |震源深度(吳逸民教授)                |km              |Brain模擬計算段層面距離資料|
|Strike_sugg_ccld      |strike                                                    |走向                                |degree          |Brain模擬計算段層面距離資料|
|Dip_sugg_ccld         |dip                                                       |傾角                                |degree          |Brain模擬計算段層面距離資料|
|Rake_sugg_ccld        |rake                                                      |滑移角                              |degree          |Brain模擬計算段層面距離資料|
|FaultType_ccld        |mechanism base on rake angle                              |斷層機制                            |                |Brain模擬計算段層面距離資料|
|Sta_ccld              |station id                                                |測站ID                              |                |Brain模擬計算段層面距離資料|
|Sta_lat_ccld          |station longitude                                         |測站緯度                            |                |Brain模擬計算段層面距離資料|
|Sta_lon_ccld          |station latitude                                          |測站經度                            |                |Brain模擬計算段層面距離資料|
|Strike11_ccld         |strike                                                    |走向                                |degree          |Brain模擬計算段層面距離資料|
|Dip11_ccld            |dip                                                       |傾角                                |degree          |Brain模擬計算段層面距離資料|
|Rake11_ccld           |rake                                                      |滑移角                              |degree          |Brain模擬計算段層面距離資料|
|Strike22_ccld         |strike                                                    |走向                                |degree          |Brain模擬計算段層面距離資料|
|Dip22_ccld            |dip                                                       |傾角                                |degree          |Brain模擬計算段層面距離資料|
|Rake22_ccld           |rake                                                      |滑移角                              |degree          |Brain模擬計算段層面距離資料|
|Plane_ccld            |selected plane                                            |選取之斷層面                        |                |Brain模擬計算段層面距離資料|
|Sta                   |station id                                                |測站ID                              |                |                           |
|Instrument            |instrument type                                           |儀器型態                            |                |氣象局強震資料索引檔       |
|Elevation             |station elevation                                         |測站高程                            |m               |NCREE Dr.Kuo               |
|Lon_97                |station longitude                                         |測站緯度                            |                |NCREE Dr.Kuo               |
|Lat_97                |station latitude                                          |測站經度                            |                |NCREE Dr.Kuo               |
|Vs30_sugg             |suggest Vs30                                              |Vs30                                |m/s             |NCREE Dr.Kuo               |
|Vs30_ref              |reference of Vs30                                         |Vs30出處                            |                |NCREE Dr.Kuo               |
|Z1.0_sugg             |Z1.0                                                      |Z1.0                                |m               |NCREE Dr.Kuo               |
|Z1.0_ref              |reference of Z1.0                                         |Z1.0出處                            |                |NCREE Dr.Kuo               |
|Ztor_ccld             |Depth to top of fault rupture                             |距斷層破裂面頂端深度                |km              |Brain模擬計算段層面距離資料|
|Rrup_ccld             |Closest distance to fault rupture                         |距斷層面最短距離                    |km              |Brain模擬計算段層面距離資料|
|RJB_ccld              |Joyner and Boore distance                                 |距斷層地表投影面最短距離            |km              |Brain模擬計算段層面距離資料|
|Rseis_ccld            |Campbell distance                                         |距孕震深度最短距離                  |km              |Brain模擬計算段層面距離資料|
|Rx_ccld               |                                                          |                                    |km              |Brain模擬計算段層面距離資料|
|Ztor_NGA.W1           |Depth to top of fault rupture                             |距斷層破裂面頂端深度                |km              |NGA-West資料庫             |
|EpiD_NGA.W1           |epicentral distance                                       |震央距離                            |km              |NGA-West資料庫             |
|HypD_NGA.W1           |hypocentral distance                                      |震源距離                            |km              |NGA-West資料庫             |
|Rjb_NGA.W1            |Joyner and Boore distance                                 |距斷層地表投影面最短距離            |km              |NGA-West資料庫             |
|Rseis_NGA.W1          |Campbell distance                                         |距孕震深度最短距離                  |km              |NGA-West資料庫             |
|RmsD_NGA.W1           |Root-mean-squared distance                                |                                    |km              |NGA-West資料庫             |
|Rrup_NGA.W1           |Closest distance to fault rupture                         |距斷層面最短距離                    |km              |NGA-West資料庫             |
|Rrup_sugg             |Closest distance to fault rupture                         |距斷層面最短距離                    |km              |                           |
|Ztor_sugg             |Depth to top of fault rupture                             |距斷層破裂面頂端深度                |km              |                           |
|Rjb_sugg              |Joyner and Boore distance                                 |距斷層地表投影面最短距離            |km              |                           |
|Rseis_sugg            |Campbell distance                                         |距孕震深度最短距離                  |km              |                           |
|EpiD_Wu               |epicentral distance                                       |震央距離                            |km              |以SSHAC SSC地震目錄資料計算|
|HypD.Wu               |hypocentral distance                                      |震源距離                            |km              |以SSHAC SSC地震目錄資料計算|
|EpiD_CWB              |epicentral distance                                       |震央距離                            |km              |以SSHAC SSC地震目錄資料計算|
|HypD.CWB              |hypocentral distance                                      |震源距離                            |km              |以SSHAC SSC地震目錄資料計算|
|Lowest_Usable_Freq_H1 |lowest usable frequency H1                                |最小可用頻率-水平分量1              |Hz              |                           |
|Lowest_Usable_Freq_H2 |lowest usable frequency H2                                |最小可用頻率-水平分量2              |Hz              |                           |
|PGA                   |PGA                                                       |PGA                                 |g               |                           |
|PGV                   |PGV                                                       |PGV                                 |cm/s            |                           |
|PGD                   |PGD                                                       |PGD                                 |cm              |                           |
|T0_010S               |PSA                                                       |Sa                                  |g               |                           |
|…                     |PSA                                                       |Sa                                  |g               |                           |
|T10_000S              |PSA                                                       |Sa                                  |g               |                           |
