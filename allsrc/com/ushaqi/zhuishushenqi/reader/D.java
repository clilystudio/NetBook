package com.ushaqi.zhuishushenqi.reader;

import android.app.Activity;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.ChapterKeysRoot;

final class D extends c<Void, ChapterKeysRoot>
{
  private String a;
  private String b;

  public D(o paramo, Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity, paramString1);
    this.b = paramString2;
  }

  private ChapterKeysRoot a()
  {
    try
    {
      if ((o.a(this.c) instanceof ReaderActivity))
      {
        this.a = ((ReaderActivity)o.a(this.c)).l();
        b.a();
        ChapterKeysRoot localChapterKeysRoot = b.b().g(am.e().getToken(), this.a);
        return localChapterKeysRoot;
      }
      return null;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.D
 * JD-Core Version:    0.6.0
 */