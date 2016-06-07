package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.I;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class d extends j
{
  boolean a = true;
  protected CRC32 b = new CRC32();

  public d()
  {
    super(new Inflater(true));
  }

  public final void a(y paramy, v paramv)
  {
    if (this.a)
    {
      I localI = new I(paramy);
      localI.a(10, new e(this, paramy, localI));
      return;
    }
    super.a(paramy, paramv);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.d
 * JD-Core Version:    0.6.0
 */