package com.clilystudio.app.netbook.ui;

import android.widget.TabHost;
import com.clilystudio.app.netbook.widget.TabWidgetV2;

public abstract class BaseTabActivity extends BaseActivity
{
  protected TabHost a;

  protected final void a(int paramInt1, int paramInt2)
  {
    ((TabWidgetV2)this.a.getTabWidget()).a(paramInt1, paramInt2);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BaseTabActivity
 * JD-Core Version:    0.6.2
 */