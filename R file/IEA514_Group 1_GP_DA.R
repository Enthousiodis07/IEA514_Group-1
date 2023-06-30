#########################
# Author: Demus Matheus Huang (Group 1)
# Course: IEA514 - Applied Environmental Forensics
# Assignment: Group Project - Data Analysis
# Date created: 2023-06-20
#########################

#### Preparation ####

# Firstly, the downloaded dataset with .xlsx extension from eLearning@USM must be converted to .csv extension.
# How to do the conversion? In your .xlsx file, click 'File' tab -> Save As -> CSV (Comma delimited) (*.csv) 


# Import the data
df0 <- read.csv("data/IEA514_Group 1.csv")
View(df0)

# Looking at the data
head(df0)
dim(df0)
summary(df0)

# Column adjustment
df0$new <- c(rep('Japan',30), rep('Pakistan', 16), rep('Thai', 16), 
            rep ('Group 1', 2)) # add new column
df <- df0[,c(1, 16, 2:15)]
colnames(df)[2] = "Sample" # rename new column
df <- df[,-1] # delete first column
View(df)



#### Exploratory plots ####

# Names for the x labels
samples <- c(rep('Japan',30), rep('Pakistan', 16), rep('Thai', 16), 
             rep ('Group 1', 2))

# Change the column sample from being a character to a factor

df$Sample <- as.factor(df$Sample)

# Change Sample levels

df$Sample <- factor(df$Sample, levels = c('Japan', 'Pakistan', 'Thai', 'Group 1'))


