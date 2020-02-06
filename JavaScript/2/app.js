var i;
var num = 0;

for (i = 1; i < 11; i++) {
    num = num + i;
}

alert('1から10まで足し算した結果は' + num + 'です');

num = 0;
for (i = 1; i < 11; i++) {
    num = num - i;
}
alert('1から10まで引き算した結果は' + num + 'です');

num = 1;
for (i = 1; i < 11; i++) {
    num = num * i;
}
alert('1から10まで掛け算した結果は' + num + 'です');

num = 1;
for (i = 1; i < 11; i++) {
    num = num / i;
}
alert('1から10まで割り算した結果は' + num + 'です');
