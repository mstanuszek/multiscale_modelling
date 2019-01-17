#include <vcl.h>
#pragma hdrstop
#include <cstdlib>
#include "Unit1.h"
#include "time.h"
#include <windows.h>
#include <fstream>
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;

int tab[102][102];
int tabb[102][102];
int x[1000];
int y[1000];
int list[5000][2];
int list2[5000][2];
int add[102][102];
int energia[102][102];

int random2;

int rule, rule2, bound, inc, inc2, stop, stop2, tut;

int k, k2, k3, s, i, r, j, l, p, pp, h, em, rules, szansa, don, wsk, mm;

int enhom, enhet, dist2, dist, amo, rs, mod, dyst, zmiana, powr, ppeng, energ;

int nbb, nbb2, wybr, sttt;

double rr, kolo, e, ee;


int licznik[1000];
int licznikmax;



void montestart()
{
  for(i=0;i<=101;i++)
  {
  for(j=0;j<=101;j++)
  {
   tab[i][j] = ((rand() % (mm + 2)) +  1);
  }}
}


void montecarlo()
{
 for (i=0; i<=101;i++)
 {

        em=0;
        don=0;

        x[i] = (rand() % (100)) +1;
        y[i] = (rand() % (100)) +1;


   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i])-1]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]+1)]))
   {
   em++;
   }

        e=em;
        don = (rand() % 7);
        tut=tab[(x[i])][(y[i])];

   if (don==0)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]-1)][(y[i])];
   }

   else if (don==1)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]-1)][(y[i]-1)];
   }

   else if (don==2)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]-1)][(y[i]+1)];
   }

   else if (don==3)
   {
   tab[(x[i])][(y[i])]=tab[(x[i])][(y[i]+1)];
   }

   else if (don==4)
   {
   tab[(x[i])][(y[i])]=tab[(x[i])][(y[i]-1)];
   }

   else if (don==5)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]+1)][(y[i]+1)];
   }

   else if (don==6)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]+1)][(y[i])];
   }

   else if (don==7)
   {
   tab[(x[i])][(y[i])]=tab[(x[i]+1)][(y[i]-1)];
   }

        em=0;

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i])-1]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]+1)]))
   {
   em++;
   }

        ee=em;

   if (ee-e>0)
   {
   tab[(x[i])][(y[i])]=tut;
   }
}
}


void baza()     // inicjalization nucleons
{


    for (i=0; i<102; i++)
    {
    for (j=0; j<102; j++)
    {
    tab[i][j] = 0;
    tabb[i][j] = tab[i][j];
    }}

   for(i=0; i<=(k+1); i++)
   {
   x[i] = (rand() % 100) +1;
   y[i] = (rand() % 100) +1;
   }

   for (i=0; i<(k+2); i++)
   {
   tab [(x[i])] [(y[i])] = i+1;
   tabb [(x[i])] [(y[i])] = i+1;
   }
}


void kopiuj()   //absorbing
{
stop=1;
    for (i=0; i<102; i++)
    {
    for (j=0; j<102; j++)
    {
    tab[i][j]=tabb[i][j];
    }}
    for (i=1; i<101; i++)
    {
    for (j=1; j<101; j++)
    {
    if (tab[i][j]==0)
    {
    stop=0;
    }
    }}
}


void periodic ()
{

  tabb[0][0]=tabb[100][100];
  tabb[101][101]=tabb[1][1];
  tabb[0][101]=tabb[100][1];
  tabb[101][0]=tabb[1][100];

  for (i=1; i<=101; i++)
  {
  tabb[i][0]=tabb[i][100];
  tabb[i][101]=tabb[i][1];
  tabb[0][i]=tabb[100][i];
  tabb[101][i]=tabb[1][i];
  }
}



void von_neumann()
{
  for ( i=1; i<=101; i++)
  {
  for ( j=1; j<=101; j++)
  {
   licznik[l]=0;
        if (tab[i][j]==0)
        {
        for( l=0; l<=(k+1); l++)
        {
                licznik[l+1]=0;
                if (tab[i-1][j]==(l+1) )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i+1][j]==(l+1))
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i][j+1]==(l+1))
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i][j-1]==(l+1))
                        {
                        licznik[l+1]++;
                        }
        }
        licznikmax=0;
        l=0;
        for(l=0; l<=(k+1); l++)
        {
        if (licznik[l+1]>licznikmax)
        {
        licznikmax=l+1;
        tabb[i][j]=licznikmax;
        }
        }
        }

  }}
}



void moore()
{
  for ( i=1; i<=101; i++)
  {
  for ( j=1; j<=101; j++)
  {
     licznik[l]=0;
        if (tab[i][j]==0)
                {
        for( l=0; l<=(k+1); l++)
        {
               licznik[l+1]=0;
                if (tab[i-1][j]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i+1][j]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i][j+1]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i][j-1]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i-1][j-1]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i+1][j-1]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i-1][j+1]==l+1 )
                        {
                        licznik[l+1]++;
                        }

                else if (tab[i+1][j+1]==l+1 ) 
                        {
                        licznik[l+1]++;
                        }
                }

         
        licznikmax=0;
        l=0;
        for(l=0; l<=(k+1); l++)
        {
        if (licznik[l+1]>licznikmax)
        {
        licznikmax=l+1;
        tabb[i][j]=licznikmax;
        }
        }
        }

  }}
}


