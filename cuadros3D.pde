      int tamano = 10;
      int numero_cuadros = 200;
      int velY1 = 1/2;

      int fondo_color = 0;
      int centro = 5;

      float [] posX = new float [numero_cuadros];
      float [] posY = new float [numero_cuadros];
      float [] velX = new float [numero_cuadros];
      float [] velY = new float [numero_cuadros];

      void setup(){
        size(1366,649,P3D);


        for (int i=0; i<numero_cuadros; i++){
          posX[i] = width/2;
          posY[i] = height;
          velX[i] = random(1,4);
          velY[i] = random(1,4);
        }
      }

      void draw(){

        background(46,46,46);
        cuadrados();
        strokeWeight(10);
        line(pmouseX, pmouseY, mouseX, mouseY);

        for(int i=0; i<numero_cuadros; i++){
          posX[i] += velX[i];
          posY[i] = posY[i] + velY1;
                if ((posX[i]<0) || (posX[i]>width)){
                  velX[i] = -velX[i];
                  fondo_color = color(random(255),random(255),random(255));
                }

                  if (posY[i] > 649){
                  posY[i] = 5;
                  posY[i] = int(randomGaussian() * 100);
                }
        }
        
      }

        void cuadrados(){
          stroke(fondo_color);
          for(int i=0; i<numero_cuadros; i++){
            noFill();
             strokeWeight(2);
                rotateY(0.100);
                rotateX(0.500);
                rect(posX[i]+mouseX/10,posY[i],tamano,tamano);
          }  
        }

        void mousePressed(){
          tamano++;
          if(tamano > 1){
            background(random(255),random(255),random(255));

          }
        }
