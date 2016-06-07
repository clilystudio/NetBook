package com.ushaqi.zhuishushenqi.util;

import android.app.Activity;
import android.content.res.Resources;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.model.Account;
import uk.me.lewisdeane.ldialogs.h;

public final class N
{
  private Activity a;

  public N(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public final void a(String paramString)
  {
    Account localAccount = am.a(this.a);
    if (localAccount != null)
      a(localAccount.getToken(), paramString);
  }

  public final void a(String paramString1, String paramString2)
  {
    new P(this, 0).b(new String[] { paramString1, paramString2 });
  }

  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    String[] arrayOfString = this.a.getResources().getStringArray(2131361802);
    h localh = new h(this.a);
    localh.d = "举报";
    localh.a(arrayOfString, new O(this, paramBoolean, paramString2, paramString1)).b();
  }

  public final void b(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.N
 * JD-Core Version:    0.6.0
 */