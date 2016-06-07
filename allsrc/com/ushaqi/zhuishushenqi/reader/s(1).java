package com.ushaqi.zhuishushenqi.reader;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.Account;

final class s
  implements View.OnClickListener
{
  s(o paramo, CheckBox paramCheckBox)
  {
  }

  public final void onClick(View paramView)
  {
    b.a(o.a(this.b), "paying_page_purchase", com.ushaqi.zhuishushenqi.util.I.b);
    if (this.a.isChecked())
      b.a(o.a(this.b), "paying_page_auto_choose", com.ushaqi.zhuishushenqi.util.I.b);
    o.a(this.b, false);
    a.b(o.a(this.b), "auto_buy_chapter" + com.ushaqi.zhuishushenqi.util.I.a, this.a.isChecked());
    I localI = new I(this.b, o.a(this.b), "购买中...");
    String[] arrayOfString = new String[2];
    arrayOfString[0] = am.e().getToken();
    arrayOfString[1] = o.b(this.b).a().getId();
    localI.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.s
 * JD-Core Version:    0.6.0
 */