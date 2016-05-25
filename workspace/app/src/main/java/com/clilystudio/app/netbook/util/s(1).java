package com.clilystudio.app.netbook.util;

import android.content.Context;
import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.model.BookTopRoot;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.s
 * JD-Core Version:    0.6.2
 */