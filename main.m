%begin question_1()
%question_1();

%begin question_2_ab()
f=imread('./inputs/Assignment_4.jpg');
[Mag,Phase]=question_2_ab(f);

%begin question2_c()
[CMag,CPhase]=question2_c(Mag,Phase);

%begin question_2_d()
question_2_d(CMag,CPhase);