package com.ushaqi.zhuishushenqi.ui.home;

import android.os.Bundle;
import android.support.design.widget.am;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class HomeParentActivity extends BaseActivity
{
  private boolean b()
  {
    try
    {
      int i = Integer.parseInt(com.umeng.a.b.b(this, "force_update_until_version"));
      int j = am.f(this);
      int k = 0;
      if (i > j)
        k = 1;
      return k;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.HomeParentActivity
 * JD-Core Version:    0.6.0
 */