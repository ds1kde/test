#############################################

dt%>%
  dplyr::select(year,bgain,imm,educ1,age,female)%>%
  drop_na()%>%
  group_by(year,bgain)%>%
  summarize(imm_mean=mean(imm,na.rm = TRUE),
            imm_sd=sd(imm,na.rm = TRUE),
            age_mean=mean(age),
            age_sd=sd(age),
            female_mean=mean(female),
            female_sd=sd(female),
            educ_mean=median(educ1),
            n=n())%>%
  kable(.,format="latex",digits=2)