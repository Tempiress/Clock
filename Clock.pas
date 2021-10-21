uses graphWPF, WPFObjects;

procedure clock;
begin
  var x1,y1,x2,y2,x3,y3: integer;
  var currTime := System.DateTime.Now; // местное время
 
// рисование круга 
pen.Width := 3;
Circle(250,250,170);
   
   
 //Расстановка цифер
textout(235,90,'12');
textout(243,380,'6');
textout(385,240,'3');
textout(105,240,'9');
textout(115,165,'10');
textout(160,110,'11');
textout(320,110,'1');
textout(370,165,'2');
textout(370,310,'4');
textout(315,365,'5');
textout(160,365,'7');
textout(115,310,'4');


//координаты конечной точки секундной стрелки
x1:=250+Round(120 * sin(Pi * currtime.Second / 30)); //координаты конечной точки секундной стрелки
y1:=250-Round(120 * cos(Pi * currtime.Second / 30));
line(250,250,x1,y1);


//координаты конечной точки минутной стрелки
x2 := 250 + Round(100*sin(Pi * currtime.Minute / 30)); 
y2 := 250 - Round(100*cos(Pi * currtime.Minute / 30));
line(250,250,x2,y2);


//координаты конечной точки часовой стрелки
x3 := 250 + Round(60*sin(Pi * currtime.Hour / 30));
y3 := 250 - Round(60*cos(Pi * currtime.Hour / 30)); 
line(250,250,x3,y3);

end;

begin
  window.setsize(500,500);
  while true do
  begin   
  clock;
  sleep(1000);
  window.Clear;
  end;
end.