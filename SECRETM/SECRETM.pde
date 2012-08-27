/*
SECRET AGENT M
Jamie Yeo 27/8/2012
jamie.yeowl@gmail.com
*/

size(400,400);
background (30);
fill(255,50);
smooth();
noStroke();
float grain_size = 10; 
float dot_size = grain_size * .9; 

int [] a = {90,320,110,250,100,290,110,250,100,320};
int [] b = {80,130,130,180,180,230,230,280,280,330};



for (int i = 0; i < 9; i++){
  for (int j= a[i]; j <a[i+1]; j = j+int(grain_size)){
    for (int k= b[i]; k <b[i+1]; k = k+int(grain_size)){
      
 float d = map(j,a[0],a[i+1],dot_size,dot_size * 0.2);
      
    ellipse(k,j,d,d);

  }}

}

save("secretM.jpg");
