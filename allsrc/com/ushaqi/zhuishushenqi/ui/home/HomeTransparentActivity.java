package com.ushaqi.zhuishushenqi.ui.home;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;

public class HomeTransparentActivity extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903106);
    if (getIntent().getIntExtra("onThemeChange", 0) == 0)
    {
      findViewById(2131493134).setBackgroundResource(2130837644);
      return;
    }
    findViewById(2131493134).setBackgroundResource(2130837679);
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    new Handler().postDelayed(new Q(this), 500L);
    new Handler().postDelayed(new R(this), 1500L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.HomeTransparentActivity
 * JD-Core Version:    0.6.0
 */