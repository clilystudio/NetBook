package com.ushaqi.zhuishushenqi.ui.post;

import android.app.AlertDialog;
import android.os.Bundle;
import android.widget.EditText;
import cn.sharesdk.framework.ShareSDK;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;
import uk.me.lewisdeane.ldialogs.h;

public class AddBookHelpActivity extends BaseActivity
{
  private EditText a;
  private EditText b;

  public void onBackPressed()
  {
    int i = 1;
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    if (!a.Q(str1));
    while (i != 0)
    {
      h localh = new h(this);
      localh.d = "提示";
      localh.e = "离开将丢失已输入的内容，确定离开？";
      localh.b("留在此页", new l(this));
      localh.a("离开", new m(this));
      localh.a().show();
      return;
      if (!a.Q(str2))
        continue;
      i = 0;
    }
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    a(2131034286, 2131034448, new i(this));
    ShareSDK.initSDK(this);
    this.a = ((EditText)findViewById(2131493065));
    this.b = ((EditText)findViewById(2131493066));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.AddBookHelpActivity
 * JD-Core Version:    0.6.0
 */