package com.clilystudio.app.netbook.reader.random;

import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;

final class o
  implements View.OnClickListener
{
  o(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ReaderRandomActivity.f(this.a);
    b.a(this.a, "random_reader_change_book");
    b.a(this.a, "random_reader_book_chapter_count", null, ReaderRandomActivity.g(this.a));
    ReaderRandomActivity.a(this.a, 1);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.o
 * JD-Core Version:    0.6.2
 */