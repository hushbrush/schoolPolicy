
# regression model.

install.packages("dplyr") 
# Packages
library(tidyverse)
library(corrplot)

#We will download a few packages to run regressions
install.packages("car") #will be useful next lab
library(car)

install.packages("psych") #will be useful next lab
library(psych)

install.packages("broom") #useful to run regression by groups
library(broom)


#for the exported tables
install.packages("sjPlot")
library(sjPlot)

options(scipen = 999)



# Dataset - General Social Survey 2006
data_src<-read.csv("linear_regression_a1.csv")

# this is the cleaned dataframe,
df<-data_src %>% 
  select(snum, dnum, acadperf, meals, ell, yr_rnd, mobility, acs, not_hsg, hsg, some_col, col_grad, grad_sch, full, emer, enroll, mealcat) %>% 
  drop_na()
View(df)


#okay, I am going to add dummy variables for categories so that I can make sure I know which to pick.
df <- df %>%
  mutate(mid_frmeals = ifelse(mealcat == 2, 1, 0),
         high_frmeals = ifelse(mealcat == 3, 1, 0))


#what I think is important:

df_imp<-data_src %>% 
  select(snum, acadperf, meals, ell, yr_rnd, acs, not_hsg, hsg, some_col, col_grad, grad_sch, full ) %>% 
  drop_na()
  
View(df_imp)



#let's see what I'm working with:
summary(df_imp)


#correlation matrix
cor_mat <- cor(df)
round(cor_mat, 2)

# Visualize the correlation matrix
corrplot(cor_mat, method = "color", type = "upper", tl.col = "black", tl.srt = 45)


#but tbh this name doesnt make any sense, so I will change the variable name while adding it.
df <- df %>% rename(fullCred_teachers = full, englishLanguageLearners =ell)

#education
edu_model <- lm(acadperf ~ not_hsg + hsg + some_col + col_grad + grad_sch, data = df)
vif(edu_model)


#Okay, we are starting fr now.
#1. startign with finance: this is out bivariate model
model_finance <- lm(acadperf ~ meals, data = df)
summary(model_finance)
View(model_finance)


ggplot(df, aes(x = enroll, y = acadperf)) +
  geom_point(color = "blue") +  # Scatter plot
  geom_smooth(method = "lm", color = "red") +  # Regression line
  labs(title = "Academic Performance vs % of Free Meals in the School", x = "% Free Meals in School", y = "Academic Performance") +
  theme_minimal()


tab_model(model_finance, show.p = TRUE, show.se = TRUE, file = "model_summary.html")


#checking violations for number 8:
plot(fitted(model_finance), residuals(model_finance))  # Residuals vs. Fitted values
abline(h=0, col="red")  # Add a reference line at 0

plot(fitted(model_finance), abs(residuals(model_finance)))  # Scale-Location plot
abline(h=0, col="red")


hist(residuals(model_finance), main="Histogram of Residuals", col="lightblue")
qqnorm(residuals(model_finance))
qqline(residuals(model_finance), col="red")  # QQ plot
shapiro.test(residuals(model_finance))  # Shapiro-Wilk normality test

plot(model_finance)


#2. we are adding in education.
model_finEdu <- lm(acadperf ~ meals + col_grad + some_col + hsg + not_hsg + grad_sch, data = df)
anova(model_finance, model_finEdu)  # Check ΔR²
tab_model(model_finEdu, model_finance,  show.p = TRUE, show.se = TRUE, file = "models_12.html")
browseURL("models_12.html")

summary(model_finEdu)
#means I gotta drop col_grad, hsg, some_col

#3. Now we add in the resources that the school brings to each child, so we are bringing in full. 
model_finEduSch <- lm(acadperf ~ meals + not_hsg+ grad_sch + fullCred_teachers, data = df)
anova(model_finEdu, model_finEduSch)
summary(model_finEduSch)


#now we add in variables that I didn't think were important but thw corr suggests it is.
#4. first, enrolment rate
model_finEduSchEnr <- lm(acadperf ~ meals + not_hsg + grad_sch + fullCred_teachers+ englishLanguageLearners, data = df)
anova(model_finEduSch, model_finEduSchEnr)
summary(model_finEduSchEnr)

#lets check vif here once
vif_model <- vif(lm(acadperf ~ meals + not_hsg + grad_sch + fullCred_teachers+ englishLanguageLearners, data = df))
vif_model

#5 second, year_roundness.
model_finEduSchEnrYrrnd <- lm(acadperf ~ meals + not_hsg + grad_sch + fullCred_teachers+ englishLanguageLearners + yr_rnd, data = df)
anova( model_finEduSchEnr, model_finEduSchEnrYrrnd)
summary(model_finEduSchEnr)

#adding in enrolment rate
model_finEduSchEnrYrrndEnroll <- lm(acadperf ~ meals + not_hsg + grad_sch + fullCred_teachers+ englishLanguageLearners + yr_rnd+enroll, data = df)
anova( model_finEduSchEnr, model_finEduSchEnrYrrndEnroll)
summary(model_finEduSchEnrYrrndEnroll)

#okay,  So we keep model_finEduSchEnr as the final.
final_model =model_finEduSchEnrYrrnd

#lets plot it.
par(mfrow = c(2, 2))  # Arrange plots in a 2x2 grid
plot(final_model)
summary(final_model)


# testing out interaction between free meals and the parents who didn't go to high school:
final_model_interaction <- lm(acadperf ~ meals * grad_sch +  meals + fullCred_teachers + not_hsg + grad_sch + englishLanguageLearners + yr_rnd, data = df)


plot(final_model_interaction)
anova( final_model, final_model_interaction)
summary(final_model_interaction)
tab_model(final_model_interaction, show.p = TRUE, show.se = TRUE, file = "interaction_model_summary.html")


# Compute the correlation matrix
cor_matrix <- cor(df, use = "complete.obs")  # Handles missing values

# Create a cleaned-up correlation plot
png("correlation_matrix.png", width = 1000, height = 800)  # Save as an image

corrplot(cor_matrix, method = "color", 
         type = "lower",      # Show only the lower triangle
         tl.col = "black",    # Change text color
         tl.srt = 45,         # Rotate text labels
         addCoef.col = "black", # Add correlation coefficients
         number.cex = 0.8,    # Adjust size of numbers
         col = colorRampPalette(c("blue", "white", "red"))(200)) # Color gradient

dev.off()

summary(final_model_interaction)
tab_model(final_model_interaction, final_model, model_finEduSch, model_finance, show.p = TRUE, show.se = TRUE, file = "model_comparison.html")
browseURL("model_comparison.html")

tab_model(final_model_interaction, show.p = TRUE, show.se = TRUE, file = "final_model.html")
browseURL("final_model.html")


# Residuals vs Fitted plot
plot(final_model_interaction, which = 1)


# Install and load lmtest package
install.packages("lmtest")
library(lmtest)

# Run Durbin-Watson test
dwtest(final_model_interaction)

# Residuals vs Fitted plot
plot(final_model_interaction, which = 1)

# Breusch-Pagan test for homoscedasticity
bptest(final_model_interaction)


# Q-Q plot
qqnorm(residuals(final_model_interaction))
qqline(residuals(final_model_interaction))



#VIF
vif_model_final <- vif(lm(acadperf ~ meals * grad_sch +  meals + fullCred_teachers + not_hsg + grad_sch + englishLanguageLearners + yr_rnd, data = df))
vif_model_final


#OMV:
library(lmtest)
resettest(final_model_interaction)



