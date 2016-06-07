package com.ushaqi.zhuishushenqi.ui;

import android.os.Bundle;
import com.ushaqi.zhuishushenqi.util.J;

public class UnimportantNotificationActivity extends BaseActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903139);
    b("通知");
  }

  public void onPause()
  {
    super.onPause();
    J.a(this).d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.UnimportantNotificationActivity
 * JD-Core Version:    0.6.0
 */