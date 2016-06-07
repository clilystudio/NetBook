package com.clilystudio.netbook.ui.feed;

import android.os.Bundle;
import android.widget.Button;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.ui.BaseActivity;

public class FeedIntroActivity extends BaseActivity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903098);
    b(2131034381);
    ((Button)findViewById(2131493126)).setOnClickListener(new d(this));
  }

  public void onPause()
  {
    super.onPause();
    a.b(this, "feed_intro", false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.feed.FeedIntroActivity
 * JD-Core Version:    0.6.0
 */