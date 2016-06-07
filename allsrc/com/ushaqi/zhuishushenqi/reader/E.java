package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChapterSingleKey;
import java.io.IOException;

final class E extends c<String, ChapterSingleKey>
{
  public E(o paramo, Activity paramActivity, int paramInt, boolean paramBoolean)
  {
    super(paramActivity, 2131034218, paramBoolean);
  }

  private static ChapterSingleKey a(String[] paramArrayOfString)
  {
    try
    {
      b.a();
      ChapterSingleKey localChapterSingleKey = b.b().f(paramArrayOfString[0], am.e().getToken());
      return localChapterSingleKey;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.E
 * JD-Core Version:    0.6.0
 */