package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Bundle;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class MyMessageActivity extends BaseActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903115);
    b("我的消息");
  }

  public void onPause()
  {
    super.onPause();
    am.j(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.MyMessageActivity
 * JD-Core Version:    0.6.0
 */