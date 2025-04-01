# schoolPolicy

Statistical Analysis of School Performance
Task:
Building a statistical model that explains the correlation of variables with academic
performance.
Central Policy Issue
While school-level academic performance may not be the only indicator of future
success, it is linked to access to scholarships, further educational opportunities, and
more direct means of developing a professional career that lead to higher economic
mobility and stability. Outside of direct economic factors, positive academic performance
is also indicative of a society that has the resources and is interested in the upkeep of
itself. The analysis of factors that affect academic performance is important to decide
where to funnel collective resources to close gaps which can have positive effects on
society. This analysis offers a statistical analysis of data that shows school outcomes for
400 elementary schools randomly selected across the state of California. The data is
collected at the school level, so while it is not accurate on the individual level, it does
provide a broader understanding of where resources can be allocated to make
improvements.
Executive Summary:
The Key Takeaways of this modelling exercise was that academic performance at the
school level is a function of the financial security of the students that go to that school,
socio-economic factors such as their parent’s education level(which may also be
indicative of generational financial security) and the resources that the school has for its’
students, mainly in the form of whether the teachers are well trained and experienced to
do their job, or a proxy to check if the school had enough resources through checking
whether they ran the school year round or not.
Essentially, the number of students receiving free meals at the school, the lack of
students’ parents’ education, the lack of well trained teachers, and resources that the
school has for it’s students, and whether the students were English language learners had
a negative impact on the academic performance. On the other hand, less free
meals(meaning more financially secure students), high level of education for the parents
of the students’, well trained teachers, and a school with enough resources to handle all
of it’s students has a positive relationship with academic performance.
Key Findings
The bivariate model of academic performance against the percentage of free meals
revealed that 81.04% of the variation in academic performance across schools in
California is explained by the percentage of free meals in each school. Given that this is
the best indicator of a less secure financial status of the students’ that come to a school
on average, I expected this variable to be the most significant predictor of academic
performance. A secure financial status means a child is more likely to have the time to
focus on academics, and is less concerned with financial burdens or the behaviours of
adults that are caused due to financial burdens.
Another large factor that affects the academic performance of students has to do with the
resources at the school’s disposal to ensure that every student receives adequate
attention. This can be seen through the positive impact of teachers who have the full
credentials and training as teachers, as well as through the negative impact of the
enrolment rate and if the school works on a year round schedule.
While one assumes there is some overlap between those who can afford to pay for their
children’s meals and those who are educated, a high education level of the parents of the
students definitely indicates a much higher academic performance on average in the
school.
All of these, as it turns appears, are manifestations of a significant economic differences
in the students’ backgrounds.
Data and Logic
The data included the school number, district number, school wise academic
performance, percentage of students receiving free meals, percentage of English
language learners, whether the school taught year round, percentage of first-year
students (mobility), average class size, parental education levels (percentages of parents
with less than high school, high school, some college, college degrees, and graduate
school education), percentage of teachers with full credentials, percentage of teachers
with emergency credentials, total student enrolment, and categorical percentage of
students receiving free meals.
Of these, my assumption was that free meals and parental education were important,
While theoretically class size is very important because it indicates how much academic
attention each student is receiving, since the class sizes in the state of California are
capped, this variable did not show much range. In terms of other variables I assumed
were moderately important were whether a school was year round or not, and whether a
school had English language learners. A preliminary glance at the correlation matrix
revealed that both of them were significant, and hence I did keep them in the model.
I decided that the enrolment rate and mobility were not particularly useful based on my
logic, so I did not include them.
Recommendations
1. Since free meals is a proxy for economically insecure students rather than a variable
that has direct impact, those who receive free meals can be identified and provided
additional care. While this suggests an issue much larger than simply academic
performance, and looks into socio-economic reasons, perhaps more tactful policies
that look at the issue with sensitivity are required:
1. Those in need of free meals should be given extra care in terms of making the
most of their school time, and can be provided with adequate academic attention
so as to offset some of the impact from the distractions to their academic
performance from life outside of school.
2. They can also be encouraged through adequate financial education towards the
end of high school so that they may make decisions that help better their financial
situation.
3. Need-based scholarships can be created within this category of people so as to
provide for better educational opportunities beyond high school as well.
At a student level, this is the most important factor in predicting a decrease in academic
performance, so these should be paid attention to.
2. Resources can be funnelled towards improving the training and experience of the
teachers in the schools which hire teachers who do not have complete credentials.
teachers with training after hours, or be entirely replaced with teachers who are
already completely qualified to teach.
3. More resources should be funnelled towards ensuring that every school has the
resources to handle the total number of students in terms of infrastructure, academic
attention through tutoring, etc. At the School level, this is an extremely important
distinguishing factor for academic performance.
4. Since the English Language Learners has a negative impact on the academic
performance, perhaps it’s an indication that the education system is not as inclusive
towards those who come from diverse geographic backgrounds and do not speak
English at home. For this, perhaps more attention can be provided to students who do
not speak English. However, this variable has a much lower impact on the academic
performance than the resources of the school, the students who require the free
meals, and the teachers who aren’t well trained, so the other recommendations
should be given more weightage.
Limitations:
A major limitation of the data was that it was at the school level rather than the individual
student level. Apart from that, there were no variables that provided us with an idea of the
skills, IQ, interests of the students, or the expectations placed on them in terms of
academic performance. If they had any external help academically, how much help,
neither of these were depicted in the data either. The size of the household the student
comes from also would be an important factor, as it would probably be a significant
interaction variable with meals, as in, it would be very relevant in low income households
because it would mean lesser resources for the student in their homes. These make the
predictions less accurate.
Apart from that, there are certain technical flaws in the model: it could have a bias in
predictions according to the Durbin Watson test, and it also tests positively for the
Omitted variable Bias, meaning that one or more important variables are not present in
the model.
Technical Appendix:
1. Wishlist:
In an ideal world, we would be able look at qualitative variables as well as quantitative
variables, or data that is in general tougher to collect practically. In this Wishlist, I have not
let such practical ideas of data collection dictate what I think may explain the trends in
academic performance. Here are all the variables:
• Academic Performance
• Hours put into study
• Hours put into extra curricular activities.
• Parents’ Education Level
• GINI index of the place, the ability to group the data by gender
• Interest shown by children in academics.
• Teacher to Children ratio
On a Student level:
• IQ
• Student’s household Income level
• Number of children in the household of the student.
• Hours spent in class
• Academic attention provided to the student outside of school(either from a
tutor, or a parent, or otherwise.)
2. Reconciliation—Data that is not available:
• hours put into study
• hours put into extra-curriculars
• hours put in by parent in the form of academic attention
• GINI index of the place, and the division by gender
At the Student Level:
• Interest shown by children in academics
• IQ
• number of children in the household
• the hours spent in classes
3. Available Data/Proxies:
• meals—> household incomes
• marks—>academic performance
• avg class size—>teacher-student ratio(assume divided by one?)
4. Basic Checks:
• Checked the summary to see if anything was fishy: Seemed fine.
• Looked for N/A and null variables: dropped them.
• Didn’t see any false variables.
5. Dummy Variables:
The main variable that needed to be dummy coded here was the Meal Categories. When
this was done, it was compared with the percentage of free meals as independent
variables for academic performance through the correlation matrix. Since meals provided
a cleaner process and had a higher correlation value, it was chosen instead of meal
categories.
6. Correlation Matrix and Multicollinearity:
I assumed that the usage of free meals and number of teachers with full credentials would
cause multicollinearity if used along with the categories of free meals and number of
teachers that didn’t have full credentials, and were employed with emergency credentials
instead.
I had assumed, according to my logic, that certain variables were mid-range important.
These were the number of English Language Learners in the school, and the, and the
enrolment rate, since there was a cap on the number of students per class in the state.
However, since they were indicated as at least somewhat important in terms of correlation
by the correlation matrix, I ended up testing them in the model towards the end, and
some of them stayed as well.

