uses graphWPF, WPFObjects;

procedure clock();
begin
  var x0,y0, x1,y1,x2,y2: integer;
  var currTime := System.DateTime.Now;
    pen.Width := 3;
   Circle(250,250,170);
   //line(250,250,250,80);
   
//font.Style := Bold; 
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


// Секундная Стрелка
x1:=250+Round(120*sin(Pi*currtime.Second/30)); //координаты конечной точки секундной стрелки

y1:=250-Round(120*cos(Pi*currtime.Second/30));

line(250,250,x1,y1);//Секундная стрелка

x2:=250+Round(100*sin(Pi*currtime.Minute/30)); //координаты конечной точки минутной стрелки

y2:=250-Round(100*cos(Pi*currtime.Minute/30));
line(250,250,x2,y2);

end;

begin
  window.setsize(500,500);
  while true do
  begin   
  clock;
  sleep(1000);
  window.Clear
  end;
end.