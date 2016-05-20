package com.clilystudio.app.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;
import com.clilystudio.app.netbook.a.c;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.ChapterKeysRoot;
import com.clilystudio.app.netbook.util.am_CommonUtils;

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
        ChapterKeysRoot localChapterKeysRoot = b.b().g(am_CommonUtils.e().getToken(), this.a);
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.D
 * JD-Core Version:    0.6.2
 */