package org.mozilla.universalchardet;

import android.support.design.widget.K;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.CharsetProber.ProbingState;
import org.mozilla.universalchardet.prober.e;
import org.mozilla.universalchardet.prober.h;
import org.mozilla.universalchardet.prober.i;
import org.mozilla.universalchardet.prober.j;

public final class UniversalDetector
{
  private UniversalDetector.InputState a;
  private boolean b;
  private boolean c;
  private boolean d;
  private byte e;
  private String f;
  private CharsetProber[] g = new CharsetProber[3];
  private CharsetProber h = null;
  private K i = null;

  public UniversalDetector(K paramK)
  {
    for (int j = 0; j < this.g.length; j++)
      this.g[j] = null;
    d();
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.b);
    while (true)
    {
      return;
      if (paramInt2 > 0)
        this.d = true;
      if (this.c)
      {
        this.c = false;
        if (paramInt2 > 3)
        {
          int i1 = 0xFF & paramArrayOfByte[0];
          int i2 = 0xFF & paramArrayOfByte[1];
          int i3 = 0xFF & paramArrayOfByte[2];
          int i4 = 0xFF & paramArrayOfByte[3];
          switch (i1)
          {
          default:
          case 239:
          case 254:
          case 0:
          case 255:
          }
          while (this.f != null)
          {
            this.b = true;
            return;
            if ((i2 != 187) || (i3 != 191))
              continue;
            this.f = a.u;
            continue;
            if ((i2 == 255) && (i3 == 0) && (i4 == 0))
            {
              this.f = a.A;
              continue;
            }
            if (i2 != 255)
              continue;
            this.f = a.v;
            continue;
            if ((i2 == 0) && (i3 == 254) && (i4 == 255))
            {
              this.f = a.x;
              continue;
            }
            if ((i2 != 0) || (i3 != 255) || (i4 != 254))
              continue;
            this.f = a.B;
            continue;
            if ((i2 == 254) && (i3 == 0) && (i4 == 0))
            {
              this.f = a.y;
              continue;
            }
            if (i2 != 254)
              continue;
            this.f = a.w;
          }
        }
      }
      int j = paramInt2 + 0;
      int k = 0;
      if (k < j)
      {
        int n = 0xFF & paramArrayOfByte[k];
        if (((n & 0x80) != 0) && (n != 160))
          if (this.a != UniversalDetector.InputState.HIGHBYTE)
          {
            this.a = UniversalDetector.InputState.HIGHBYTE;
            if (this.h != null)
              this.h = null;
            if (this.g[0] == null)
              this.g[0] = new i();
            if (this.g[1] == null)
              this.g[1] = new j();
            if (this.g[2] == null)
              this.g[2] = new h();
          }
        while (true)
        {
          k++;
          break;
          if ((this.a == UniversalDetector.InputState.PURE_ASCII) && ((n == 27) || ((n == 123) && (this.e == 126))))
            this.a = UniversalDetector.InputState.ESC_ASCII;
          this.e = paramArrayOfByte[k];
        }
      }
      if (this.a == UniversalDetector.InputState.ESC_ASCII)
      {
        if (this.h == null)
          this.h = new e();
        if (this.h.a(paramArrayOfByte, 0, paramInt2) != CharsetProber.ProbingState.FOUND_IT)
          continue;
        this.b = true;
        this.f = this.h.a();
        return;
      }
      if (this.a != UniversalDetector.InputState.HIGHBYTE)
        continue;
      for (int m = 0; m < this.g.length; m++)
      {
        if (this.g[m].a(paramArrayOfByte, 0, paramInt2) != CharsetProber.ProbingState.FOUND_IT)
          continue;
        this.b = true;
        this.f = this.g[m].a();
        return;
      }
    }
  }

  public final boolean a()
  {
    return this.b;
  }

  public final String b()
  {
    return this.f;
  }

  public final void c()
  {
    int j = 0;
    if (!this.d);
    while (true)
    {
      return;
      if (this.f != null)
      {
        this.b = true;
        return;
      }
      if (this.a != UniversalDetector.InputState.HIGHBYTE)
        break;
      float f1 = 0.0F;
      int k = 0;
      while (j < this.g.length)
      {
        float f2 = this.g[j].b();
        if (f2 > f1)
        {
          k = j;
          f1 = f2;
        }
        j++;
      }
      if (f1 <= 0.2F)
        continue;
      this.f = this.g[k].a();
      return;
    }
  }

  public final void d()
  {
    this.b = false;
    this.c = true;
    this.f = null;
    this.d = false;
    this.a = UniversalDetector.InputState.PURE_ASCII;
    this.e = 0;
    CharsetProber localCharsetProber = this.h;
    int j = 0;
    if (localCharsetProber != null)
      this.h.d();
    while (j < this.g.length)
    {
      if (this.g[j] != null)
        this.g[j].d();
      j++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     org.mozilla.universalchardet.UniversalDetector
 * JD-Core Version:    0.6.0
 */