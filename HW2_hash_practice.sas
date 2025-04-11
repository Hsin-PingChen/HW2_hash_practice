/* �إ߸�ƶ� */
data food_counts;
    input food $ count;
    datalines;
burger 196
cheese 234
coke 145
fries 76
pho 19
pizza 83
potato 3
rib 33
steak 46
taco 57
;
run;

/* ø�s����� */
proc sgplot data=food_counts;
    vbar food / response=count 
                barwidth=0.8 
                fillattrs=(color=cadetblue) 
                datalabel;
    title "�����X�{���Ʋέp";
    xaxis label="�����W��" display=(nolabel);
    yaxis label="�X�{����" grid;
run;
/* ���X�{���ƱƧ� */
proc sort data=food_counts;
    by descending count;
run;

/* ø�s�Ƨǫ᪺����� */
proc sgplot data=food_counts;
    vbar food / response=count 
                categoryorder=respdesc
                barwidth=0.8 
                fillattrs=(color=cadetblue) 
                datalabel;
    title "�����X�{���Ʋέp�]�����ƱƧǡ^";
    xaxis label="�����W��" display=(nolabel);
    yaxis label="�X�{����" grid;
run;
