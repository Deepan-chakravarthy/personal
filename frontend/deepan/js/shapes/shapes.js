const canvas = document.getElementById('canvas');
const twod = canvas.getContext('2d');
//Right Angle Triangle
twod.beginPath();
twod.moveTo(90,50); //(Left,Top)
twod.lineTo(90,200); //To Draw a Line (We don't see anything after getting stroke added omly we see)
twod.lineTo(250,200);
twod.stroke();
twod.fillStyle='red';
twod.fill();

//Circle
twod.beginPath();
twod.arc(400,130,70,0,Math.PI*2);
twod.stroke();

//smiley
twod.beginPath();
const cX=110;
const cY=450;
twod.arc(cX,cY,50,0,Math.PI*2);
twod.stroke();      
twod.moveTo(cX+25,cY);
twod.stroke();
twod.arc(cX,cY,25,0,Math.PI,false)
twod.stroke();
twod.moveTo(cX+15,cY-20);
twod.arc(cX-20,cY-20,5,0,Math.PI*2);
twod.stroke();
twod.moveTo(cX+25,cY-20);
twod.stroke();
twod.arc(cX+20,cY-20,5,0,Math.PI*2);
twod.stroke();
// twod.lineTo(90,430);
twod.stroke();

//Square (Left,Top,Width,Height)
twod.fillStyle='red';
twod.fillRect(55,255,100,100)
twod.strokeRect(55,255,100,100)
twod.fillStyle='black';
twod.fillRect(70,270,70,70)
twod.fillStyle='white';
twod.fillRect(80,280,50,50)
twod.fillStyle='yellow';
twod.fillRect(90,290,30,30)
twod.strokeRect(90,290,30,30)

//Cross Circle's
twod.beginPath();
twod.fillStyle='white';
twod.fillRect(330,410,150,150)
twod.beginPath();
twod.arc(350,430,8,0,Math.PI*2);
twod.fillStyle='Blue';
twod.fill()
twod.stroke();
twod.beginPath();
twod.arc(370,450,8,0,Math.PI*2);
twod.fillStyle='Purple';
twod.fill()
twod.stroke();
twod.beginPath();
twod.arc(390,470,8,0,Math.PI*2);
twod.fillStyle='black';
twod.fill()
twod.stroke();
twod.beginPath();
twod.arc(410,490,8,0,Math.PI*2);
twod.fillStyle='black';
twod.fill()
twod.stroke();
twod.beginPath();
twod.arc(430,510,8,0,Math.PI*2);
twod.fillStyle='Purple';
twod.fill()
twod.stroke();
twod.beginPath();
twod.arc(450,530,8,0,Math.PI*2);
twod.fillStyle='Blue';
twod.fill()
twod.stroke();

//Overlay
twod.fillStyle='lightblue';
twod.fillRect(350,255,100,100)
twod.fillStyle = "rgba(255, 192, 203, 0.8)";
twod.fillRect(400,300,100,100)