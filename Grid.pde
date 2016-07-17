var gridWidth = 10;
var gridLength = 10;
var lineSize = 5;
var signSize = 3;
background(255);
strokeWeight(lineSize);
stroke(200);
fill(0,0,0,0);
for(var i = 1; i <= gridWidth - 1; i++) {
    line(i*(600/gridWidth), 0, i*(600/gridWidth), 600);
}
for(var i = 1; i <= gridLength - 1; i++) {
    line(0, i*(600/gridLength), 600, i*(600/gridLength));
}
strokeWeight(signSize);
for (var g = 0; g <= gridWidth - 1; g++) {
    for(var i = 0; i <= gridLength - 1; i++) {
        if (random(1) < 0.5) {
            stroke(219, 50, 54);
            line((g+1)*600/gridWidth-signSize-lineSize/2,(i+1)*(600/gridLength)-signSize-lineSize/2,g*600/gridWidth+signSize+lineSize/2,i*(600/gridLength)+signSize+lineSize/2);
            line(g*(600/gridWidth)+signSize+lineSize/2,(i+1)*(600/gridLength)-signSize-lineSize/2,(g+1)*600/gridWidth-signSize-lineSize/2,i*(600/gridLength)+signSize+lineSize/2);
        }else {
            stroke(72, 133, 237);
            ellipse((g+0.5)*(600/gridWidth),(i+0.5)*600/gridLength,600/gridWidth-signSize-lineSize-5,600/gridLength-signSize-lineSize-5);
        }
    }
}
