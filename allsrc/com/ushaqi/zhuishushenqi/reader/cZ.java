package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

final class cZ
  implements View.OnClickListener
{
  cZ(SettingWidget paramSettingWidget)
  {
  }

  public final void onClick(View paramView)
  {
    SettingWidget.d(this.a).setSelected(false);
    SettingWidget.e(this.a).setSelected(false);
    SettingWidget.f(this.a).setSelected(true);
    SettingWidget.b(this.a).a(3);
    SettingWidget.g(this.a).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cZ
 * JD-Core Version:    0.6.0
 */