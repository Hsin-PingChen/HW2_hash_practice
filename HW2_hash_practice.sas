/* 建立資料集 */
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

/* 繪製直方圖 */
proc sgplot data=food_counts;
    vbar food / response=count 
                barwidth=0.8 
                fillattrs=(color=cadetblue) 
                datalabel;
    title "食物出現次數統計";
    xaxis label="食物名稱" display=(nolabel);
    yaxis label="出現次數" grid;
run;
/* 按出現次數排序 */
proc sort data=food_counts;
    by descending count;
run;

/* 繪製排序後的直方圖 */
proc sgplot data=food_counts;
    vbar food / response=count 
                categoryorder=respdesc
                barwidth=0.8 
                fillattrs=(color=cadetblue) 
                datalabel;
    title "食物出現次數統計（按次數排序）";
    xaxis label="食物名稱" display=(nolabel);
    yaxis label="出現次數" grid;
run;