void exmoore()
{
  for ( i=1; i<=101; i++)
  {
  for ( j=1; j<=101; j++)
  {

        if (tab[i][j]==0)
        {
        for (rules=1; rules <=3; rules++)
        {
                for(l=0; l<=(k+1); l++)
                {
                if (rules == 1)
                {
                em = 0;
                if (tab[i-1][j]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i+1][j]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i][j+1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i][j-1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i-1][j-1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i+1][j-1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i-1][j+1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i+1][j+1]==l+1 )
                        {
                        em += 1;
                        }

                if (em >= 5)
                        {
                        tabb[i][j]=l+1;
                        l = k+1;
                        rules = 5;
                        }
                }
                if (rules == 2)
                {
                em = 0;
                if (tab[i-1][j]==l+1 )
                        {
                        em += 1;
                        }

                if (tab[i+1][j]==l+1 )
                        {
                        em += 1;
                        }

                if (tab[i][j+1]==l+1 )
                        {
                        em += 1;
                        }

                if (tab[i][j-1]==l+1 )
                        {
                        em += 1;
                        }

                if (em >= 3)
                        {
                        tabb[i][j]=l+1;
                        l = k+1;
                        rules = 5;
                        }
                }
                if (rules == 3)
                {
                em = 0;
                if (tab[i-1][j-1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i+1][j-1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i-1][j+1]==l+1 )
                        {
                        em += 1;
                        }
                if (tab[i+1][j+1]==l+1 )
                        {
                        em += 1;
                        }

                if (em >= 3)
                        {
                        tabb[i][j]=l+1;
                        l = k+1;
                        rules = 5;
                        }
                }}
        }

                em = 0;
                p = rand () % 100;
                if ((p < szansa) && (tabb[i][j] == 0))
                {
                if ((tab[i-1][j] != 0 ) && (tab[i-1][j] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i+1][j] != 0 ) && (tab[i+1][j] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i][j+1] != 0 ) &&  (tab[i][j+1] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i][j-1] != 0 ) &&  (tab[i][j-1] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i-1][j-1] != 0 ) &&  (tab[i-1][j-1] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i+1][j-1] != 0 ) &&  (tab[i+1][j-1] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i-1][j+1] != 0 ) && (tab[i-1][j+1] != 99 ))
                        {
                        em += 1;
                        }
                if ((tab[i+1][j+1] != 0 ) && (tab[i+1][j+1] != 99 ))
                        {
                        em += 1;
                        }
                if (em > 0)
                {
                       don = rand () % em ;
                       don += 1;

                        if ((tab[i-1][j] != 0 ) && (tab[i-1][j] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i-1][j];
                                        }
                                }
                        if ((tab[i+1][j] != 0 ) && (tab[i+1][j] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i+1][j];
                                        }
                                }
                        if ((tab[i][j+1] != 0 ) &&  (tab[i][j+1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i][j+1];
                                        }
                                }
                        if ((tab[i][j-1] != 0 ) && (tab[i][j-1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i][j-1];
                                        }
                                }
                        if ((tab[i-1][j-1] != 0 ) && (tab[i-1][j-1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i-1][j-1];
                                        }
                                }
                        if ((tab[i+1][j-1] != 0 ) && (tab[i+1][j-1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i+1][j-1];
                                        }
                                }
                        if ((tab[i-1][j+1] != 0 ) &&  (tab[i-1][j+1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i-1][j+1];
                                        }
                                }
                        if ((tab[i+1][j+1] != 0 ) && (tab[i+1][j+1] != 99 ))
                                {
                                don -= 1;
                                if (don == 0)
                                        {
                                        tabb[i][j]=tab[i+1][j+1];
                                        }
                                }
                }}
        }
  }}
}


void przed ()      //inclusion on boundaries
{
 for (l=0; l<=(s+1); l++)
 {


   p = rand () % 4;
   pp = rand () % (99 - r);

   if (p == 0)
   {
   x[l] = 1;
   y[l] = pp + 1;

        if (inc == 4)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]+i)][(y[l]+j)] = 99;
                tabb[(x[l]+i)][(y[l]+j)] = 99;
                }}
        }
        if (inc == 1)
        {
                rr = (r+1)/2;
                for (i = 0; i<=rr; i++)
                {
                for (j = -rr; j<=rr; j++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]+i)][(y[l]+j+(r/2))] = 99;
                tabb[(x[l]+i)][(y[l]+j+(r/2))] = 99;
                }
                }}
        }



   }
   else if (p == 1)
   {
   x[l] = 100;
   y[l] = pp + 1;

        if (inc == 4)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]-i)][(y[l]+j)] = 99;
                tabb[(x[l]-i)][(y[l]+j)] = 99;
                }}
        }
        if (inc == 1)
        {
                rr = (r+1)/2;
                for (i = 0; i<=rr; i++)
                {
                for (j = -rr; j<=rr; j++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]-i)][(y[l]+j+(r/2))] = 99;
                tabb[(x[l]-i)][(y[l]+j+(r/2))] = 99;
                }
                }}
        }
   }
   else if (p == 2)
   {
   x[l] = pp + 1;
   y[l] = 1;

        if (inc == 4)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]+i)][(y[l]+j)] = 99;
                tabb[(x[l]+i)][(y[l]+j)] = 99;
                }}
        }
        if (inc == 1)
        {
                rr = (r+1)/2;
                for (j = 0; j<=rr; j++)
                {
                for (i = -rr; i<=rr; i++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]+i+(r/2))][(y[l]+j)] = 99;
                tabb[(x[l]+i+(r/2))][(y[l]+j)] = 99;
                }
                }}
        }

   }
   else if (p == 3)
   {
   x[l] = pp + 1;
   y[l] = 100;

        if (inc == 4)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]+i)][(y[l]-j)] = 99;
                tabb[(x[l]+i)][(y[l]-j)] = 99;
                }}
        }
        if (inc == 1)
        {
                rr = (r+1)/2;
                for (j = 0; j<=rr; j++)
                {
                for (i = -rr; i<=rr; i++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]+i+(r/2))][(y[l]-j)] = 99;
                tabb[(x[l]+i+(r/2))][(y[l]-j)] = 99;
                }
                }}
        }
   }
 }
}


void przedw()     //inclusion inside
{
for (l=0; l<=(s+1); l++)
 {

   p = rand () % (99 - r);
   pp = rand () % (99 - r);
   x[l] = p + 1;
   y[l] = pp + 1;

        if (inc == 5)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]+i)][(y[l]+j)] = 99;
                tabb[(x[l]+i)][(y[l]+j)] = 99;
                }}
        }
        if (inc == 2)
        {
                rr = (r+1)/2;
                for (i = -rr; i<=rr; i++)
                {
                for (j = -rr; j<=rr; j++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]+i+(r/2))][(y[l]+j+(r/2))] = 99;
                tabb[(x[l]+i+(r/2))][(y[l]+j+(r/2))] = 99;
                }
                }}
        }

 }

}

void granice2 ()
{
wsk=0;
for (i=1; i<=99; i++)
  {
  for (j=1; j<=99; j++)
  {
  if (((tab[i+1][j]) != (tab[i][j])) || ((tab[i][j+1]) != (tab[i][j])))
  {
  wsk+=1;
  list2[wsk][1]=i;
  list2[wsk][2]=j;
  }
  if (((tab[i+2][j+1]) != (tab[i+1][j+1])) || ((tab[i+1][j+2]) != (tab[i+1][j+1])))
  {
  wsk+=1;
  list2[wsk][1]=i+1;
  list2[wsk][2]=j+1;
  }
  }}
    for (i=0; i<102; i++)
    {
    for (j=0; j<102; j++)
    {
    tab[i][j] = 0;
    }}

  for (i=0; i<=wsk; i++)
  {
  nbb=list2[i][1];
  nbb2=list2[i][2];
  tab[nbb][nbb2]=99;
  }
}

