package android.support.v7.widget;

import java.util.List;

final class X
{
  private Y a;

  public X(Y paramY)
  {
    this.a = paramY;
  }

  final void a(List<p> paramList)
  {
    int i;
    int j;
    label11: int k;
    label39: int m;
    p localp1;
    p localp2;
    int i4;
    while (true)
    {
      i = -1 + paramList.size();
      j = 0;
      if (i < 0)
        break label251;
      if (((p)paramList.get(i)).a != 3)
        break;
      if (j == 0)
        break label1222;
      k = i;
      if (k == -1)
        break label1179;
      m = k + 1;
      localp1 = (p)paramList.get(k);
      localp2 = (p)paramList.get(m);
      switch (localp2.a)
      {
      default:
        break;
      case 0:
        if (localp1.c >= localp2.b)
          break label1192;
        i4 = -1;
        label127: if (localp1.b < localp2.b)
          i4++;
        if (localp2.b <= localp1.b)
          localp1.b += localp2.c;
        if (localp2.b <= localp1.c)
          localp1.c += localp2.c;
        localp2.b = (i4 + localp2.b);
        paramList.set(k, localp2);
        paramList.set(m, localp1);
      case 1:
      case 2:
      }
    }
    label308: label1204: label1213: label1222: for (int i5 = 1; ; i5 = j)
    {
      i--;
      j = i5;
      break label11;
      label251: k = -1;
      break label39;
      int i1;
      int i2;
      if (localp1.b < localp1.c)
      {
        if ((localp2.b != localp1.b) || (localp2.c != localp1.c - localp1.b))
          break label1213;
        i1 = 0;
        i2 = 1;
      }
      while (true)
      {
        label333: p localp3;
        if (localp1.c < localp2.b)
        {
          localp2.b = (-1 + localp2.b);
          if (localp1.b > localp2.b)
            break label517;
          localp2.b = (1 + localp2.b);
          localp3 = null;
        }
        while (true)
        {
          label721: Object localObject1;
          if (i2 != 0)
          {
            paramList.set(k, localp2);
            paramList.remove(m);
            this.a.a(localp1);
            break;
            if ((localp2.b != 1 + localp1.c) || (localp2.c != localp1.b - localp1.c))
              break label1204;
            i1 = 1;
            i2 = 1;
            break label308;
            if (localp1.c >= localp2.b + localp2.c)
              break label333;
            localp2.c = (-1 + localp2.c);
            localp1.a = 1;
            localp1.c = 1;
            if (localp2.c != 0)
              break;
            paramList.remove(m);
            this.a.a(localp2);
            break;
            if (localp1.b < localp2.b + localp2.c)
            {
              int i3 = localp2.b + localp2.c - localp1.b;
              localp3 = this.a.a(1, 1 + localp1.b, i3);
              localp2.c = (localp1.b - localp2.b);
              continue;
            }
          }
          else
          {
            if (i1 != 0)
            {
              if (localp3 != null)
              {
                if (localp1.b > localp3.b)
                  localp1.b -= localp3.c;
                if (localp1.c > localp3.b)
                  localp1.c -= localp3.c;
              }
              if (localp1.b > localp2.b)
                localp1.b -= localp2.c;
              if (localp1.c > localp2.b)
                localp1.c -= localp2.c;
              paramList.set(k, localp2);
              if (localp1.b == localp1.c)
                break label898;
              paramList.set(m, localp1);
            }
            while (localp3 != null)
            {
              paramList.add(k, localp3);
              break;
              if (localp3 != null)
              {
                if (localp1.b >= localp3.b)
                  localp1.b -= localp3.c;
                if (localp1.c >= localp3.b)
                  localp1.c -= localp3.c;
              }
              if (localp1.b >= localp2.b)
                localp1.b -= localp2.c;
              if (localp1.c < localp2.b)
                break label721;
              localp1.c -= localp2.c;
              break label721;
              paramList.remove(m);
            }
            if (localp1.c < localp2.b)
            {
              localp2.b = (-1 + localp2.b);
              localObject1 = null;
            }
            while (true)
            {
              Object localObject2;
              if (localp1.b <= localp2.b)
              {
                localp2.b = (1 + localp2.b);
                localObject2 = null;
              }
              while (true)
              {
                label966: paramList.set(m, localp1);
                if (localp2.c > 0)
                  paramList.set(k, localp2);
                while (true)
                {
                  if (localObject1 != null)
                    paramList.add(k, localObject1);
                  if (localObject2 == null)
                    break;
                  paramList.add(k, localObject2);
                  break;
                  if (localp1.c >= localp2.b + localp2.c)
                    break label1186;
                  localp2.c = (-1 + localp2.c);
                  localObject1 = this.a.a(2, localp1.b, 1);
                  break label938;
                  if (localp1.b >= localp2.b + localp2.c)
                    break label1180;
                  int n = localp2.b + localp2.c - localp1.b;
                  localObject2 = this.a.a(2, 1 + localp1.b, n);
                  localp2.c -= n;
                  break label966;
                  paramList.remove(k);
                  this.a.a(localp2);
                }
                return;
                localObject2 = null;
              }
              localObject1 = null;
            }
            i4 = 0;
            break label127;
          }
          localp3 = null;
        }
        i1 = 1;
        i2 = 0;
        continue;
        i1 = 0;
        i2 = 0;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.X
 * JD-Core Version:    0.6.0
 */