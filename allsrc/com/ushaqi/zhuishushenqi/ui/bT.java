package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.ushaqi.zhuishushenqi.util.e;

final class bT
  implements View.OnClickListener
{
  bT(SecretOpWebActivity paramSecretOpWebActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = ((EditText)this.a.findViewById(2131493194)).getText().toString().trim();
    if ((str.startsWith("http://")) || (str.startsWith("https://")))
    {
      Intent localIntent = AdWebViewActivity.a(this.a, "测试", str);
      this.a.startActivity(localIntent);
      return;
    }
    e.a(this.a, "请输入格式正确的url");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bT
 * JD-Core Version:    0.6.0
 */