package com.clilystudio.app.netbook.ui.user;

import android.os.Bundle;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.ui.BaseActivity;

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
    am_CommonUtils.j_setNotifyTime(this);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.MyMessageActivity
 * JD-Core Version:    0.6.2
 */