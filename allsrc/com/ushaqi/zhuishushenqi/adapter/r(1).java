package com.ushaqi.zhuishushenqi.adapter;

import android.app.Activity;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.db.BookDlRecord;
import com.ushaqi.zhuishushenqi.event.I;
import com.ushaqi.zhuishushenqi.event.d;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.reader.dl.a;
import com.ushaqi.zhuishushenqi.widget.y;

final class r
  implements y
{
  private String a;

  public r(HomeShelfAdapter paramHomeShelfAdapter, String paramString)
  {
    this.a = paramString;
  }

  public final void a()
  {
    String str = this.a;
    i.a().c(new d(str, 3));
  }

  public final void b()
  {
    Activity localActivity = (Activity)HomeShelfAdapter.c(this.b);
    String str = this.a;
    new a(localActivity).a(str, 0, 0);
  }

  public final void c()
  {
    BookDlRecord localBookDlRecord = BookDlRecord.get(this.a);
    if (localBookDlRecord != null)
    {
      localBookDlRecord.setStatus(3);
      localBookDlRecord.save();
      i.a().c(new I());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.r
 * JD-Core Version:    0.6.0
 */