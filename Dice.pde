
int total = 0;
int totalTotal = 0;
float average = 0;
int value;
int rollTimes = 1;
void setup()
{
	size(1200,900);
	noLoop();
}
void draw()
{
	background(127);
	for(int x=0; x<1200; x=x+14)
	{	for(int y=800; y>0; y=y-14)
			{
			Die tommy = new Die(x,y);
			tommy.show();
			tommy.roll();
			total = total+value;
			totalTotal = totalTotal+value;
			average = (totalTotal/rollTimes);
			}
	}
	fill(0);
	textSize(30);
	textAlign(CENTER);
	text("Total: "+total,600,850);
	text("Average: "+average,600,880);
}
void mousePressed()
{
	total = 0;
	rollTimes = rollTimes+1;
	redraw();
}
class Die
{
	int myX; int myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		int rollNum = (int)((Math.random()*6)+1);
		if(rollNum==1)
		{
			value = 1;
		} 
		else if(rollNum==2)
		{
			value = 2;
		} 
		else if(rollNum==3)
		{
			value = 3;
		} 
		else if(rollNum==4)
		{
			value = 4;
		} 
		else if(rollNum==5)
		{
			value = 5;
		} 
		else
		{
			value = 6;
		} 
	}
	void show()
	{
		if(value == 1)
		{
			fill(178,34,34);
		}
		if(value == 2)
		{
			fill(235,165,50);
		}
		if(value == 3)
		{
			fill(255,215,0);
		}
		if(value == 4)
		{
			fill(154,205,50);
		}
		if(value == 5)
		{
			fill(65,105,225);
		}
		if(value == 6)
		{
			fill(106,90,205);
		}
		stroke(0);
		rect(myX,myY,14,14);
		fill(0);
		if(value == 1)
		{
			ellipse(myX+7,myY+7,2,2);
		}
		if(value == 2)
		{
			ellipse(myX+4,myY+4,2,2);
			ellipse(myX+10,myY+10,2,2);
		}
		if(value == 3)
		{
			ellipse(myX+3,myY+3,2,2);
			ellipse(myX+7,myY+7,2,2);
			ellipse(myX+11,myY+11,2,2);
		}
		if(value == 4)
		{
			ellipse(myX+4,myY+4,2,2);
			ellipse(myX+10,myY+4,2,2);
			ellipse(myX+4,myY+10,2,2);
			ellipse(myX+10,myY+10,2,2);
		}
		if(value == 5)
		{
			ellipse(myX+3,myY+3,2,2);
			ellipse(myX+3,myY+11,2,2);
			ellipse(myX+11,myY+3,2,2);
			ellipse(myX+11,myY+11,2,2);
			ellipse(myX+7,myY+7,2,2);
		}
		if(value == 6)
		{
			ellipse(myX+4,myY+3,2,2);
			ellipse(myX+4,myY+7,2,2);
			ellipse(myX+4,myY+11,2,2);
			ellipse(myX+10,myY+3,2,2);
			ellipse(myX+10,myY+7,2,2);
			ellipse(myX+10,myY+11,2,2);
		}
	}
}
