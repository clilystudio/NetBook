package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;
import com.umeng.a.b;

public class BaseReadSlmActivity extends SlidingFragmentActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setBehindContentView(getLayoutInflater().inflate(2130903327, null));
  }

  public void onPause()
  {
    super.onPause();
    b.a(this);
  }

  public void onResume()
  {
    super.onResume();
    b.b(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.BaseReadSlmActivity
 * JD-Core Version:    0.6.0
 */