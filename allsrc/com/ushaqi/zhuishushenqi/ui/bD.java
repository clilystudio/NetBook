package com.ushaqi.zhuishushenqi.ui;

import android.widget.Filter;
import com.ushaqi.zhuishushenqi.widget.ax;
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bD
 * JD-Core Version:    0.6.0
 */