package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;

final class cY
  implements View.OnClickListener
{
  cY(SettingWidget paramSettingWidget)
  {
  }

  public final void onClick(View paramView)
  {
    SettingWidget.d(this.a).setSelected(false);
    SettingWidget.e(this.a).setSelected(true);
    SettingWidget.f(this.a).setSelected(false);
    SettingWidget.b(this.a).a(2);
    SettingWidget.g(this.a).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cY
 * JD-Core Version:    0.6.0
 */