void granice3 ()
{
wsk=0;
srand(time(NULL));
wybr = (rand() % (k+1)+1);

  for (i=2; i<=99; i++)
  {
  for (j=2; j<=99; j++)
  {
  if (((tab[i+1][j]) != (tab[i][j])) || ((tab[i][j+1]) != (tab[i][j])))
  {
  if (tab[i][j] == wybr)
  {
  wsk+=1;
  list2[wsk][1]=i;
  list2[wsk][2]=j;
  }
  }
  else if (((tab[i-1][j]) != (tab[i][j])) || ((tab[i][j-1]) != (tab[i][j])))
  {
  if (tab[i][j] == wybr)
  {
  wsk+=1;
  list2[wsk][1]=i;
  list2[wsk][2]=j;
  }
  }
  }}
    for (i=0; i<102; i++)
    {
    for (j=0; j<102; j++)
    {
    tab[i][j] = 0;
    }}

  for (i=0; i<=wsk; i++)
  {
  nbb=list2[i][1];
  nbb2=list2[i][2];
  tab[nbb][nbb2]=99;
  }
}




void granice ()
{
wsk=0;
for (i=2; i<=98-r; i+=2)
  {
  for (j=2; j<=98-r; j+=2)
  {
  if (((tab[i+1][j]) != (tab[i][j])) || ((tab[i][j+1]) != (tab[i][j])))
  {
  wsk+=1;
  list[wsk][1]=i;
  list[wsk][2]=j;
  }
  if (((tab[i+2][j+1]) != (tab[i+1][j+1])) || ((tab[i+1][j+2]) != (tab[i+1][j+1])))
  {
  wsk+=1;
  list[wsk][1]=i+1;
  list[wsk][2]=j+1;
  }
  }}
  for (l=0; l<=(s+1); l++)
  {
  p = rand () % wsk;
  p = p+1;
  x[l] =  list[p][1];
  y[l] =  list[p][2];
  if (inc == 6)
        {
                for (i=0; i<=(r+1); i++)
                {
                for (j=0; j<=(r+1); j++)
                {
                tab[(x[l]+i-(r/2))][(y[l]+j-(r/2))] = 99;
                tabb[(x[l]+i-(r/2))][(y[l]+j-(r/2))] = 99;
                }}
        }
        if (inc == 3)
        {
                rr = (r+1)/2;
                for (i = -rr; i<=rr; i++)
                {
                for (j = -rr; j<=rr; j++)
                {
                kolo = ((i/rr)*(i/rr)) + ((j/rr)*(j/rr));
                if (kolo < 1.1)
                {
                tab[(x[l]+i)][(y[l]+j)] = 99;
                tabb[(x[l]+i)][(y[l]+j)] = 99;
                }
                }}
        }
  }
}


void addenergy()
{

if (ppeng == 0)

{
  for (i=0; i<=101; i++)
  {
  for (j=0; j<=101; j++)
  {
  add[i][j] = enhom;
  }}

if (dist == 1)
{
 for (i=1; i<=100; i++)
  {
  for (j=1; j<=100; j++)
  {
        if ( ((tab[i+1][j]) != (tab[i][j])) || ((tab[i][j+1]) != (tab[i][j])) )
        {
        add[i][j] = enhet;
        }
  }}

}
}

ppeng = 1;

for (i=0; i<=101; i++)
{
for (j=0; j<=101; j++)
{
if (tab[i][j] > 100)

{
add[i][j] = 0;
}
 }}
}


void nucleons()
{
   if (dyst == 1)

{
   for(i=0; i<=(amo+1); i++)
   {
   x[i] = (rand() % 100) +1;
   y[i] = (rand() % 100) +1;
   }

   for (i=0; i<(amo+2); i++)
   {
   tab [(x[i])] [(y[i])] = i+101;
   }
}

if (dyst == 0)
 {
   wsk=0;
        for (i=1; i<=100; i++)
        {
        for (j=1; j<=100; j++)
        {
                if (((tab[i+1][j]) != (tab[i][j])) || ((tab[i][j+1]) != (tab[i][j])))
                        {
                        wsk++;
                        list[wsk][1]=i;
                        list[wsk][2]=j;
                        }

        }}

  for (l=0; l<=(amo+1); l++)
  {
  if (wsk > 0)
  {
  p = rand () % wsk;
  p = p+1;
  x[l] =  list[p][1];
  y[l] =  list[p][2];

  tab [(x[l])] [(y[l])] = l+101;
  }
 }
}
}


void recrystallization()
{
  srand(time(NULL));

  for (i=1;i<500;i++)
  {

        em=0;
        l=0;
        don=0;

        x[i] = (rand() % (100)) +1;
        y[i] = (rand() % (100)) +1;

   if (((tab[(x[i]-1)][(y[i])]) > 100) || ((tab[(x[i]-1)][(y[i]-1)])) || ((tab[(x[i]-1)][(y[i]+1)])) || ((tab[(x[i])][(y[i])-1])) || ((tab[(x[i])][(y[i]+1)])) || ((tab[(x[i]+1)][(y[i]-1)])) || ((tab[(x[i]+1)][(y[i])])) || ((tab[(x[i]+1)][(y[i]+1)])))
   {
   l = 0;
   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i])]))
   {
   em++;
   if ((tab[(x[i]-1)][(y[i])]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]-1)]))
   {
   em++;
   if ((tab[(x[i]-1)][(y[i]-1)]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]+1)]))
   {
   em++;
   if ((tab[(x[i]-1)][(y[i]+1)]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i])-1]))
   {
   em++;
   if ((tab[(x[i])][(y[i]-1)]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i]+1)]))
   {
   em++;
   if ((tab[(x[i])][(y[i]+1)]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]-1)]))
   {
   em++;
   if ((tab[(x[i]+1)][(y[i]-1)]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i])]))
   {
   em++;
   if ((tab[(x[i]+1)][(y[i])]) > 100)
        {
                l++;
        }
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]+1)]))
   {
   em++;
   if ((tab[(x[i]+1)][(y[i]+1)]) > 100)
        {
                l++;
        }
   }

        e=em + add[(x[i])][(y[i])];

        tut=tab[(x[i])][(y[i])];

        if (l > 0)
        {
        don = rand () % l ;


   if ((tab[(x[i]-1)][(y[i])]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]-1)][(y[i])];
        }
        don --;
        }


   if ((tab[(x[i]-1)][(y[i]-1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]-1)][(y[i]-1)];
        }
        don --;
        }


   if ((tab[(x[i]-1)][(y[i]+1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]-1)][(y[i]+1)];
        }
        don --;
        }


   if ((tab[(x[i])][(y[i]-1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i])][(y[i]-1)];
        }
        don --;
        }


   if ((tab[(x[i])][(y[i]+1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i])][(y[i]+1)];
        }
        don --;
        }

   if ((tab[(x[i]+1)][(y[i]-1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]+1)][(y[i]-1)];
        }
        don --;
        }


   if ((tab[(x[i]+1)][(y[i])]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]+1)][(y[i])];
        }
        don --;
        }

   if ((tab[(x[i]+1)][(y[i]+1)]) > 100)
        {
        if (don == 0)
        {
                tab[(x[i])][(y[i])] = tab[(x[i]+1)][(y[i]+1)];
        }
        don --;
        }

        em=0;

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]-1)][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i])-1]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i])][(y[i]+1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]-1)]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i])]))
   {
   em++;
   }

   if ((tab[(x[i])][(y[i])]) != (tab[(x[i]+1)][(y[i]+1)]))
   {
   em++;
   }

        ee=em;

   if (ee-e>0)
   {
   tab[(x[i])][(y[i])]=tut;
   }
    }
   }
  }
}



