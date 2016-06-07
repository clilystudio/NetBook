package com.ushaqi.zhuishushenqi.reader.random;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.model.MysteryBookList;
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
      com.ushaqi.zhuishushenqi.api.b.a();
      MysteryBookList localMysteryBookList = com.ushaqi.zhuishushenqi.api.b.b().h();
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.b
 * JD-Core Version:    0.6.0
 */