package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class at
  implements AdapterView.OnItemClickListener
{
  at(BookCategoryListActivity paramBookCategoryListActivity, String[] paramArrayOfString)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    BookCategoryListActivity.a(this.b, this.a[paramInt]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.at
 * JD-Core Version:    0.6.0
 */