package com.clilystudio.app.netbook.ui.feed;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.ui.BaseActivity;

public class FeedSettingActivity extends BaseActivity
{
  private TextView a;
  private int b;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903100);
    b(2131034384);
    if (paramBundle != null);
    for (this.b = paramBundle.getInt("savedCurrentCount", 50); ; this.b = a.a(this, "feed_chapter_count", 50))
    {
      View localView = findViewById(2131493128);
      this.a = ((TextView)findViewById(2131493130));
      TextView localTextView = this.a;
      String str = getString(2131034327);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.b);
      localTextView.setText(String.format(str, arrayOfObject));
      localView.setOnClickListener(new h(this));
      return;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("savedCurrentCount", this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.FeedSettingActivity
 * JD-Core Version:    0.6.2
 */