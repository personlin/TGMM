|Column_name             |description_en                                            |說明                                |單位(unit)      |Note                       |
|------------------------|----------------------------------------------------------|------------------------------------|----------------|---------------------------|
|file.id                 |data id (file from CWB)                                   |資料ID(氣象局檔名)                  |                |                           |                
|pfile                   |eq id (pfile name from CWB)                               |地震ID(氣象局pfile名)               |                |                           |               
|EQ_ID                   |eq id using timestamp                                     |地震ID使用時間                      |                |                           |               
|Lon_X                   |epicenter longitude by CWB                                |震央經度(氣象局)                    |                |                           |                
|Lat_Y                   |epicenter latitude by CWB                                 |震央緯度(氣象局)                    |                |                           |                
|Depth                   |hypocenter depth by CWB                                   |震源深度(氣象局)                    |km              |                           |                
|Lon_X_wu                |epicenter longitude by Prof.Wu                            |震央經度(吳逸民教授)                |                |                           |                  
|Lat_Y_wu                |epicenter latitude by Prof.Wu                             |震央緯度(吳逸民教授)                |                |                           |                  
|Depth_wu                |hypocenter depth by Prof.Wu                               |震源深度(吳逸民教授)                |km              |                           |                  
|ML                      |Local magnitude by CWB                                    |芮氏規模                            |                |                           |
|Mw_Lin                  |Moment magnitude converted by Lin and Lee (2008) relation |地震矩規模(Lin and Lee 2008轉換)    |                |                           |
|Mw_Hvd                  |Moment magnitude from Global CMT                          |地震矩規模(Harvar CMT)              |                |                           |
|Mw_Bats                 |Moment magnitude from BATS                                |地震矩規模(BATS)                    |                |                           |
|Mw_Cheng                |Moment magnitude from Dr. Cheng                           |地震矩規模(Dr.陳桂寶轉換式)         |                |                           |
|Mag                     |suggest moment magnitude                                  |地震矩規模                          |                |                           |
|Strike                  |strike                                                    |走向                                |degree          |                           |
|Dip                     |dip                                                       |傾角                                |degree          |                           |
|Rake                    |rake                                                      |滑移角                              |degree          |                           |
|Mechanism               |mechanism base on rake angle                              |斷層機制                            |                |                           |
|FaultFrom               |data source of focal mechanism                            |震源機制解來源                      |                |                           |                
|EQ.catalog              |eq type                                                   |地震類型                            |                |                           |
|Sta_ID                  |station id                                                |測站ID                              |                |                           |
|Sta_Lat                 |station longitude                                         |測站緯度                            |                |                           |
|Sta_Lon                 |station latitude                                          |測站經度                            |                |                           |
|Vs30_sugg               |suggest Vs30                                              |Vs30                                |m/s             |                           |
|NCREE_Class             |site classification base on NCREE Vs30                    |國震中心場址分類                    |                |provide by Dr. Kuo (NCREE) |
|NCREE_Vs30              |NCREE measured Vs30                                       |國震中心量測Vs30                    |m/s             |provide by Dr. Kuo (NCREE) |
|Lee08_Vs30              |Vs30 estimated by Lee and Tsai (2008)                     |Lee and Tsai (2008) Vs30            |m/s             |provide by Dr. Kuo (NCREE) |
|Lee08_Class             |Site classification by Lee and Tsai(2008)                 |Lee and Tsai (2008)場址分類         |                |provide by Dr. Kuo (NCREE) |
|Chiou08_Vs30            |Vs30 estimated by Chiou(2008)                             |Chiou (2008) estimate Vs30          |m/s             |provide by Dr. Kuo (NCREE) |
|Wald09_Vs30             |Vs30 estimated by Allen and Wald (2009)                   |Allen and Wald (2009) estimate Vs30 |m/s             |provide by Dr. Kuo (NCREE) |
|EpiD                    |epicentral distance                                       |震央距離                            |km              |                           |
|HypD                    |hypocentral distance                                      |震源距離                            |km              |                           |
|ClstD                   |Closest distance to fault                                 |距斷層面最短距離                    |km              |simulated by Brian Chiou   |
|Lowest_Usable_Freq_H1   |lowest usable frequency H1                                |最小可用頻率-水平分量1              |Hz              |                           |
|Lowest_Usable_Freq_H2   |lowest usable frequency H2                                |最小可用頻率-水平分量2              |Hz              |                           |
|Lowest_Usable_Freq_Ave  |lowest usable frequency average                           |最小可用頻率-水平分量平均           |Hz              |                           |
|PGA                     |PGA                                                       |PGA                                 |g               |GMRotI50                   |
|PGV                     |PGV                                                       |PGV                                 |cm/s            |GMRotI50                   |
|PGD                     |PGD                                                       |PGD                                 |cm              |GMRotI50                   |
|T0_010S                 |PSA                                                       |Sa                                  |g               |GMRotI50                   |
|…                       |PSA                                                       |Sa                                  |g               |GMRotI50                   |
|T10_000S                |PSA                                                       |Sa                                  |g               |GMRotI50                   |

