package com.clilystudio.app.netbook.b;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.ui.SearchActivity;
import com.clilystudio.app.netbook.ui.bf;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.b.c
 * JD-Core Version:    0.6.2
 */