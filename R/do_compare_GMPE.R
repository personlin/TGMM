# Plot GMPE for comparison with sensitivity analysis
# 2016.09.10
# Person


library(ggplot2)
library(gtools)
library(dplyr)

#GMPE libarary
library(GMPEhaz)

periods.T <- c(0.010, 0.020, 0.022, 0.025, 0.029, 0.030, 0.032, 0.035, 0.036, 
               0.040, 0.042, 0.044, 0.045, 0.046, 0.048, 0.050, 0.055, 0.060, 
               0.065, 0.067, 0.070, 0.075, 0.080, 0.085, 0.090, 0.095, 0.100, 
               0.110, 0.120, 0.130, 0.133, 0.140, 0.150, 0.160, 0.170, 0.180, 
               0.190, 0.200, 0.220, 0.240, 0.250, 0.260, 0.280, 0.290, 0.300, 
               0.320, 0.340, 0.350, 0.360, 0.380, 0.400, 0.420, 0.440, 0.450, 
               0.460, 0.480, 0.500, 0.550, 0.600, 0.650, 0.667, 0.700, 0.750, 
               0.800, 0.850, 0.900, 0.950, 1.000, 1.100, 1.200, 1.300, 1.400, 
               1.500, 1.600, 1.700, 1.800, 1.900, 2.000, 2.200, 2.400, 2.500, 
               2.600, 2.800, 3.000, 3.200, 3.400, 3.500, 3.600, 3.800, 4.000, 
               4.200, 4.400, 4.600, 4.800, 5.000, 5.500, 6.000, 6.500, 7.000, 
               7.500, 8.000, 8.500, 9.000, 9.500, 10.000)

cnames.CY14 <- c("Mag", "Rrup", "Rjb", "Prd", "Vs30", "Dip", "Ztor", "ftype", "Z1.0",
                    "Vs30_class", "hwflag", "Rx", "regionflag")
cnames.ASK14 <- c("Mag", "Rrup", "Rjb", "Prd", "Dip", "ftype", "rupwidth", "Vs30", "hwflag",
                     "Ztor", "Vs30_class", "Z1.0", "Rx", "Ry0", "regionflag", "msasflag")
cnames.BSSA14 <- c("Mag", "Rjb", "Prd", "Vs30", "ftype", "Z1.0", "regionflag", "basinflag")
cnames.CB14 <- c("Mag", "Rrup", "Rjb", "ftype", "Prd", "Vs30", "Ztor", "Z2.5", "Dip", "depth",
                 "hwflag", "Rx", "rupwidth", "regionflag")
cnames.AC10 <- c("Mag", "Rjb", "Prd", "ftype", "Vs30")
cnames.BI14 <- c("Mag", "Rjb", "Prd", "ftype", "Vs30")

cnames.Lin11Rock <- c("Mag", "Rrup", "Prd", "hwflag")
cnames.Lin11Soil <- c("Mag", "Rrup", "Prd", "hwflag")

cnames.LL08Rock <- c("Mag", "Rrup", "depth", "ftype", "Prd")
cnames.BCHydroSubV3 <- c("Mag", "ftype", "Rrup", "Vs30", "Prd", "forearc", "depth", "disthypo")
cnames.Youngs97Rock <- c("Mag", "Rrup", "Prd", "ftype", "depth")
cnames.AB03 <- c("Mag", "Rrup", "Prd", "ftype", "depth", "Sc", "Sd", "Se")
cnames.Kanno06  <- c("Mag", "Rrup", "Prd", "Vs30", "depth")
cnames.Gregor06 <-c("Mag", "Rrup", "Prd", "Vs30")
cnames.Zh06 <- c("Mag", "Rrup", "ftype", "sclass", "Prd", "sourceclass", "depth")

cnames.Zh16Cru <- c("Mag", "Rrup", "ftype", "sclass", "Prd", "sourceclass", "depth")
cnames.Zh16Sub <- c("Mag", "Rrup", "sclass", "Prd", "sourceclass", "depth")

# GMPE.names <- c("LL08Rock", "BCHydroSubV3", "Youngs97Rock", "AB03Haz", "Kanno06", "Gregor06")
# smallest.period <- c(0.01, 0.02, 0.075, 0.04, 0.05, 0.02)
# largest.period <- c(5.0, 10.0, 3.0, 3.0, 5.0, 5.0)

