package com.clilystudio.app.netbook.ui.ugcbook;

import android.widget.Filter;
import com.clilystudio.app.netbook.widget.ax;
import java.util.Calendar;

final class s
  implements ax
{
  s(UGCGuideAddBookActivity paramUGCGuideAddBookActivity, UGCGuideAddBookActivity.SearchPromptAdapter paramSearchPromptAdapter)
  {
  }

  public final void a()
  {
    UGCGuideAddBookActivity.a(this.b, true);
    String str = String.valueOf(Calendar.getInstance().getTimeInMillis());
    this.a.getFilter().filter(str);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.s
 * JD-Core Version:    0.6.2
 */