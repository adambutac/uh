public class Test {
  public static void main(String[] args) {
    EZ.initialize(600,600);
    EZImage dimension = new EZImage("dimension.jpg", 300, 300);
    EZ.addElement(dimension);

    int[][] newPixels = new int[dimension.getHeight()][dimension.getWidth()];

    for(int i = 0; i < dimension.getHeight(); i++) {
      for(int j = 0; j < dimension.getWidth(); j++){
        newPixels[i][j] = dimension.img.getRGB(j,i);
      }
    }

    int width = 2;
    int space = 3;
    int phase = 20;
    for(int i = 0; i < dimension.getHeight(); i += space){
      for(int j = 0; j < width; j++){
        int[] r1 = newPixels[(i + j) % dimension.getHeight()];
        newPixels[(i + j) % dimension.getHeight()] = newPixels[(i + j + phase) % dimension.getHeight()];
        newPixels[(i + j + phase) % dimension.getHeight()] = r1;
      }
    }

    for(int i = 0; i < dimension.getHeight(); i++) {
      for(int j = 0; j < dimension.getWidth(); j++){
        dimension.img.setRGB(j,i,newPixels[i][j]);
      }
    }
//    dimension.scaleBy(0.5);
    EZ.refreshScreen();
  }
}
