Table table;

void drawGraph()
{
  table = loadTable("growth.csv", "header");
}

class Growth {
  float value;
  int year;
  
  Growth()
  {
    value = 0;
    year = 0;
  }
}