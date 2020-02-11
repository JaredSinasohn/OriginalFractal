int COL_CONSTANT = 20;
int SIZ = 1000;
int SIZ_LOW = 500/(int)Math.pow(2,7);
double PI = 3.141592653589793;
double newX = Math.cos(PI/4);
double newY = Math.sin(PI/4);
public void setup(){
	background(0);
	size(1000,1000);
}
public void draw(){
	fractal(SIZ/2,SIZ/2,SIZ,200,SIZ_LOW);
}
public void fractal(int x, int y, int siz,int col,int sizLow){
	int count=0;
	if(siz<=sizLow){
		fill(col,0,0,150);
		stroke(col,0,0,150);
	}else{
		fill(col,0,0,150);
		stroke(col,0,0,150);
		circle(x,y,siz/2);
		fractal(x+siz/4,y+siz/4,siz/2,col-COL_CONSTANT,sizLow);
		fractal(x+siz/4,y-siz/4,siz/2,col-COL_CONSTANT,sizLow);
		fractal(x-siz/4,y+siz/4,siz/2,col-COL_CONSTANT,sizLow);
		fractal(x-siz/4,y-siz/4,siz/2,col-COL_CONSTANT,sizLow);
	}
}