__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
ComboBox1->Items->Add("2");
ComboBox1->Items->Add("3");
ComboBox1->Items->Add("4");
ComboBox1->Items->Add("5");
ComboBox1->Items->Add("6");
ComboBox1->Items->Add("7");
ComboBox1->Items->Add("8");
ComboBox1->Items->Add("9");
ComboBox1->Items->Add("10");
ComboBox1->Items->Add("11");
ComboBox1->Items->Add("12");
ComboBox1->Items->Add("13");
ComboBox1->Items->Add("14");
ComboBox1->Items->Add("15");
ComboBox1->Items->Add("16");
ComboBox1->Items->Add("17");
ComboBox1->Items->Add("18");
ComboBox1->Items->Add("19");
ComboBox1->Items->Add("20");
ComboBox1->Items->Add("21");
ComboBox1->Items->Add("22");
ComboBox1->Items->Add("23");
ComboBox1->Items->Add("24");

ComboBox2->Items->Add("Von Neumann");
ComboBox2->Items->Add("Moore");
ComboBox2->Items->Add("");
ComboBox2->Items->Add("");
ComboBox2->Items->Add("Extended Moore");

ComboBox3->Items->Add("Absorbing");
ComboBox3->Items->Add("Periodic");

ComboBox4->Items->Add("None");
ComboBox4->Items->Add("Circle, before symulation-border");
ComboBox4->Items->Add("Circle, before symulation-midst");
ComboBox4->Items->Add("Circle, after symulation");

ComboBox4->Items->Add("Square, before symulation-border");
ComboBox4->Items->Add("Square, before symulation-midst");
ComboBox4->Items->Add("Square, after symulation");

ComboBox5->Items->Add("2");
ComboBox5->Items->Add("3");
ComboBox5->Items->Add("4");
ComboBox5->Items->Add("5");
ComboBox5->Items->Add("6");
ComboBox5->Items->Add("7");
ComboBox5->Items->Add("8");
ComboBox5->Items->Add("9");
ComboBox5->Items->Add("10");
ComboBox5->Items->Add("50");

ComboBox6->Items->Add("2");
ComboBox6->Items->Add("3");
ComboBox6->Items->Add("4");
ComboBox6->Items->Add("5");
ComboBox6->Items->Add("6");
ComboBox6->Items->Add("7");
ComboBox6->Items->Add("8");
ComboBox6->Items->Add("9");
ComboBox6->Items->Add("10");
ComboBox6->Items->Add("11");
ComboBox6->Items->Add("12");
ComboBox6->Items->Add("13");
ComboBox6->Items->Add("14");
ComboBox6->Items->Add("15");
ComboBox6->Items->Add("16");
ComboBox6->Items->Add("17");
ComboBox6->Items->Add("18");
ComboBox6->Items->Add("19");
ComboBox6->Items->Add("20");

ComboBox7->Items->Add("10");
ComboBox7->Items->Add("20");
ComboBox7->Items->Add("30");
ComboBox7->Items->Add("40");
ComboBox7->Items->Add("50");
ComboBox7->Items->Add("60");
ComboBox7->Items->Add("70");
ComboBox7->Items->Add("80");
ComboBox7->Items->Add("90");
ComboBox7->Items->Add("100");


ComboBox8->Items->Add("2");
ComboBox8->Items->Add("3");
ComboBox8->Items->Add("4");
ComboBox8->Items->Add("5");
ComboBox8->Items->Add("6");
ComboBox8->Items->Add("7");
ComboBox8->Items->Add("8");
ComboBox8->Items->Add("9");
ComboBox8->Items->Add("10");
ComboBox8->Items->Add("11");
ComboBox8->Items->Add("12");
ComboBox8->Items->Add("13");
ComboBox8->Items->Add("14");
ComboBox8->Items->Add("15");
ComboBox8->Items->Add("16");
ComboBox8->Items->Add("17");
ComboBox8->Items->Add("18");
ComboBox8->Items->Add("19");
ComboBox8->Items->Add("20");

ComboBox9->Items->Add("100");
ComboBox9->Items->Add("200");
ComboBox9->Items->Add("300");
ComboBox9->Items->Add("400");
ComboBox9->Items->Add("500");
ComboBox9->Items->Add("600");
ComboBox9->Items->Add("700");
ComboBox9->Items->Add("800");
ComboBox9->Items->Add("900");
ComboBox9->Items->Add("1000");
ComboBox9->Items->Add("1100");
ComboBox9->Items->Add("1200");
ComboBox9->Items->Add("1300");
ComboBox9->Items->Add("1400");
ComboBox9->Items->Add("1500");
ComboBox9->Items->Add("1600");
ComboBox9->Items->Add("1700");
ComboBox9->Items->Add("1800");
ComboBox9->Items->Add("1900");
ComboBox9->Items->Add("2000");

ComboBox10->Items->Add("Homogenous");
ComboBox10->Items->Add("Heterogenous");

ComboBox11->Items->Add("1");
ComboBox11->Items->Add("2");
ComboBox11->Items->Add("3");
ComboBox11->Items->Add("4");
ComboBox11->Items->Add("5");
ComboBox11->Items->Add("6");
ComboBox11->Items->Add("7");
ComboBox11->Items->Add("8");
ComboBox11->Items->Add("9");
ComboBox11->Items->Add("10");

ComboBox12->Items->Add("1");
ComboBox12->Items->Add("2");
ComboBox12->Items->Add("3");
ComboBox12->Items->Add("4");
ComboBox12->Items->Add("5");
ComboBox12->Items->Add("6");
ComboBox12->Items->Add("7");
ComboBox12->Items->Add("8");
ComboBox12->Items->Add("9");
ComboBox12->Items->Add("10");

