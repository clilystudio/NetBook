package com.ushaqi.zhuishushenqi.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.ui.home.HomeActivity;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;
import java.util.ArrayList;

public class IntroActivity extends Activity
  implements ViewPager.OnPageChangeListener, View.OnClickListener
{
  private static final int[] f = { 2130837667, 2130837668 };
  private ViewPager a;
  private bc b;
  private Button c;
  private Button d;
  private ArrayList<View> e;
  private ImageView[] g;
  private int h;
  private boolean i = false;

  private void a()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    for (int j = 0; j < 2; j++)
    {
      ImageView localImageView = new ImageView(this);
      localImageView.setLayoutParams(localLayoutParams);
      localImageView.setImageResource(f[j]);
      localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      this.e.add(localImageView);
    }
    this.a.setAdapter(this.b);
    this.a.addOnPageChangeListener(this);
    b();
  }

  private static void a(ImageView paramImageView, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramImageView.setImageResource(2130837927);
      return;
    }
    paramImageView.setImageResource(2130837926);
  }

  private void b()
  {
    LinearLayout localLinearLayout = (LinearLayout)findViewById(2131493997);
    this.g = new ImageView[2];
    for (int j = 0; j < 2; j++)
    {
      this.g[j] = ((ImageView)localLinearLayout.getChildAt(j));
      a(this.g[j], false);
      this.g[j].setTag(Integer.valueOf(j));
    }
    this.h = 0;
    a(this.g[this.h], true);
  }

  private void c()
  {
    startActivity(new Intent(this, HomeActivity.class));
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131494001:
      startActivity(AuthLoginActivity.a(this));
      b.a(this, "intro_quick_login");
      return;
    case 2131494002:
    }
    c();
    b.a(this, "intro_entry_app");
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903398);
    this.e = new ArrayList();
    this.a = ((ViewPager)findViewById(2131493996));
    this.b = new bc(this);
    this.c = ((Button)findViewById(2131494001));
    this.c.setOnClickListener(this);
    this.d = ((Button)findViewById(2131494002));
    this.d.setOnClickListener(this);
    a();
    b.a(this, "intro_show_count");
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void onPageSelected(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1) || (this.h == paramInt))
      return;
    a(this.g[paramInt], true);
    a(this.g[this.h], false);
    this.h = paramInt;
    if (this.h == 0)
    {
      this.d.setTextColor(getResources().getColor(2131427440));
      this.c.setTextColor(getResources().getColor(2131427440));
      return;
    }
    this.d.setTextColor(getResources().getColor(2131427441));
    this.c.setTextColor(getResources().getColor(2131427441));
  }

  protected void onResume()
  {
    super.onResume();
    if (this.i)
      c();
  }

  protected void onStop()
  {
    super.onStop();
    this.i = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.IntroActivity
 * JD-Core Version:    0.6.0
 */