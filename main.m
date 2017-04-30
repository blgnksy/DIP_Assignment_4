%begin question_1()
question_1(10);

%begin question_2_ab()
f=imread('./inputs/Assignment_4.jpg');
[G,MagL,Phase]=question_2_ab(f);

%begin question2_c()
GC=question2_c(G,MagL,Phase);

%begin question_2_d()
g2=question_2_d(GC);

%begin question_2_e()
g2=question_2_e(g2);

%begin question_3_a()
question_3_a(imread('./inputs/Assignment_4.jpg'),4,8);

%begin question_3_b()
question_3_b(imread('./inputs/Assignment_4.jpg'),4,8);

%begin question_4_a()
question_4_a(imread('./inputs/zebra_gray.jpg'));