ComboBox13->Items->Add("1");
ComboBox13->Items->Add("2");
ComboBox13->Items->Add("3");
ComboBox13->Items->Add("4");
ComboBox13->Items->Add("5");
ComboBox13->Items->Add("6");
ComboBox13->Items->Add("7");
ComboBox13->Items->Add("8");
ComboBox13->Items->Add("9");
ComboBox13->Items->Add("10");

ComboBox14->Items->Add("Constant");
ComboBox14->Items->Add("Increasing");
ComboBox14->Items->Add("Decreasing");
ComboBox14->Items->Add("Only at the begining");


ComboBox15->Items->Add("2");
ComboBox15->Items->Add("3");
ComboBox15->Items->Add("4");
ComboBox15->Items->Add("5");
ComboBox15->Items->Add("6");
ComboBox15->Items->Add("7");
ComboBox15->Items->Add("8");
ComboBox15->Items->Add("9");
ComboBox15->Items->Add("10");
ComboBox15->Items->Add("11");
ComboBox15->Items->Add("12");
ComboBox15->Items->Add("13");
ComboBox15->Items->Add("14");
ComboBox15->Items->Add("15");
ComboBox15->Items->Add("16");
ComboBox15->Items->Add("17");
ComboBox15->Items->Add("18");
ComboBox15->Items->Add("19");
ComboBox15->Items->Add("20");
ComboBox15->Items->Add("21");
ComboBox15->Items->Add("22");
ComboBox15->Items->Add("23");
ComboBox15->Items->Add("24");
ComboBox15->Items->Add("25");
ComboBox15->Items->Add("26");
ComboBox15->Items->Add("27");
ComboBox15->Items->Add("28");
ComboBox15->Items->Add("29");
ComboBox15->Items->Add("30");
ComboBox15->Items->Add("31");
ComboBox15->Items->Add("32");
ComboBox15->Items->Add("33");
ComboBox15->Items->Add("34");
ComboBox15->Items->Add("35");
ComboBox15->Items->Add("36");
ComboBox15->Items->Add("37");
ComboBox15->Items->Add("38");
ComboBox15->Items->Add("39");
ComboBox15->Items->Add("40");

ComboBox16->Items->Add("1000");
ComboBox16->Items->Add("2000");
ComboBox16->Items->Add("3000");
ComboBox16->Items->Add("4000");
ComboBox16->Items->Add("5000");
ComboBox16->Items->Add("6000");
ComboBox16->Items->Add("7000");
ComboBox16->Items->Add("8000");
ComboBox16->Items->Add("9000");
ComboBox16->Items->Add("10000");
ComboBox16->Items->Add("11000");
ComboBox16->Items->Add("12000");
ComboBox16->Items->Add("13000");
ComboBox16->Items->Add("14000");
ComboBox16->Items->Add("15000");
ComboBox16->Items->Add("16000");
ComboBox16->Items->Add("17000");
ComboBox16->Items->Add("18000");
ComboBox16->Items->Add("19000");
ComboBox16->Items->Add("20000");

ComboBox17->Items->Add("On boundaries");
ComboBox17->Items->Add("Anywhere");

}



void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
sttt = 0;
  if (rule == 0)
  {
  von_neumann();
  }

  if (rule == 1)
  {
  moore();
  }

  if (rule == 2)
  {
  }

  if (rule == 3)
  {
  }

  if (rule == 4)
  {
  exmoore();
  }


 for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==0)
 {
 Canvas->Brush->Color = clWhite;
 }
 else if (tab[i][j]==1)
 {
 Canvas->Brush->Color = clGreen;
 }
 else if (tab[i][j]==2)
 {
 Canvas->Brush->Color = clBlue;
 }
 else if (tab[i][j]==3)
 {
 Canvas->Brush->Color = clGray;
 }
 else if (tab[i][j]==4)
 {
 Canvas->Brush->Color = clActiveBorder;
 }
 else if (tab[i][j]==5)
 {
 Canvas->Brush->Color = cl3DDkShadow;
 }
 else if (tab[i][j]==6)
 {
 Canvas->Brush->Color = clOlive;
 }
 else if (tab[i][j]==7)
 {
 Canvas->Brush->Color = clTeal;
 }
 else if (tab[i][j]==8)
 {
 Canvas->Brush->Color = clPurple;
 }
 else if (tab[i][j]==9)
 {
 Canvas->Brush->Color = clLime;
 }
 else if (tab[i][j]==10)
 {
 Canvas->Brush->Color = clYellow;
 }
 else if (tab[i][j]==11)
 {
 Canvas->Brush->Color = clAqua;
 }
 else if (tab[i][j]==12)
 {
 Canvas->Brush->Color = clCream;
 }
 else if (tab[i][j]==13)
 {
 Canvas->Brush->Color = clFuchsia;
 }
 else if (tab[i][j]==14)
 {
 Canvas->Brush->Color = clNavy;
 }
 else if (tab[i][j]==15)
 {
 Canvas->Brush->Color = clSilver;
 }
 else if (tab[i][j]==16)
 {
 Canvas->Brush->Color = clSkyBlue;
 }
 else if (tab[i][j]==17)
 {
 Canvas->Brush->Color = clMenu;
 }
 else if (tab[i][j]==18)
 {
 Canvas->Brush->Color = clLtGray;
 }
 else if (tab[i][j]==19)
 {
 Canvas->Brush->Color = cl3DLight;
 }
 else if (tab[i][j]==20)
 {
 Canvas->Brush->Color = clMoneyGreen;
 }

 else if (tab[i][j]==99)    //inclusion
 {
 Canvas->Brush->Color = clBlack;
 }
 else
 {
 Canvas->Brush->Color = clWhite;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }
 kopiuj ();

 if (bound == 1)
 {
  periodic();
 }

 if (stop2 == 1)
 {
 Timer1->Enabled=false;
 }


 if (stop == 1)
 {
 stop2 = 1;
 if ((inc == 3) || (inc == 6))
        {
        granice();
        }
 }

}


