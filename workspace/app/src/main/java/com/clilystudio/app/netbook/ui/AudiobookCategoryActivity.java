package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.util.as;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import java.util.HashMap;
import java.util.Map;

public class AudiobookCategoryActivity extends BaseActivity
{
  private CommonRequest a;
  private View b;
  private View c;
  private View e;

  public static Intent a(Context paramContext)
  {
    return new d().a(paramContext, AudiobookCategoryActivity.class).a();
  }

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.e.setVisibility(0);
      this.b.setVisibility(8);
      this.c.setVisibility(8);
      return;
    case 0:
      this.e.setVisibility(8);
      this.b.setVisibility(0);
      this.c.setVisibility(8);
      return;
    case 2:
    }
    this.e.setVisibility(8);
    this.b.setVisibility(8);
    this.c.setVisibility(0);
  }

  private void b()
  {
    a(0);
    HashMap localHashMap = new HashMap();
    localHashMap.put("category_id", "3");
    localHashMap.put("type", "0");
    CommonRequest.getTags(localHashMap, new u(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    b(getResources().getString(2131034314));
    as.a();
    this.a = as.b();
    this.e = findViewById(2131493078);
    this.b = findViewById(2131493081);
    this.c = findViewById(2131493082);
    this.c.setOnClickListener(new q(this));
    b();
    ((RelativeLayout)findViewById(2131493083)).setBackgroundResource(am_CommonUtils.b(this, 2130771970));
    TextView localTextView = (TextView)findViewById(2131493084);
    SpannableString localSpannableString = new SpannableString(getResources().getString(2131034591));
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131427543)), 0, 5, 33);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131427340)), 5, 11, 33);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131427543)), 11, 13, 33);
    localTextView.setText(localSpannableString);
    localTextView.setOnClickListener(new r(this));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AudiobookCategoryActivity
 * JD-Core Version:    0.6.2
 */