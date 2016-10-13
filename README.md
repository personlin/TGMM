# Taiwan Ground Motion Model (TGMM) and Database
Taiwan Ground Motion Model and Ground-Motion Database


# Update note

## TNGA_v3_20161013

* add raw PGA from sgm.index to database

| PGA.raw.Z | PGA.raw.NS | PGA.raw.EW |
| --------: | ---------: | ---------: |
|     11.48 |      30.63 |      16.27 |
|     20.58 |      39.24 |      54.55 |
|     50.24 |     100.97 |      84.70 |

## TNGA_v3_20161004

* add Rmax columns provide by Brain

| GM.Type    | EQID |  Mag | EQ.BCH | Net1 | Rcut1 | Net2     | Rcut2 |    N | Ncut | epsilon |     Sigma | minSigma |   TL1 |     Rmax1 |  TL2 | Rmax2 |
| :--------- | :--- | ---: | :----- | :--- | :---- | :------- | :---- | ---: | ---: | ------: | --------: | -------: | ----: | --------: | ---: | ----: |
| rawPGA.max | 0006 | 5.42 | FALSE  | CWB  | NA    | TitanCWB | NA    |   22 |    0 |       2 | 0.5105791 |      0.5 | 0.004 | 136.97375 |   NA |    NA |
| rawPGA.max | 0008 | 5.53 | FALSE  | CWB  | NA    | TitanCWB | NA    |   36 |    0 |       2 | 0.5318822 |      0.5 | 0.004 |  67.48952 |   NA |    NA |
| rawPGA.max | 0009 | 5.27 | FALSE  | CWB  | NA    | TitanCWB | NA    |   91 |    0 |       2 | 0.5747993 |      0.5 | 0.004 |  71.87381 |   NA |    NA |


## TNGA_v3_20160930

* add suggested column Rrup.sugg, Rjb.sugg, Rhypo.sugg, Rx.sugg, Ry.sugg, Depth.sugg, Ztor.sugg, Strike, Dip, Rake, Vs30_class, hwflag, Rx.sugg, Ry.sugg, Z1.0_sugg

| fault.type.ccld | Rrup.sugg |  Rjb.sugg | Rhypo.sugg | Rx.sugg | Ry.sugg | Depth.sugg | Ztor.sugg | Strike |  Dip | Rake | Vs30_class | hwflag |
| :-------------- | --------: | --------: | ---------: | ------: | ------: | ---------: | --------: | -----: | ---: | ---: | ---------: | -----: |
| RO              |  83.62194 |  82.75383 |   86.19036 |       0 |       0 |      11.37 |  0.010322 |    191 |   17 |   33 |          1 |      0 |
| RO              | 119.90682 | 119.30303 |  122.48636 |       0 |       0 |      11.37 |  0.010322 |    191 |   17 |   33 |          1 |      0 |
| RO              |  48.59453 |  47.48563 |   51.32261 |       0 |       0 |      11.37 |  0.010322 |    191 |   17 |   33 |          0 |      0 |

##  TNGA_v3_20160926

* remove duplicated station records
* update nga-sub to V08
* update Site information from SiteDatabase_SSHAC_v4.0
* fix directivity paramter for cat == A
* update earthquake information and records of event 318 (Pfile = "23211230.P10", EQ_ID="2010_1121_1231_46")