void __fastcall TForm1::Button1Click(TObject *Sender)
{
Timer1->Enabled=false;
Timer2->Enabled=false;
Timer3->Enabled=false;
srand(time(NULL));
k = ComboBox1->ItemIndex;
rule = ComboBox2->ItemIndex;
bound = ComboBox3->ItemIndex;
inc = ComboBox4->ItemIndex;
s = ComboBox5->ItemIndex;
r = ComboBox6->ItemIndex;
szansa = ComboBox7->ItemIndex;
szansa += 1;
szansa *= 10;
wsk=0;

ppeng = 0;

baza();
stop2=0;


if ( (k >= 0) && (rule >= 0) && (bound >= 0) && (inc >=0))
{


        if (rule == 4)
        {
        if (szansa > 0)
                {
                if ( ((inc == 1) || (inc == 4)) && (s >=0) && (r >= 0) )
                        {
                        przed();
                        Timer1->Enabled=true;
                        }
                        if (inc == 0)
                        {
                        Timer1->Enabled=true;
                        }
                if ( ((inc == 2) || (inc == 5)) && (s >=0) && (r >= 0) )
                {
                przedw();
                Timer1->Enabled=true;
                }
                if ( ((inc == 3) || (inc == 6)) && (s >=0) && (r >= 0) )
                {
                Timer1->Enabled=true;
                }
                }
        }
        else
        {
        if ( ((inc == 1) || (inc == 4)) && (s >=0) && (r >= 0) )
        {
        przed();
        Timer1->Enabled=true;
        }
        if ( ((inc == 2) || (inc == 5)) && (s >=0) && (r >= 0) )
        {
        przedw();
        Timer1->Enabled=true;
        }
        if (inc == 0)
        {
        Timer1->Enabled=true;
        }
        if ( ((inc == 3) || (inc == 6)) && (s >=0) && (r >= 0) )
        {
        Timer1->Enabled=true;
        }
        }
        
}
}


void __fastcall TForm1::FormCreate(TObject *Sender)
{
 Canvas->Brush->Color = clWhite;
 Canvas->FillRect(Rect(5,5,500,500));
}


void __fastcall TForm1::ComboBox4Change(TObject *Sender)
{
  inc2 = ComboBox4->ItemIndex;
  if (inc2 > 0)
  {
  ComboBox5->Visible=true;
  ComboBox6->Visible=true;
  }
  else
  {
  ComboBox5->Visible=false;
  ComboBox6->Visible=false;
  }

}



void __fastcall TForm1::ComboBox2Change(TObject *Sender)
{
  rule2 = ComboBox2->ItemIndex;
  if (rule2 == 4)
  {
  ComboBox7->Visible=true;
  }
  else
  {
  ComboBox7->Visible=false;
  }
}


void __fastcall TForm1::Button2Click(TObject *Sender)
{
srand(time(NULL));
Timer1->Enabled=false;
Timer2->Enabled=false;
Timer3->Enabled=false;
mm =  ComboBox8->ItemIndex;
k3 =  ComboBox9->ItemIndex;
k3 = k3+1;
k3 = k3*100;
stop=0;

if ((mm >= 0) && (k3 >= 0))
{

Timer2->Enabled=true;
}
}


void __fastcall TForm1::Timer2Timer(TObject *Sender)
{
sttt = 0;
 if (stop==0)
 {
 montestart();
 }

 montecarlo();
 periodic();

 for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==0)
 {
 Canvas->Brush->Color = clWhite;
 }
 else if (tab[i][j]==1)
 {
 Canvas->Brush->Color = cl3DDkShadow;
 }
 else if (tab[i][j]==2)
 {
 Canvas->Brush->Color = clBlue;
 }
 else if (tab[i][j]==3)
 {
 Canvas->Brush->Color = clGreen;
 }
 else if (tab[i][j]==4)
 {
 Canvas->Brush->Color = clActiveBorder;
 }
 else if (tab[i][j]==5)
 {
 Canvas->Brush->Color = clGray;
 }
 else if (tab[i][j]==6)
 {
 Canvas->Brush->Color = clOlive;
 }
 else if (tab[i][j]==7)
 {
 Canvas->Brush->Color = clTeal;
 }
 else if (tab[i][j]==8)
 {
 Canvas->Brush->Color = clPurple;
 }
 else if (tab[i][j]==9)
 {
 Canvas->Brush->Color = clLime;
 }
 else if (tab[i][j]==10)
 {
 Canvas->Brush->Color = clYellow;
 }
 else if (tab[i][j]==11)
 {
 Canvas->Brush->Color = clAqua;
 }
 else if (tab[i][j]==12)
 {
 Canvas->Brush->Color = clCream;
 }
 else if (tab[i][j]==13)
 {
 Canvas->Brush->Color = clFuchsia;
 }
 else if (tab[i][j]==14)
 {
 Canvas->Brush->Color = clNavy;
 }
 else if (tab[i][j]==15)
 {
 Canvas->Brush->Color = clSilver;
 }
 else if (tab[i][j]==16)
 {
 Canvas->Brush->Color = clSkyBlue;
 }
 else if (tab[i][j]==17)
 {
 Canvas->Brush->Color = clMenu;
 }
 else if (tab[i][j]==18)
 {
 Canvas->Brush->Color = clLtGray;
 }
 else if (tab[i][j]==19)
 {
 Canvas->Brush->Color = cl3DLight;
 }
 else if (tab[i][j]==20)
 {
 Canvas->Brush->Color = clMoneyGreen;
 }

 else if (tab[i][j]==99)
 {
 Canvas->Brush->Color = clBlack;
 }
 else
 {
 Canvas->Brush->Color = clWhite;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }

 if (stop >= k3)
 {
 Timer2->Enabled=false;
 }
 stop=stop+1;
}


void __fastcall TForm1::ComboBox10Change(TObject *Sender)
{
  dist2 = ComboBox10->ItemIndex;
  if (dist2 == 0)
  {
  ComboBox13->Visible=true;
  ComboBox12->Visible=false;
  ComboBox11->Visible=false;
  }

  if (dist2 == 1)
  {
  ComboBox13->Visible=false;
  ComboBox11->Visible=true;
  ComboBox12->Visible=true;
  }
}


void __fastcall TForm1::Button3Click(TObject *Sender)
{
 dist = ComboBox10->ItemIndex;

 powr = 1;

 energ = 0;

 ppeng = 0;

 if (dist == 0)
 {
 enhom =  ComboBox13->ItemIndex;
 }

  if (dist == 1)
 {
 enhom = ComboBox12->ItemIndex;
 enhet = ComboBox11->ItemIndex;
 }

 mod = ComboBox14->ItemIndex;

 dyst = ComboBox17->ItemIndex;

 amo = ComboBox15->ItemIndex;

 zmiana = 4;

 rs = ComboBox16->ItemIndex;

 rs = rs + 1;
 rs = rs*1000;

 Timer1->Enabled=false;
 Timer2->Enabled=false;

 stop = 0;

 if ((dist >= 0) && (mod >= 0) && (amo >= 0) && (rs >= 0))
 {
 if (dist == 0)
 {
   if (enhom >= 0)
   {
   addenergy();
   Timer3->Enabled=true;
   }
 }
 if (dist == 1)
 {
   if ((enhom >= 0) && (enhet >= 0))
   {
   addenergy();
   Timer3->Enabled=true;
   }
 }
 }
}