#### Na ####
# Bar plot
jpeg('figs/barplot_Na.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Na_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Na [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Na.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Na_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4) # no need ylab as it is redundant
dev.off()



#### Mg ####
# Bar plot
jpeg('figs/barplot_Mg.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Mg_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Mg [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Mg.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Mg_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### P ####
# Bar plot
jpeg('figs/barplot_P.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$P_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'P [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_P.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$P_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### K ####
# Bar plot
jpeg('figs/barplot_K.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$K_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'K [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_K.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$K_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Ca ####
# Bar plot
jpeg('figs/barplot_Ca.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ca_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Ca [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ca.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ca_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Fe ####
# Bar plot
jpeg('figs/barplot_Fe.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Fe_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Fe [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Fe.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Fe_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Co ####
# Bar plot
jpeg('figs/barplot_Co.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Co_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Co [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Co.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Co_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Cu ####
# Bar plot
jpeg('figs/barplot_Cu.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Cu_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Cu [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Boxplots
jpeg('figs/boxplot_Cu.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Cu_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Zn ####
# Bar plot
jpeg('figs/barplot_Zn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Zn_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Zn [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Zn.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Zn_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Rb ####
# Bar plot
jpeg('figs/barplot_Rb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Rb_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Rb [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Rb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Rb_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Sr ####
# Bar plot
jpeg('figs/barplot_Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Sr_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Sr [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Sr.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Sr_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### Ba ####
# Bar plot
jpeg('figs/barplot_Ba.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ba_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Ba [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Ba.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Ba_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()




#### Pb ####
# Bar plot
jpeg('figs/barplot_Pb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$Ba_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'Pb [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('bottomleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_Pb.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$Pb_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### U ####
# Bar plot
jpeg('figs/barplot_U.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,4,1,0.5))
barplot(df$U_mg.kg, xaxt = 'n', cex.axis = 0.4, 
        xlab = 'Location', 
        ylab = 'U [mg/kg]',
        col = as.factor(df$Sample),
        width = c(0.84, 0.84, 0.84, 0.84))
axis(1, at = 1:nrow(df), labels = samples, las = 2, cex.axis = 0.4)
legend('topleft', c('Japan','Pakistan','Thai','Group 1'), 
       pch = c(15,15,15,15),
       col = c('black','red','green','blue'), cex = 0.4)
dev.off()


# Box plot
jpeg('figs/boxplot_U.jpeg', res = 300, units = 'cm', height = 8, width = 8)
par(mar = c(4,2,1,0.5)) 
plot(df$Sample, df$U_mg.kg, xlab = 'Location', ylab = '', cex.axis = 0.4)
dev.off()



#### ANOVA for Na ####
df_aov_Na <- df[,c(1,2)]
result_Na <- aov(Na_mg.kg ~ Sample, data = df_aov_Na)
summary(result_Na)

#### ANOVA for Mg ####
df_aov_Mg <- df[,c(1,3)]
result_Mg <- aov(Mg_mg.kg ~ Sample, data = df_aov_Mg)
summary(result_Mg)

#### ANOVA for P ####
df_aov_P <- df[,c(1,4)]
result_P <- aov(P_mg.kg ~ Sample, data = df_aov_P)
summary(result_P)

#### ANOVA for K ####
df_aov_K <- df[,c(1,5)]
result_K <- aov(K_mg.kg ~ Sample, data = df_aov_K)
summary(result_K)

#### ANOVA for Ca ####
df_aov_Ca <- df[,c(1,6)]
result_Ca <- aov(Ca_mg.kg ~ Sample, data = df_aov_Ca)
summary(result_Ca)

#### ANOVA for Fe ####
df_aov_Fe <- df[,c(1,7)]
result_Fe <- aov(Fe_mg.kg ~ Sample, data = df_aov_Fe)
summary(result_Fe)

#### ANOVA for Co ####
df_aov_Co <- df[,c(1,8)]
result_Co <- aov(Co_mg.kg ~ Sample, data = df_aov_Co)
summary(result_Co)

#### ANOVA for Cu ####
df_aov_Cu <- df[,c(1,9)]
result_Cu <- aov(Cu_mg.kg ~ Sample, data = df_aov_Cu)
summary(result_Cu)

#### ANOVA for Zn ####
df_aov_Zn <- df[,c(1,10)]
result_Zn <- aov(Zn_mg.kg ~ Sample, data = df_aov_Zn)
summary(result_Zn)

#### ANOVA for Rb ####
df_aov_Rb <- df[,c(1,11)]
result_Rb <- aov(Rb_mg.kg ~ Sample, data = df_aov_Rb)
summary(result_Rb)

#### ANOVA for Sr ####
df_aov_Sr <- df[,c(1,12)]
result_Sr <- aov(Sr_mg.kg ~ Sample, data = df_aov_Sr)
summary(result_Sr)

#### ANOVA for Ba ####
df_aov_Ba <- df[,c(1,13)]
result_Ba <- aov(Ba_mg.kg ~ Sample, data = df_aov_Ba)
summary(result_Ba)

#### ANOVA for Pb ####
df_aov_Pb <- df[,c(1,14)]
result_Pb <- aov(Pb_mg.kg ~ Sample, data = df_aov_Pb)
summary(result_Pb)

#### ANOVA for U ####
df_aov_U <- df[,c(1,15)]
result_U <- aov(U_mg.kg ~ Sample, data = df_aov_U)
summary(result_U)



#### Cluster analysis ####

# Modify the df0 back into its original state
df0 <- df0[,-16]
df0$Sample <- as.factor(df0$Sample) # Sample column as factor instead of character
View(df0)

# Prepare the data for cluster analysis
df0_temp <- df0[,-1] # Remove the first column to discard the non-numeric column
df0_temp <- data.matrix(df0_temp) # Change to matrix format for heatmap analysis
row.names(df0_temp) <- paste0(as.character(df0[,1]), 1:nrow(df0)) # Add the locations to the plot

jpeg('figs/heatmap_IEA514_Group_1.jpeg', res = 300, units = 'cm', height = 16, width = 16)
# The margins of the plot: bottom, left, top, right
par(mar = c(2,2,2,2))
heatmap(df0_temp)
dev.off()


## Cluster analysis using the complete method
# Linkage method is complete
jpeg('figs/hc_complete_IEA514_Group_1.jpeg', res = 300, units = 'cm', height = 8, width = 8)
# The margins of the plot: bottom, left, top, right
par(mar = c(2,2,2,2))
hc <- hclust(dist(df0_temp), 
             method = 'complete')
plot(hc, labels = df0$Sample, main = 'Complete', hang = -1, cex = 0.2)
dev.off()


# Linkage method is average
jpeg('figs/hc_average_IEA514_Group_1.jpeg', res = 300, units = 'cm', height = 8, width = 8)
# The margins of the plot: bottom, left, top, right
par(mar = c(2,2,2,2))
hc <- hclust(dist(df0_temp), 
             method = 'average')
plot(hc, labels = df0$Sample, main = 'Average', hang = -1, cex = 0.2)
dev.off()


plot(hc, labels = df0$Sample, cex = 0.5)

#Optional: K-means clustering
#k_means <- kmeans(df0_temp, 3, nstart = 20)
#k_means
#table(k_means$cluster, df0$Sample)

#### PCA ####
#install.packages('car') # Only one time install
library(car) # load the package

IEA514_Group_1.pca <- prcomp(df[,-1], # Remove the first column
                      center = TRUE, # Center the data, similar to scaling
                      scale. = TRUE) # Need to be scaled because of magnitude diff.

jpeg('figs/biplot_IEA514_Group_1.jpeg', res = 300, units = 'cm', height = 16, width = 16)
# The margins of the plot: bottom, left, top, right
par(mar = c(4,4,1,1))
plot(IEA514_Group_1.pca$x[,1:2], # Plot only the first and second PCs
     pch = 20,        # The marker 
     col = df$Sample, # The color
     xlim = c(-5,10), ylim = c(-5,6)) # The limits of the axes
dataEllipse(IEA514_Group_1.pca$x[,1],  # PC1
            IEA514_Group_1.pca$x[,2],  # PC2
            groups = df$Sample, # Groups
            lwd = 1,            # line width
            group.labels = c('Japan','Pakistan','Thai','Group 1'), 
            plot.points = FALSE, # Do not want to redraw points on top of old points
            levels = 0.5,      # 50% confidence level, similar to what is set in ggbiplot
            add = TRUE,
            fill=TRUE, 
            fill.alpha = 0.02,
            col = c('black','red','green','blue'))

legend('bottomright', c('Japan','Pakistan','Thai','Group 1'), pch = c(20,20,20,20),
       col = c('black','red','green','blue'))
dev.off()