![image](https://github.com/user-attachments/assets/b2315dea-86ed-40d7-b895-10c09e0d2c0e)


7. Bivariate Model:
The bivariate model of academic performance against the percentage of free meals
revealed that 81.04% of the variation in academic performance across schools in
California is explained by the percentage of free meals in each school. Given that this is
the best indicator of a less secure financial status of the students’ that come to a school
on average, I expected this variable to be the most significant predictor of academic
performance. A secure financial status means a child is more likely to have the time to
focus on academics, and is less concerned with financial burdens or the behaviours of
adults that are caused due to financial burdens.

![image](https://github.com/user-attachments/assets/ce5437fd-f8b9-4a45-8b40-8cc27d7541c7)


8. Bivariate Regression Violations:
Seems like there are no major violations of assumptions:
- Since the points are mostly on the diagonal line in the q-q plot, the normality
assumption of residuals holds.
- Since there is no obvious pattern in the fitted vs residuals, the relationship between the
predictors and the outcome is linear.

![image](https://github.com/user-attachments/assets/e74b21eb-0f77-42a2-aa2a-8e4fc4c30cb6)
![image](https://github.com/user-attachments/assets/52bafb56-352e-466f-b1ad-b3be5cc7b91c)
![image](https://github.com/user-attachments/assets/2f6bbd4e-5550-4536-aa35-4a72082e2a56)
![image](https://github.com/user-attachments/assets/a2db581e-9a60-4c2f-ba06-550f7cde80e2)


9. Adding other variables:
The Table below summarises the factors that influence academic performance at the
school level.
The Bivariate model already explained 81% of the variation with the Percentage of Free
Meals per school—the relationship is negative and statistically significant. Since the pvalue
is below 0.05(p=0.001), we can reject the null hypothesis, that there is no
relationship between the percentage of free meals at a School and it’s academic
performance. Furthermore, since it explains 81% of the variation, it is without a
doubt and extremely strong predictor of academic performance.
For every 1-unit (or 1 percent) increase in the proportion of students receiving free meals,
the academic performance score is expected to decrease by 4.01 units, on average. \
Next, some socio-economic factors were introduced to further improve the model.
Variables suggesting the parents’ education level were available, and were added one by
one, in the following order: % of parents who were college graduates(col_grad),% of
parents who attended some amount of college(some_col), % of parents who went to high
school(hsg), % of parents who haven’t gone to high school(not_hsg), % of parents who
went to grad school(grad_sch). Before adding these to the model, VIF checks were done
to ensure that that they did not cause multicollinearity.
Of these, col_grad and hsg were not statistically significant, and while not_hsg was, it
simply did not make a significant enough addition to the model to keep it in the model.
Hence, in the spirit. Of being parsimonious, all three of these were dropped. Grad_sch
was statistically significant and had a positive effect( regression coefficient = 1.37) and
no_hsg was also statistically significant but had a negative impact on academic
performance(regression coefficient =-0.69).


Coefficients Table for Meals+ Educational variables:

<img width="776" alt="Screenshot 2025-04-01 at 11 42 27 AM" src="https://github.com/user-attachments/assets/f1f569fb-bcc9-4a91-b599-a8c6242248d0" />

Model Performance
• Residual Standard Error: 59.32 (on 391 degrees of freedom)
Predictor
Estimat
e
Std.
Error
t-value p-value Significance
Intercept 836.8873 15.7107 53.268
<
0.0001
***
Meals (Free Lunch
%)
-3.3552 0.1540 -21.782
<
0.0001
***
College Graduate -0.0191 0.2372 -0.080 0.9359
(Not
Significant)
Some College 0.6510 0.2833 2.298 0.0221 *
High School Graduate 0.1466 0.2232 0.657 0.5117
(Not
Significant)
No High School -0.6948 0.2193 -3.168 0.0017 **
Graduate School 1.3727 0.3339 4.111
<
0.0001
***
• Multiple R-squared: 0.8283
• Adjusted R-squared: 0.8257
• F-statistic: 314.4 (on 6 and 391 DF)
• Overall p-value: < 0.0001
Next, the variables that indicated the school’s status on resources were looked into. For
these, the indicative data was the percentage of teachers with full credentials(full). This
had a statistically significant positive impact on the model, with a regression coefficient of
1.44.
Thereafter, in the final step, the variables that I didn’t think were particularly useful, but were
significantly correlated in the matrix were added: English learner language(ell), enrolment rate, and
whether the school was run year round or not. While ell and yr_rnd were statistically significant,
the former had a small negative impact, while the latter had an extremely significant negative
impact. This variable was indicative of the school’s resources, so it was definitely an oversight to
assume it wasn’t as important. However, enrolment rate did not turn out to be statistically
significant when it was added, so it was dropped.
At this point, the model had an R squared of 85%, and included the variables: meals, not_hsg,
grad_sch, fullCred_teachers, englishLanguageLearners, yr_rnd, of which fullCred_teachers and
grad_sch have a positive impact, whereas the rest have a negative impact on the academic
performance.

![image](https://github.com/user-attachments/assets/f3fa7ed5-d076-425b-96b9-21f89589ae8b)

10. The interaction term:
Since this data is at the college level rather than the student level, there is no way to know
if the slight positive effect of the interaction term between the number of free meals and
the number of students whose parents went to grad school is just an effect of a higher
average due to certain students(of wealthier economic backgrounds) performing better,
while those less privileged are performing worse, or if the overall effect of having a more
diverse economic background in a school is actually beneficial to the academic
performance. If it is the latter, a lot can be done to systematically add peer learning
opportunities to the educational model, or to bring in educated.
Another implication could also be that there has been a negative fluctuation in the
economic standing of certain families.


Final Model:

<img width="581" alt="Screenshot 2025-04-01 at 11 44 55 AM" src="https://github.com/user-attachments/assets/3aca9c7f-01cb-4eb9-8686-9697e1587cc8" />

The final regression model looks into multiple factors that affect academic performance. The
model has an R-squared of 0.852, and an F-statistic of 320.4, which means it increases the meanmodel
fairly well, and explains a large variation, indicating that 85% of the variance is explained
by the variables included in the model. The p-value is <0.0001 which shows that it is highly
unlikely that the observed relationships in the model are due to random chance, supporting the
hypothesis that at least one of the variables is highly significant. The intercept is ~732, which is
the expected academic score when all the variables are zero—this makes sense because most of
the variables have a negative relationship with academic performance.
While all the variables are statistically significant through their p-values, not_hsg is borderline
significant. This, along with the low t-stat of -2.03 suggests that it is not a very important variable
in the current model, however it has been kept for theoretical reasons.
The F-statistic is 320.4, which is fairly large, supporting the hypothesis that the variables in
In the final model, it appears that the most significant factor in academic performance for a school
is whether they have the resources to support their students. This is determined by the regression
coefficient of the variable yr_rnd -20.34 with a confidence interval of (-35.96 – -4.72), and a pvalue
of 0.011. This means that it is statistically significant, and has a very large negative impact,
meaning that if a school follows a year round schedule(which is an indication of load on
infrastructure), it is likely that it will, on average, have academic performance that is 20.34 units
lower than the schools that do not have a year round schedule.
Other important predictors are the percentage of students receiving free meals, which has a
negative impact of 2.79 units on academic performance for every unit increase in students
Predictors
Estimate
s
std.
Error
CI p
(Intercept) 732.10 25.31 682.34 –
781.87
<0.00
1
meals -2.79 0.18 -3.15 – -2.43 <0.00
1
grad sch 1.09 0.36 0.39 – 1.79 0.002
fullCred teachers 1.19 0.23 0.74 – 1.64 <0.00
1
not hsg -0.43 0.21 -0.84 – -0.01 0.043
englishLanguageLearner
s
-0.58 0.20 -0.98 – -0.19 0.004
yr rnd -20.34 7.94 -35.96 – -4.72 0.011
meals × grad sch 0.02 0.01 0.00 – 0.04 0.027
Observations 398
R2 / R2 adjusted 0.852 / 0.849
receiving free meals in a school, suggesting that higher poverty rates in a school lead to reduced
academic performance. The extremely small but statistically significant interaction variable R
squared suggests that schools with more economically diverse students do better than those with
primarily low-income household students. This is in line with the rest of the model, but without
data at the individual student level it is difficult to determine whether only the students with
grad_sch educated parents’ are doing better and bringing up the average performance, or if there
is a possible peer learning benefit here.




