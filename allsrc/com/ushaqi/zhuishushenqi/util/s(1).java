package com.ushaqi.zhuishushenqi.util;

import android.content.Context;
import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.model.BookTopRoot;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.s
 * JD-Core Version:    0.6.0
 */