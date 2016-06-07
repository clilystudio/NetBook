package com.clilystudio.netbook.ui;

import android.widget.Filter;
import com.clilystudio.netbook.widget.ax;
import java.util.Calendar;

final class bD
  implements ax
{
  bD(SearchActivity paramSearchActivity, SearchActivity.SearchPromptAdapter paramSearchPromptAdapter)
  {
  }

  public final void a()
  {
    String str = String.valueOf(Calendar.getInstance().getTimeInMillis());
    this.a.getFilter().filter(str);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bD
 * JD-Core Version:    0.6.0
 */