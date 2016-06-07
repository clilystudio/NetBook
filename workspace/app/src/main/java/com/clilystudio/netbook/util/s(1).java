package com.clilystudio.netbook.util;

import android.content.Context;
import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookTopRoot;
import java.io.IOException;

public final class s extends e<Void, Void, BookTopRoot>
{
  private Context a;

  public s(Context paramContext)
  {
    this.a = paramContext;
  }

  private BookTopRoot a()
  {
    try
    {
      BookTopRoot localBookTopRoot = c().u();
      return localBookTopRoot;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.s
 * JD-Core Version:    0.6.0
 */