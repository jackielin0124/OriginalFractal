public void setup(){
	size(800,800);
	background(0);
}

public void draw(){
//	noStroke();
	fractal(100, 550,600);
}

public void fractal(float x, float y, int len){
 if(len>5){
 	triangle(x,y, x+len, y, x+len/2, y-sqrt(3)*len/2);
 	triangle(x,y-sqrt(3)*len/3, x+len, y-sqrt(3)*len/3, x+len/2, y+sqrt(3)*len/6);

 	fractal(x, y, len/3);
 	fractal(x+2*len/3, y, len/3);
 	fractal(x+len/3, y-sqrt(3)*len/3, len/3);
 	fractal(x, y-2*sqrt(3)*len/9, len/3);
 	fractal(x+2*len/3, y-2*sqrt(3)*len/9, len/3);
 	fractal(x+len/3,y +sqrt(3)*len/9, len/3);
 	}
  	
 // else{
 //  	triangle(x,y, x+len, y, x+len/2, y-sqrt(3)*len/2);
 //  	triangle(x,y-sqrt(3)*len/3, x+len, y-sqrt(3)*len/3, x+len/2, y+sqrt(3)*len/6);
 // }
  	
  	
}