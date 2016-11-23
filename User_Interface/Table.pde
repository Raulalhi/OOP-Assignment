ArrayList<Growth> Grows = new ArrayList<Growth>();
Table table;

void loadTable()
{
  table = loadTable("growth.csv", "header");
  int size = table.getRowCount();
}
void drawGraph()
{
  
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