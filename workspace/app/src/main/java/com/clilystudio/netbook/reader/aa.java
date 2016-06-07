package com.clilystudio.netbook.reader;

import android.os.Handler;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.reader.txt.U;

abstract class aa
  implements Runnable
{
  private boolean a;

  protected aa(Reader paramReader, boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  private void c()
  {
    Reader.a(this.b, Reader.l(this.b).getHost());
    Reader.a(this.b, Reader.l(this.b).getChapters());
    Reader.d(this.b).post(new ab(this));
  }

  public abstract void a();

  public abstract void b();

  public void run()
  {
    Reader.a(this.b, 0, Reader.Type.TOC);
    int j;
    if (Reader.f(this.b))
    {
      Reader.a(this.b, U.a(Reader.g(this.b)));
      j = 0;
      if (Reader.l(this.b) != null)
      {
        c();
        if ((!Reader.f(this.b)) && (j == 0))
          Reader.b(this.b, Reader.l(this.b));
        if (j != 0)
        {
          Reader.a(this.b, new ag(this.b));
          Reader.n(this.b).b(new String[0]);
        }
        label124: Reader.a(this.b, 1, Reader.Type.TOC);
        return;
      }
    }
    else
    {
      Reader.a(this.b, Reader.a(this.b, Reader.h(this.b), Reader.i(this.b), Reader.j(this.b)));
      Reader.a(this.b, Reader.k(this.b));
      if ((Reader.l(this.b) != null) && (!this.a))
        break label291;
    }
    label291: for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        Reader.a(this.b, Reader.m(this.b));
        j = 0;
        break;
      }
      j = 1;
      break;
      Reader.a(this.b, Reader.k(this.b));
      if (Reader.l(this.b) != null)
      {
        c();
        break label124;
      }
      Reader.d(this.b).post(new ac(this));
      break label124;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.aa
 * JD-Core Version:    0.6.0
 */