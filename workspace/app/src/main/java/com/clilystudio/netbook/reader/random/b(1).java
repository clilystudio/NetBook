package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.MysteryBookList;
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
      com.clilystudio.netbook.api.b.a();
      MysteryBookList localMysteryBookList = com.clilystudio.netbook.api.b.b().h();
      return localMysteryBookList;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.b
 * JD-Core Version:    0.6.0
 */