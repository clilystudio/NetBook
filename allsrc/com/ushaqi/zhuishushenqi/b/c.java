package com.ushaqi.zhuishushenqi.b;

import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.ui.SearchActivity;
import com.ushaqi.zhuishushenqi.ui.bf;

public final class c extends b
{
  private bf b;

  public c(Context paramContext, bf parambf)
  {
    super(paramContext);
    this.b = parambf;
  }

  public final Intent a()
  {
    Intent localIntent = SearchActivity.a(this.a, 2);
    localIntent.putExtra("keyword", this.b.c());
    return localIntent;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.b.c
 * JD-Core Version:    0.6.0
 */