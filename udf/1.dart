
int fire()
{
  int gun_part1=20;
  return gun_part1;

}
int fire2()
{
  int gun_part2=20;
  return gun_part2;
}
int fire3()
{
    int gun_part3=20;
    return gun_part3;
}
int main_person(int gun_part1,int gun_part2,int  gun_part3)
{
  int ans=gun_part1+gun_part2+gun_part3;
  return ans;

}
int  rocky()
{
  int a=10;
  a=a+main_person(fire(), fire2(), fire3());
  return a;
}
void main()
{
  print("Your gun is ready for fire!!");
  print( rocky());
}