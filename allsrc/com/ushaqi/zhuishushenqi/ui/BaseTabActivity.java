package com.ushaqi.zhuishushenqi.ui;

import android.widget.TabHost;
import com.ushaqi.zhuishushenqi.widget.TabWidgetV2;

public abstract class BaseTabActivity extends BaseActivity
{
  protected TabHost a;

  protected final void a(int paramInt1, int paramInt2)
  {
    ((TabWidgetV2)this.a.getTabWidget()).a(paramInt1, paramInt2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BaseTabActivity
 * JD-Core Version:    0.6.0
 */