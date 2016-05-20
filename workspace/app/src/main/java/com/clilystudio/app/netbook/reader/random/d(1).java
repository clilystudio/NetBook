package com.clilystudio.app.netbook.reader.random;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.umeng.a.b;

final class d
  implements View.OnClickListener
{
  d(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (ReaderRandomActivity.a(this.a))
    {
      ReaderRandomActivity.b(this.a);
      ReaderRandomActivity.a(this.a, false);
      ReaderRandomActivity.c(this.a).setText("添加到书架");
      ReaderRandomActivity.d(this.a).setBackgroundResource(2130837685);
      ReaderRandomActivity.c(this.a).setCompoundDrawablesWithIntrinsicBounds(2130838129, 0, 0, 0);
      return;
    }
    ReaderRandomActivity.e(this.a);
    ReaderRandomActivity.a(this.a, true);
    ReaderRandomActivity.d(this.a).setBackgroundResource(2130837650);
    ReaderRandomActivity.c(this.a).setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
    ReaderRandomActivity.c(this.a).setText("已添加");
    b.a(this.a, "random_rader_add_shelf");
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.d
 * JD-Core Version:    0.6.2
 */