# GMPE.names <- c("LL08Rock", "BCHydroSubV3", "CY14Haz", "ASK14Haz")
# smallest.period <- c(0.01, 0.02, 0.01, 0.01)
# largest.period <- c(5.0, 10.0, 10.0, 10.0)


# Compare with Crustal GMPE ----
GMPE.names <- c("CY14", "ASK14", "BSSA14", "CB14", "Zh16Cru", "Lin11Rock")
smallest.period <- c(0.01, 0.01, 0.01, 0.01, 0.01, 0.01)
largest.period <- c(10.0, 10.0, 10.0, 10.0, 5.0, 5.0)

mags <- c(5.0, 6.0, 7.0, 8.0) 
Ztor <- c(6, 3, 1, 0)
ftype <- 0
depth <- 10
cases <- data.frame(mags, Ztor, ftype, depth)
names(cases) <- c("M", "Ztor","ftype", "depth")
cases$id <- row.names(cases)

k <- 1
Data <- data.frame(Mag = cases$M[k],
                   Dip = 90,
                   Ztor = cases$Ztor[k],
                   depth= cases$depth[k], 
                   Rx = 10, 
                   Ry0 = 0,
                   Rrup = 10,
                   Rjb = 10,
                   rupwidth = 30,
                   Vs30 = 760,
                   Z1.0 = 0.04,
                   Z2.5 = 0.6,
                   ftype= cases$ftype[k],
                   Vs30_class = 1,
                   hwflag = 0,
                   regionflag= 0,
                   basinflag = 0,
                   msasflag=0,
                   sclass = 1,
                   sourceclass = 0,
                   Prd=periods.T)

