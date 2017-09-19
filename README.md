# Taiwan Ground Motion Model (TGMM) and Database
Taiwan Ground Motion Model and Ground-Motion Database


# Update note

## SSHAC_GM_V7_20170919

- [#21](/../../issues/21) Update the Vs30 of MTN stations in Chi-Chi event. (9 records)

## SSHAC_GM_V7_20170918

- Fix  [#20](/../../issues/20) EQ: 1995_0223_0519_03 (Pfile:02230518.P95) (EQSN:038) only have 21 records

## SSHAC_GM_V7_20170802

- Fault rupture models for the two new events occurred in 2016 (the Meinong event, Category A, and the deep intra-slab event, Category B)
- 21 new finite fault models obtained by Dr. Lee of IES.
- Subduction earthquake source scaling relations recommended by the PEER NGA-Sub project. This update does not affect Category A events or crustal events.
- Path data for new entries for the two 2016 events and updated fault rupture models.
- Path data for BATS subduction zone records.
- add ChiChi recordings (recorded by IES’s MTN network).

## SSHAC_GM_V6_20170712

- update site database to version 7.0
- add SMART1 data from NGA-West2
- add BATS data from NGA-Sub
- add 2016 Meinong earthquake and 20160531 north Taiwan deep intraslab earthquake data

## SSHAC_GM_V5_20170501

- add NPP data

## SSHAC_GM_V4_20170331

- update site database to version 6.0
- add column ID.eqcatalog for SSC eqid.
- add column within30 for the flag of earthquake within 30km buffer zone.

## SSHAC_GM_V4_20170120

- add column "eq.type.crust" for "eq.type" = "shallow crustal" or "deep crustal"

## SSHAC_GM_V4_20170117a

- fixed the duplication of site database with STA_ID=TAP105. (previous flatfile will have two Vs30 and Z1.0 values of TAP105 station)

## SSHAC_GM_V4_20170117

- update earthquake flag column from NCREE to version 20171113.


## SSHAC_GM_V4_20170111

- add earthquake flag column from NCREE.
- add Mw_source column.

| flag | type                                     |
| :--- | :--------------------------------------- |
| 0    | Mainshock                                |
| !=0  | fore- and after- shock (EQID from eq.catalog indicate the EQID of foreshock or aftershock) |

| flag_sub | type                                     |
| :------- | :--------------------------------------- |
| 0        | Shallow or Deep Crustal Earthquake       |
| 1        | Beneath Ryukyu Interface Crustal Earthquake |
| 2        | Beneath Маnilа Interface Crustal Earthquake |
| 3        | In Front of Ryukyu Trench Earthquake     |
| 4        | In Front of Маnilа Trench Earthquake     |
| 5        | Ryukyu Intraslab Earthquake              |
| 6        | Маnilа Intraslab Earthquake              |

| flag_crustal_type | type                       |
| :---------------- | :------------------------- |
| 0                 | Other Earthquake           |
| 1                 | Shallow Crustal Earthquake |
| 2                 | Deep Crustal Earthquake    |
| 3                 | Shallow Oceanic Earthquake |
| 4                 | Deep Oceanic Earthquake    |

| flag_cmp | type           |
| :------- | :------------- |
| 0        | Taiwan Region  |
| 1        | Pacific Region |
| 2        | China Region   |

| flag_feq | type                 |
| :------- | :------------------- |
| 0        | Non-fault earthquake |
| 1        | Fault earthquake     |

##SSHAC_GM_v4_20161228

* add event type classification "eq.type.SSC" from SSC's eq activity rate calculation result. 
  see [SSHAC_GM_v4_20161228_document.md](doc/SSHAC_GM_v4_20161228_document.md) for newest column documnetation.

##SSHAC_GM_v4_20161224
* using new earthquake catalog (SSHAC_Catalog_final.TXT, 20161222), reselect fault plane from focal mechanism, recalculate distanace metric(by Brian Chiou).
* reorganize columns, only keep suggested column for each variable. 
  see [SSHAC_GM_v4_20161224_document.md](doc/SSHAC_GM_v4_20161224_document.md) for newest column documnetation.

##TNGA_v3_20161014a

* rename and reorder column, remove some unused columns.
  see [TNGA_v3_20161014_document.md](doc/TNGA_v3_20161014_document.md) for newest column documnetation.

## TNGA_v3_20161014

* add instrument type from sgm.index to database

| Instrument |
| :--------- |
| A800       |
| A800       |
| A800       |

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

