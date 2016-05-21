package com.clilystudio.app.netbook.ui.home;

import android.os.Bundle;
import android.support.design.widget.am;
import com.clilystudio.app.netbook.ui.BaseActivity;

public class HomeParentActivity extends BaseActivity
{
  private boolean b()
  {
    try
    {
      int i = Integer.parseInt(com.umeng.a.b.b(this, "force_update_until_version"));
      int j = am_CommonUtils.1this);
      boolean bool = false;
      if (i > j)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.umeng.update.b.a(this);
    if (b())
      com.umeng.update.b.a(new k(this));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.HomeParentActivity
 * JD-Core Version:    0.6.2
 */