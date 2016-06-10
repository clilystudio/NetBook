package com.clilystudio.netbook.umeng.update;

import android.content.Context;
import com.clilystudio.netbook.umeng.update.util.DeltaUpdate;
import u.a.b;
import u.a.d;

public class n extends d
{
  private static final String c = n.class.getName();
  private Context a;
  private final String[] b = { "http://au.umeng.com/api/check_app_update", "http://au.umeng.co/api/check_app_update" };

  public n(Context paramContext)
  {
    this.a = paramContext;
  }

  public final UpdateResponse a()
  {
    String str = c;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(DeltaUpdate.a());
    b.c(str, String.format("is .so file ready: %b", arrayOfObject));
    q localq = new q(this.a);
    UpdateResponse localUpdateResponse = null;
    for (int i = 0; ; i++)
    {
      if (i >= 2);
      do
      {
        return localUpdateResponse;
        localq.a(this.b[i]);
        localUpdateResponse = (UpdateResponse)a(localq, UpdateResponse.class);
      }
      while (localUpdateResponse != null);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.update.n
 * JD-Core Version:    0.6.0
 */