# loop over GMPE and period
for (i in 1:length(GMPE.names)){
  # set smallest period for each GMPE
  Data.in <- subset(Data, Prd >= smallest.period[i] & Prd <= largest.period[i])
  assign(paste0("vals.",i), sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(GMPE.names[i], Data.in[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
  #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
  eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
  eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
  eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
  eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
  eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
}
vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4, vals.5, vals.6)

# loop over simulation station and case
for (k in 2:dim(cases)[1]){
  Data <- data.frame(Mag = cases$M[k],
                     Dip = 90,
                     Ztor = cases$Ztor[k],
                     depth= cases$depth[k], 
                     Rx = 10, 
                     Ry0 = 0,
                     Rrup = 10,
                     Rjb = 10,
                     rupwidth = 30,
                     Vs30 = 760,
                     Z1.0 = 0.04,
                     Z2.5 = 0.6,
                     ftype= cases$ftype[k],
                     Vs30_class = 1,
                     hwflag = 0,
                     regionflag= 0,
                     basinflag = 0,
                     msasflag=0,
                     sclass = 1,
                     sourceclass = 0,
                     Prd=periods.T)
  # loop over GMPE and period
  for (i in 1:length(GMPE.names)){
    # set smallest period for each GMPE
    Data.in <- subset(Data, Prd >= smallest.period[i] & Prd <= largest.period[i])
    assign(paste0("vals.",i), sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(GMPE.names[i], Data.in[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
    eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
    eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
  }
  vals <- smartbind(vals.1, vals.2, vals.3, vals.4, vals.5, vals.6)
  vals.all <- rbind(vals.all, vals)
}

# plot spectrum 
vals.all %>%
  ggplot(aes(x=period, y=lnY, colour=GMPE, linetype=GMPE)) + geom_line(size=1) + facet_wrap(~mag) + 
  scale_x_log10(name="Period", breaks=c(0.01,0.1,1,10), minor_breaks= NULL, labels = c(0.01,0.1,1,10)) + 
  scale_y_log10(name = "Sa(g)")
ggsave(filename="figs/check_Zh16_Cru.png", width=12, height=8, dpi=200)


# Different M with Rrup for Crustal GMPE ----
GMPE.names <- c("CY14", "ASK14", "BSSA14", "CB14", "Zh16Cru", "Lin11Rock")
mags <- c(5.0, 6.0, 7.0, 8.0) 
Ztor <- c(6, 3, 1, 0)
cases <- data.frame(mags, Ztor)
cases$id <- row.names(cases)
for (k in 1:nrow(cases)){
  pdata <- data.frame(Mag = cases$mags[k],
                      Dip = 90,
                      Ztor = cases$Ztor[k],
                      depth= 10, 
                      Rx = c(0.5, seq(1, 300, by=1)), 
                      Ry0 = 0,
                      Rrup = c(0.5, seq(1, 300, by=1)),
                      Rjb = c(0.5, seq(1, 300, by=1)),
                      rupwidth = 16, #(km)
                      Vs30 = 760,  #(m/s)
                      Z1.0 = 0.04,   #(m)
                      Z2.5 = 0.6,  #(km)
                      ftype= 0,
                      Vs30_class = 1,
                      hwflag = 0,
                      regionflag= 0,
                      basinflag = 0,
                      msasflag=0,
                      sclass = 1,
                      sourceclass = 0,
                      Prd=0)
  # loop over GMPE 
  for (i in 1:length(GMPE.names)){
    assign(paste0("vals.",i), sapply(1:(dim(pdata)[1]), FUN=function(j) {do.call(GMPE.names[i], pdata[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  }
  # add Rrup for two GMPE using Rjb in order to make the plot at same figure
  vals.3$Rrup <- pdata$Rrup
  vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4, vals.5, vals.6)
  
  ggplot(vals.all, aes(x=Rrup, y=lnY, col=GMPE)) + 
    geom_line(size=1.0) + 
    scale_x_log10() + scale_y_log10(limits=c(0.001,0.75)) + 
    theme_linedraw() + theme(legend.key = element_blank()) + annotation_logticks() +
    labs(x = expression(R[rup]), y="PGA")
  ggsave(file=paste0("figs/GMPE_CRU_R_M",cases$mags[k],".png"), width=6, height=3.6, dpi=300)
}



# Compare with Subduction GMPE ----

GMPE.names <- c("LL08Rock", "BCHydroSubV3", "Zh06", "Zh16Sub")
smallest.period <- c(0.01, 0.02, 0.01, 0.01)
largest.period <- c(5.0, 10.0, 5.0, 5.0)

mags <- c(7,7.5,8,8.5,9) 
df2 <- data.frame(ftype=c(0,1), Rrup=c(15,50), depth=c(15, 50), type=c("interface", "intraslab"), stringsAsFactors=FALSE)
cases <- merge(mags, df2)
names(cases) <- c("M", "ftype", "Rrup", "depth", "type")
cases$id <- row.names(cases)

k <- 1
Data <- data.frame(Mag = cases$M[k],
                   Rrup = cases$Rrup[k],
                   ftype= cases$ftype[k],
                   depth= cases$depth[k], 
                   Prd=periods.T,
                   Vs30 = 760,
                   forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                   disthypo = cases$depth[k],
                   Sc = 0,
                   Sd = 0,
                   Se = 0,
                   sclass = 1,
                   sourceclass = ifelse(cases$type[k] == "interface", 1, 
                                   ifelse(cases$type[k] == "instraslab", 2, 0)))
# loop over GMPE and period
for (i in 1:length(GMPE.names)){
  # set smallest period for each GMPE
  Data.in <- subset(Data, Prd >= smallest.period[i] & Prd <= largest.period[i])
  assign(paste0("vals.",i), sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(GMPE.names[i], Data.in[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
  #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
  eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
  eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
  eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
  eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
  eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
}
vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4)

# loop over simulation station and case
for (k in 2:dim(cases)[1]){
  Data <- data.frame(Mag = cases$M[k],
                     Rrup = cases$Rrup[k],
                     ftype= cases$ftype[k],
                     depth= cases$depth[k], 
                     Prd=periods.T,
                     Vs30 = 760,
                     forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                     disthypo = cases$depth[k],
                     Sc = 0,
                     Sd = 0,
                     Se = 0,
                     sclass = 1,
                     sourceclass = ifelse(cases$type[k] == "interface", 1, 
                                          ifelse(cases$type[k] == "instraslab", 2, 0)))
  # loop over GMPE and period
  for (i in 1:length(GMPE.names)){
    # set smallest period for each GMPE
    Data.in <- subset(Data, Prd >= smallest.period[i] & Prd <= largest.period[i])
    assign(paste0("vals.",i), sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(GMPE.names[i], Data.in[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
    eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
    eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
  }
  vals <- smartbind(vals.1, vals.2, vals.3, vals.4)
  vals.all <- rbind(vals.all, vals)
}

# plot spectrum for interface 
#period2 <- filter(vals.all, specT == 2.0, GMPE=="LL08Rock", type=="interface")
filter(vals.all, type == "interface") %>%
  ggplot(aes(x=period, y=lnY, colour=GMPE, linetype=GMPE)) + geom_line(size=1) + facet_wrap(~mag) + 
  scale_x_log10(name="Period", breaks=c(0.01,0.1,1,10), minor_breaks= NULL, labels = c(0.01,0.1,1,10)) + 
  scale_y_log10(name = "Sa(g)") 
ggsave(filename="figs/check_Zh16_Sub_Inter.png", width=12, height=8, dpi=200)

# plot spectrum for intraslab 
#period2 <- filter(vals.all, specT == 2.0, GMPE=="LL08Rock", type=="intraslab")
filter(vals.all, type == "intraslab") %>%
  ggplot(aes(x=period, y=lnY, colour=GMPE, linetype=GMPE)) + geom_line(size=1) + facet_wrap(~mag) + 
  scale_x_log10(name="Period", breaks=c(0.01,0.1,1,10), minor_breaks= NULL, labels = c(0.01,0.1,1,10)) + 
  scale_y_log10(name = "Sa(g)") 
ggsave(filename="figs/check_Zh16_Sub_Slab.png", width=12, height=8, dpi=200)

# Different M with Rrup for Subduction GMPE ----
GMPE.names <- c("LL08Rock", "BCHydroSubV3", "Zh06", "Zh16Sub")
mags <- c(6.0, 7.0, 8.0, 9.0) 
cases <- data.frame(mags)
names(cases) <- "M"
cases$id <- row.names(cases)
# interface
for (k in 1:nrow(cases)){
  pdata <- data.frame(Mag = cases$M[k],
                      Rrup = c(0.5, seq(1, 300, by=1)),
                      ftype= 0,
                      depth= 15, 
                      Prd=0,
                      Vs30 = 760,
                      forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                      disthypo = c(0.5, seq(1, 300, by=1)),
                      Sc = 0,
                      Sd = 0,
                      Se = 0,
                      sclass = 1,
                      sourceclass = 1)
  # loop over GMPE 
  for (i in 1:length(GMPE.names)){
    assign(paste0("vals.",i), sapply(1:(dim(pdata)[1]), FUN=function(j) {do.call(GMPE.names[i], pdata[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/981.0")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  }
  vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4)
  
  ggplot(vals.all, aes(x=Rrup, y=lnY, col=GMPE)) + 
    geom_line(size=1.0) + 
    scale_x_log10(limits=c(10,300)) + scale_y_log10(limits=c(0.001,1.5)) + 
    theme_linedraw() + theme(legend.key = element_blank()) + annotation_logticks() + 
    labs(x = expression(R[rup]), y="PGA")
  ggsave(file=paste0("figs/GMPE_SUB_interface_R_M",cases$M[k],".png"), width=6, height=3.6, dpi=300)
}

#intraslab
mags <- c(5.0, 6.0, 7.0, 8.0) 
cases <- data.frame(mags)
names(cases) <- "M"
cases$id <- row.names(cases)
for (k in 1:nrow(cases)){
  pdata <- data.frame(Mag = cases$M[k],
                      Rrup = c(0.5, seq(1, 300, by=1)),
                      ftype= 1,
                      depth= 50, 
                      Prd=0,
                      Vs30 = 760,
                      forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                      disthypo = c(0.5, seq(1, 300, by=1)),
                      Sc = 0,
                      Sd = 0,
                      Se = 0,
                      sclass = 1,
                      sourceclass = 2)
  # loop over GMPE 
  for (i in 1:length(GMPE.names)){
    assign(paste0("vals.",i), sapply(1:(dim(pdata)[1]), FUN=function(j) {do.call(GMPE.names[i], pdata[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/981.0")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  }
  vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4)
  
  ggplot(vals.all, aes(x=Rrup, y=lnY, col=GMPE)) + 
    geom_line(size=1.0) + 
    scale_x_log10(limits=c(10,300)) + scale_y_log10(limits=c(0.001,1.5)) + 
    theme_linedraw() + theme(legend.key = element_blank()) + annotation_logticks() + 
    labs(x = expression(R[rup]), y="PGA")
  ggsave(file=paste0("figs/GMPE_SUB_intraslab_R_M",cases$M[k],"_D","50",".png"), width=6, height=3.6, dpi=300)
}



# Compare magnitude scaling for PGA and Sa 2s ----

mags <- seq(5,9, by=0.1)
periods <- c(0.0, 2.0)
df2 <- data.frame(ftype=c(0,1), Rrup=c(15,50), depth=c(15, 50), type=c("interface", "intraslab"), stringsAsFactors=FALSE)
cases <- merge(periods, df2)
names(cases) <- c("periods", "ftype", "Rrup","depth", "type")
cases$id <- row.names(cases)

k <- 1
Data <- data.frame(Mag = mags,
                   Rrup = cases$Rrup[k],
                   ftype= cases$ftype[k],
                   depth= cases$depth[k], 
                   Prd=cases$periods[k],
                   Vs30 = 760,
                   forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                   disthypo = cases$depth[k],
                   Sc = 0,
                   Sd = 0,
                   Se = 0,
                   sclass = 1,
                   sourceclass = ifelse(cases$type[k] == "interface", 1, 
                                        ifelse(cases$type[k] == "intraslab", 2, 0)))
# loop over GMPE and period
for (i in 1:length(GMPE.names)){
  # set smallest period for each GMPE
  assign(paste0("vals.",i), sapply(1:(dim(Data)[1]), FUN=function(j) {do.call(GMPE.names[i], Data[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
  #eval(parse(text=paste0("vals.",i, "<- sapply(1:(dim(Data.in)[1]), FUN=function(j) {do.call(", GMPE.names[i],", Data.in[j, cnames.",GMPE.names[i],"])})")))
  eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
  eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
  eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
  eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
  eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
  eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
}
vals.all <- smartbind(vals.1, vals.2, vals.3, vals.4)

# loop over simulation station and case
for (k in 2:dim(cases)[1]){
  Data <- data.frame(Mag = mags,
                     Rrup = cases$Rrup[k],
                     ftype= cases$ftype[k],
                     depth= cases$depth[k], 
                     Prd=cases$periods[k],
                     Vs30 = 760,
                     forearc = 1,   #bowmei say only NPP3 is 0, others is 1, so set to 1
                     disthypo = cases$depth[k],
                     Sc = 0,
                     Sd = 0,
                     Se = 0,
                     sclass = 1,
                     sourceclass = ifelse(cases$type[k] == "interface", 1, 
                                          ifelse(cases$type[k] == "intraslab", 2, 0)))
  # loop over GMPE and period
  for (i in 1:length(GMPE.names)){
    # set smallest period for each GMPE
    assign(paste0("vals.",i), sapply(1:(dim(Data)[1]), FUN=function(j) {do.call(GMPE.names[i], Data[j, eval(parse(text=paste0("cnames.",GMPE.names[i])))])}))
    eval(parse(text=paste0("vals.",i, " <- apply(vals.", i, ", 1, unlist)")))
    eval(parse(text=paste0("vals.",i, " <- as.data.frame(vals.", i, ")")))
    eval(parse(text=paste0("vals.",i, "$lnY <- exp(vals.",i, "$lnY)/exp(6.89)")))
    eval(parse(text=paste0("vals.",i, "$GMPE=GMPE.names[",i,"]")))
    eval(parse(text=paste0("vals.",i, "$type=cases$type[",k,"]")))
    eval(parse(text=paste0("vals.",i, "$id=cases$id[",k,"]")))
  }
  vals <- smartbind(vals.1, vals.2, vals.3, vals.4)
  vals.all <- rbind(vals.all, vals)
}

# plot spectrum for intraslab 
filter(vals.all, type == "intraslab") %>%
  ggplot(aes(x=mag, y=lnY, colour=GMPE, linetype=GMPE)) + geom_line(size=1) + facet_wrap(~specT) +
  scale_x_continuous(breaks = 5:9) + scale_y_log10() 

vals.all %>%
  ggplot(aes(x=mag, y=lnY, colour=GMPE, linetype=GMPE)) + geom_line(size=1) + facet_grid(type~specT) +
  scale_x_continuous(breaks = 5:9) + 
  scale_y_log10(name = "Sa(g)",
                breaks = scales::trans_breaks("log10", function(x) 10^x),
#                minor_breaks= NULL,
                labels = scales::trans_format("log10", scales::math_format(10^.x))) +
  theme_bw()
ggsave(filename="figs/check_GMPE_Sub.png", width=12, height=8, dpi=200)