void __fastcall TForm1::Timer3Timer(TObject *Sender)
{
sttt = 0;
if (powr == 1)
{
if ((stop==0) && (mod == 0))
 {
 nucleons();
 }

if ((stop==0) && (mod == 1))
 {
 amo = amo + 5 ;
 nucleons();
 }

if ((stop==0) && (mod == 2))
 {
 amo = amo - 5 ;
        if (amo > 0)
        {
        nucleons();
        }
 }

if ((stop==0) && (mod == 3))
 {
        if (zmiana == 4)
        {
        nucleons();
        }
 }

 recrystallization();
 addenergy();
 //periodic();
}

if (energ == 0)


{
 for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==0)
 {
 Canvas->Brush->Color = clWhite;
 }
 else if (tab[i][j]==1)
 {
 Canvas->Brush->Color = cl3DDkShadow;
 }
 else if (tab[i][j]==2)
 {
 Canvas->Brush->Color = clBlue;
 }
 else if (tab[i][j]==3)
 {
 Canvas->Brush->Color = clGreen;
 }
 else if (tab[i][j]==4)
 {
 Canvas->Brush->Color = clActiveBorder;
 }
 else if (tab[i][j]==5)
 {
 Canvas->Brush->Color = clGray;
 }
 else if (tab[i][j]==6)
 {
 Canvas->Brush->Color = clOlive;
 }
 else if (tab[i][j]==7)
 {
 Canvas->Brush->Color = clTeal;
 }
 else if (tab[i][j]==8)
 {
 Canvas->Brush->Color = clPurple;
 }
 else if (tab[i][j]==9)
 {
 Canvas->Brush->Color = clLime;
 }
 else if (tab[i][j]==10)
 {
 Canvas->Brush->Color = clYellow;
 }
 else if (tab[i][j]==11)
 {
 Canvas->Brush->Color = clAqua;
 }
 else if (tab[i][j]==12)
 {
 Canvas->Brush->Color = clCream;
 }
 else if (tab[i][j]==13)
 {
 Canvas->Brush->Color = clFuchsia;
 }
 else if (tab[i][j]==14)
 {
 Canvas->Brush->Color = clNavy;
 }
 else if (tab[i][j]==15)
 {
 Canvas->Brush->Color = clSilver;
 }
 else if (tab[i][j]==16)
 {
 Canvas->Brush->Color = clSkyBlue;
 }
 else if (tab[i][j]==17)
 {
 Canvas->Brush->Color = clMenu;
 }
 else if (tab[i][j]==18)
 {
 Canvas->Brush->Color = clLtGray;
 }
 else if (tab[i][j]==19)
 {
 Canvas->Brush->Color = cl3DLight;
 }
 else if (tab[i][j]==20)
 {
 Canvas->Brush->Color = clMoneyGreen;
 }
 else if (tab[i][j]==101)
 {
 Canvas->Brush->Color = 0x330099;
 }
 else if (tab[i][j]==102)
 {
 Canvas->Brush->Color = 0x6633FF;
 }
 else if (tab[i][j]==103)
 {
 Canvas->Brush->Color = 0x3300CC;
 }
 else if (tab[i][j]==104)
 {
 Canvas->Brush->Color = 0x3300FF;
 }
 else if (tab[i][j]==105)
 {
 Canvas->Brush->Color = 0x3333CC;
 }
 else if (tab[i][j]==106)
 {
 Canvas->Brush->Color = 0x000066;
 }
 else if (tab[i][j]==107)
 {
 Canvas->Brush->Color = 0x000099;
 }
 else if (tab[i][j]==108)
 {
 Canvas->Brush->Color = 0x0000CC;
 }
 else if (tab[i][j]==109)
 {
 Canvas->Brush->Color = 0x333399;
 }
 else if (tab[i][j]==110)
 {
 Canvas->Brush->Color = 0x3366FF;
 }
 else if (tab[i][j]==111)
 {
 Canvas->Brush->Color = 0x003366;
 }
 else if (tab[i][j]==112)
 {
 Canvas->Brush->Color = 0x0000FF;
 }
 else if (tab[i][j]==113)
 {
 Canvas->Brush->Color = 0x000066;
 }
 else if (tab[i][j]==114)
 {
 Canvas->Brush->Color = 0x0066FF;
 }
 else if (tab[i][j]==115)
 {
 Canvas->Brush->Color = 0x99CCFF;
 }
 else if (tab[i][j]==116)
 {
 Canvas->Brush->Color = 0x2A2AA6;
 }
 else if (tab[i][j]==117)
 {
 Canvas->Brush->Color = 0x0024FF;
 }
 else if (tab[i][j]==118)
 {
 Canvas->Brush->Color = 0x17178C;
 }
 else if (tab[i][j]==119)
 {
 Canvas->Brush->Color = 0x6666FF;
 }
 else if (tab[i][j]==120)
 {
 Canvas->Brush->Color = 0x6666CC;
 }
 else if (tab[i][j]==121)
 {
 Canvas->Brush->Color = 0x330099;
 }
 else if (tab[i][j]==122)
 {
 Canvas->Brush->Color = 0x6633FF;
 }
 else if (tab[i][j]==123)
 {
 Canvas->Brush->Color = 0x3300CC;
 }
 else if (tab[i][j]==124)
 {
 Canvas->Brush->Color = 0x3300FF;
 }
 else if (tab[i][j]==125)
 {
 Canvas->Brush->Color = 0x3333CC;
 }
 else if (tab[i][j]==126)
 {
 Canvas->Brush->Color = 0x000066;
 }
 else if (tab[i][j]==127)
 {
 Canvas->Brush->Color = 0x000099;
 }
 else if (tab[i][j]==128)
 {
 Canvas->Brush->Color = 0x0000CC;
 }
 else if (tab[i][j]==129)
 {
 Canvas->Brush->Color = 0x333399;
 }
 else if (tab[i][j]==130)
 {
 Canvas->Brush->Color = 0x3366FF;
 }
 else if (tab[i][j]==131)
 {
 Canvas->Brush->Color = 0x003366;
 }
 else if (tab[i][j]==132)
 {
 Canvas->Brush->Color = 0x0000FF;
 }
 else if (tab[i][j]==133)
 {
 Canvas->Brush->Color = 0x000066;
 }
 else if (tab[i][j]==134)
 {
 Canvas->Brush->Color = 0x0066FF;
 }
 else if (tab[i][j]==135)
 {
 Canvas->Brush->Color = 0x99CCFF;
 }
 else if (tab[i][j]==136)
 {
 Canvas->Brush->Color = 0x2A2AA6;
 }
 else if (tab[i][j]==137)
 {
 Canvas->Brush->Color = 0x0024FF;
 }
 else if (tab[i][j]==138)
 {
 Canvas->Brush->Color = 0x17178C;
 }
 else if (tab[i][j]==139)
 {
 Canvas->Brush->Color = 0x6666FF;
 }
 else if (tab[i][j]==140)
 {
 Canvas->Brush->Color = 0x6666CC;
 }
 else if (tab[i][j]==99)
 {
 Canvas->Brush->Color = clBlack;
 }

 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }
 }

 if (energ == 1)

