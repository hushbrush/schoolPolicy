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
