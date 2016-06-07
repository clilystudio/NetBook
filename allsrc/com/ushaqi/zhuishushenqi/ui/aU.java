package com.ushaqi.zhuishushenqi.ui;

import android.os.AsyncTask.Status;
import android.view.View;
import com.ushaqi.zhuishushenqi.widget.av;

final class aU
  implements av
{
  aU(BookTagListActivity paramBookTagListActivity)
  {
  }

  public final void a()
  {
    if ((BookTagListActivity.g(this.a) == null) || (BookTagListActivity.g(this.a).getStatus() == AsyncTask.Status.FINISHED))
    {
      BookTagListActivity.c(this.a).setVisibility(0);
      BookTagListActivity.a(this.a, new aW(this.a, 0));
      BookTagListActivity.g(this.a).b(new String[0]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.aU
 * JD-Core Version:    0.6.0
 */