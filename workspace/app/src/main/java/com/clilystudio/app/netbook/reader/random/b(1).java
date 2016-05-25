package com.clilystudio.app.netbook.reader.random;

import android.app.Activity;
import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.model.MysteryBookList;
import java.io.IOException;

public final class b extends c<String, MysteryBookList>
{
  private final boolean a = true;

  public b(Activity paramActivity, int paramInt, boolean paramBoolean)
  {
    super(paramActivity, 2131034218);
  }

  private static MysteryBookList a()
  {
    try
    {
      com.clilystudio.app.netbook.api.b.a();
      MysteryBookList localMysteryBookList = com.clilystudio.app.netbook.api.b.b().h();
      return localMysteryBookList;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.b
 * JD-Core Version:    0.6.2
 */