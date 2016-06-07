package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class cU
  implements View.OnClickListener
{
  cU(SettingWidget paramSettingWidget)
  {
  }

  public final void onClick(View paramView)
  {
    SettingWidget.b(this.a).e();
    SettingWidget.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cU
 * JD-Core Version:    0.6.0
 */