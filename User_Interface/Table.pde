ArrayList<Growth> Grows = new ArrayList<Growth>();

Table table;


void loadTable()
{
  table = loadTable("growth.csv", "header");
  
  for( TableRow row : table.rows())
  {    
    Growth ChartData = new Growth(row);
    Grows.add(ChartData);
  }
  
  for(Growth ChartData:Grows)
  {
    println(ChartData);
  }
}


void drawGraph()
{
  float lineX = cx - 200;
  float lineX2 = cx + 200;
  float lineY = cy + 200;
  float lineY2 = cy - 200;

  
  line(lineX, lineY, lineX2, lineY);
  line(lineX, lineY, lineX, lineY2);
  
  float[] xs = new float[Grows.size()];
  float[] ys = new float[Grows.size()];
  int i = 0;
  for(Growth ChartData:Grows)
  {
   float x = map(i, 0, Grows.size(), lineX, lineX2);
   float y = map(ChartData.value, 0 , 1000, lineY, lineY2);
   
   fill(0,255,255);
   textSize(12);
   text(ChartData.year, x, lineY+20);
   xs[i] = x;
   ys[i] = y;
   i++;
  }
  
  int k = 1;
  for(int j = 0; j < xs.length - 1; j++)
  {
    line(xs[j], ys[j], xs[k], ys[k]);
    k++;
  }

}



class Growth {
  int year;
  float value;
  
  Growth(TableRow row)
  {
    this.year = row.getInt("year");
    this.value = row.getFloat("grow");
  }
  
  String toString()
  {
    return year + "," + value;
  }
}