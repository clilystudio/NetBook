package com.ushaqi.zhuishushenqi.ui.feed;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.n;

final class g
  implements View.OnClickListener
{
  g(f paramf, TextView paramTextView, BookReadRecord paramBookReadRecord)
  {
  }

  public final void onClick(View paramView)
  {
    f.a(this.c, this.a);
    this.b.setFeeding(false);
    this.b.setFeedFat(false);
    BookReadRecord.addAccountInfo(this.b);
    this.b.save();
    i.a().c(new n(this.b.getBookId()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.feed.g
 * JD-Core Version:    0.6.0
 */