static class Mat {
  float[][] cols = {
    {1, 0, 0, 0},
    {0, 1, 0, 0},
    {0, 0, 1, 0},
    {0, 0, 0, 1}
  };
  void printMat(String str) {
    println(str);
    for(int j = 0; j < 4; j++) {// row
      for(int i = 0; i < 4; i++) {// col
        print("\t");
        print(round(10000 * this.cols[i][j])/10000.0);
      }
      println();
    }
  }
  Mat mult(Mat matA, Mat matB) {
    float[][] a = matA.cols;
    float[][] b = matB.cols;
    for(int i = 0; i < 4; i++) {// col
      for(int j = 0; j < 4; j++) {// row
        this.cols[i][j] = 0.0;
        for(int k = 0; k < 4; k++) {
          this.cols[i][j] += b[i][k] * a[k][j];
        }
      }
    }
    return this;
  }
  Mat rotx(float theta) {
    float c = cos(theta), s = sin(theta);
    this.cols = new float[][]{
      {1.0, 0.0, 0.0, 0.0},
      {0.0, 1.0, 0.0, 0.0},
      {0.0, 0.0,   c,  -s},
      {0.0, 0.0,   s,   c}};
    return this;
  }
  Mat roty(float theta) {
    float c = cos(theta), s = sin(theta);
    this.cols = new float[][]{
      {1.0, 0.0, 0.0, 0.0},
      {0.0,   c, 0.0,  -s},
      {0.0, 0.0, 1.0, 0.0},
      {0.0,   s, 0.0,   c}};
    return this;
  }
  Mat rotz(float theta) {
    float c = cos(theta), s = sin(theta);
    this.cols = new float[][]{
      {1.0, 0.0, 0.0, 0.0},
      {0.0,   c,  -s, 0.0},
      {0.0,   s,   c, 0.0},
      {0.0, 0.0, 0.0, 1.0}};
    return this;
  }
  Mat trans(Mat mat) {
    float[][] cols = mat.cols;
    this.cols = new float[4][4];
    for(int i = 0; i < 4; i++) {// col
      for(int j = 0; j < 4; j++) {// row
        this.cols[i][j] = cols[j][i];
      }
    }
    return this;
  }
  Mat inv(Mat mat) {
    float[][] cols = mat.cols;
    this.cols = new float[4][4];
    for(int i = 0; i < 4; i++) {// col
      for(int j = 0; j < 4; j++) {// row
        this.cols[i][j] = cols[j][i];
      }
    }
    return this;
  }
  static float mult(float[] a, float[] b) {
    float sum = 0;
    for(int i = 0; i < a.length; i++) {
      sum += a[i] * b[i];
    }
    return sum;
  }
}
/*math matrix
  / a11, a12, a13, a14 \
  | a21, a22, a23, a24 |
  | a31, a32, a33, a34 |
  \ a41, a42, a43, a44 /
  (a.b)ij = sum(1 <= k <= 4) aik * bkj
  
  code matrix
  [[a[0][0], a[0][1], a[0][2], a[0][3]],
  [[a[1][0], a[1][1], a[1][2], a[1][3]],
  [[a[2][0], a[2][1], a[2][2], a[2][3]],
  [[a[3][0], a[3][1], a[3][2], a[3][3]],
  mult(a, b)[i][j] = for(k = 0; k < 4; k++) sum += a[i][k] * b[k][j];

  aij = a[i-1][j-1]
*/
