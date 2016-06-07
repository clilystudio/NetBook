package com.ushaqi.zhuishushenqi.reader;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.arcsoft.hpay100.a.a;

public class BaseReadActivity extends FragmentActivity
{
  protected com.ushaqi.zhuishushenqi.api.b a = com.ushaqi.zhuishushenqi.api.b.a();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (a.a(this, "customer_night_theme", false))
    {
      setTheme(2131165359);
      return;
    }
    setTheme(2131165358);
  }

  public void onPause()
  {
    super.onPause();
    com.umeng.a.b.a(this);
  }

  public void onResume()
  {
    super.onResume();
    com.umeng.a.b.b(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.BaseReadActivity
 * JD-Core Version:    0.6.0
 */