{
 for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (add[i][j]==0)
 {
 Canvas->Brush->Color = 0x191919;
 }
 else if (add[i][j]==1)
 {
 Canvas->Brush->Color = 0x2E2E2E;
 }
 else if (add[i][j]==2)
 {
 Canvas->Brush->Color = 0x434343;
 }
 else if (add[i][j]==3)
 {
 Canvas->Brush->Color = 0x535353;
 }
 else if (add[i][j]==4)
 {
 Canvas->Brush->Color = 0x626262;
 }
 else if (add[i][j]==5)
 {
 Canvas->Brush->Color = 0x878787;
 }
 else if (add[i][j]==6)
 {
 Canvas->Brush->Color = 0x9C9C9C;
 }
 else if (add[i][j]==7)
 {
 Canvas->Brush->Color = 0xBBBBBB;
 }
 else if (add[i][j]==8)
 {
 Canvas->Brush->Color = 0xEFEFEF;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));

 }
 }
 }

 if (powr == 1)
 {
 stop=stop+4;


 if (stop > rs)
 {
 zmiana = zmiana - 1;
 stop = 0;
 }

 if (zmiana < 1)
 {
 Timer3->Enabled=false;
 }

 }

 if (powr == 0)
 {
 Timer3->Enabled=false;
 }
}


void __fastcall TForm1::Button4Click(TObject *Sender)
{

energ = 1;

}


void __fastcall TForm1::Button5Click(TObject *Sender)
{

energ = 0;

}

void __fastcall TForm1::Button6Click(TObject *Sender)
{
std::fstream file1;
file1.open("matrix.txt", std::ios::out);
 for(i=0; i<=101; i++)
 {
 for(j=0; j<=101; j++)
 {
 file1<<tab[i][j]<<std::endl;
 }}
 file1.close();

 Graphics::TBitmap *MyBitmap = new Graphics::TBitmap;
 Graphics::TCanvas *MyCanvas = new Graphics::TCanvas;
 HDC dc = GetDC(0);
 MyCanvas->Handle = dc;
 MyBitmap->Width = 500;
 MyBitmap->Height = 500;
 TRect rt = Rect(5,5, 500, 500);
 MyBitmap->Canvas->CopyRect(rt, Canvas, rt);
 MyBitmap->SaveToFile("myfile.bmp");
}


void __fastcall TForm1::Button7Click(TObject *Sender)
{
std::fstream file1;
file1.open("matrix.txt", std::ios::in);

if (file1.good()==false)
{
}
else
{
std::string linia;
 for(i=0; i<=101; i++)
 {
 for(j=0; j<=101; j++)
 {
 getline(file1,linia);
 tab[i][j] = atoi(linia.c_str());
 }}
 file1.close();

for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==0)
 {
 Canvas->Brush->Color = clWhite;
 }
 else if (tab[i][j]==1)
 {
 Canvas->Brush->Color = cl3DDkShadow;
 }
 else if (tab[i][j]==2)
 {
 Canvas->Brush->Color = clBlue;
 }
 else if (tab[i][j]==3)
 {
 Canvas->Brush->Color = clGreen;
 }
 else if (tab[i][j]==4)
 {
 Canvas->Brush->Color = clActiveBorder;
 }
 else if (tab[i][j]==5)
 {
 Canvas->Brush->Color = clGray;
 }
 else if (tab[i][j]==6)
 {
 Canvas->Brush->Color = clOlive;
 }
 else if (tab[i][j]==7)
 {
 Canvas->Brush->Color = clTeal;
 }
 else if (tab[i][j]==8)
 {
 Canvas->Brush->Color = clPurple;
 }
 else if (tab[i][j]==9)
 {
 Canvas->Brush->Color = clLime;
 }
 else if (tab[i][j]==10)
 {
 Canvas->Brush->Color = clYellow;
 }
 else if (tab[i][j]==11)
 {
 Canvas->Brush->Color = clAqua;
 }
 else if (tab[i][j]==12)
 {
 Canvas->Brush->Color = clCream;
 }
 else if (tab[i][j]==13)
 {
 Canvas->Brush->Color = clFuchsia;
 }
 else if (tab[i][j]==14)
 {
 Canvas->Brush->Color = clNavy;
 }
 else if (tab[i][j]==15)
 {
 Canvas->Brush->Color = clSilver;
 }
 else if (tab[i][j]==16)
 {
 Canvas->Brush->Color = clSkyBlue;
 }
 else if (tab[i][j]==17)
 {
 Canvas->Brush->Color = clMenu;
 }
 else if (tab[i][j]==18)
 {
 Canvas->Brush->Color = clLtGray;
 }
 else if (tab[i][j]==19)
 {
 Canvas->Brush->Color = cl3DLight;
 }
 else if (tab[i][j]==20)
 {
 Canvas->Brush->Color = clMoneyGreen;
 }
 else if (tab[i][j]==21)
 {
 Canvas->Brush->Color = clGreen;
 }
 else if (tab[i][j]==22)
 {
 Canvas->Brush->Color = clBlue;
 }
  else if (tab[i][j]==23)
 {
 Canvas->Brush->Color = clYellow;
 }
  else if (tab[i][j]==24)
 {
 Canvas->Brush->Color = clRed;
 }
  else if (tab[i][j]==25)
 {
 Canvas->Brush->Color = clBlack;
 }

 else if (tab[i][j]==99)    //wtracenie
 {
 Canvas->Brush->Color = clBlack;
 }
 else
 {
 Canvas->Brush->Color = clWhite;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }
}
}
void __fastcall TForm1::Button8Click(TObject *Sender)
{

if (sttt == 0)
{
 granice2 ();

for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==99)    //wtracenie
 {
 Canvas->Brush->Color = clBlack;
 }
 else
 {
 Canvas->Brush->Color = clWhite;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }
 }
 sttt =1;

}




//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
if (sttt == 0)
{
 granice3 ();

for(i=1; i<=100; i++)
 {
 for(j=1; j<=100; j++)
 {
 if (tab[i][j]==99)    //wtracenie
 {
 Canvas->Brush->Color = clBlack;
 }
 else
 {
 Canvas->Brush->Color = clWhite;
 }
 Canvas->FillRect(Rect(i*5,j*5,i*5+5,j*5+5));
 }
 }
 }
 sttt = 1;
}
//---------------------------------------------------------------------------



