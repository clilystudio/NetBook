package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import cn.sharesdk.onekeyshare.PlatformListFakeActivity;
import com.arcsoft.hpay100.a.a;
import java.util.ArrayList;

public class PlatformListPage extends PlatformListFakeActivity
  implements View.OnClickListener
{
  private Animation animHide;
  private Animation animShow;
  private Button btnCancel;
  private boolean finishing;
  private FrameLayout flPage;
  private PlatformGridView grid;
  private LinearLayout llPage;

  private void initAnim()
  {
    this.animShow = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
    this.animShow.setDuration(300L);
    this.animHide = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 1.0F);
    this.animHide.setDuration(300L);
  }

  private void initPageView()
  {
    this.flPage = new FrameLayout(getContext());
    this.flPage.setOnClickListener(this);
    this.flPage.setBackgroundDrawable(new ColorDrawable(1426063360));
    this.llPage = new PlatformListPage.1(this, getContext());
    this.llPage.setOrientation(1);
    this.llPage.setBackgroundDrawable(new ColorDrawable(-1));
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    localLayoutParams.gravity = 80;
    this.llPage.setLayoutParams(localLayoutParams);
    this.flPage.addView(this.llPage);
    this.grid = new PlatformGridView(getContext());
    this.grid.setEditPageBackground(getBackgroundView());
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, -2);
    this.grid.setLayoutParams(localLayoutParams1);
    this.llPage.addView(this.grid);
    this.btnCancel = new Button(getContext());
    this.btnCancel.setTextColor(-12950017);
    this.btnCancel.setTextSize(1, 20.0F);
    int i = a.e(getContext(), "cancel");
    if (i > 0)
      this.btnCancel.setText(i);
    this.btnCancel.setPadding(0, 0, 0, a.a(getContext(), 5));
    int j = a.d(getContext(), "classic_platform_corners_bg");
    if (j > 0)
      this.btnCancel.setBackgroundResource(j);
    while (true)
    {
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-1, a.a(getContext(), 45));
      int k = a.a(getContext(), 10);
      localLayoutParams2.setMargins(k, k, k, k);
      this.btnCancel.setLayoutParams(localLayoutParams2);
      this.llPage.addView(this.btnCancel);
      return;
      this.btnCancel.setBackgroundDrawable(new ColorDrawable(-1));
    }
  }

  public void onClick(View paramView)
  {
    if ((paramView.equals(this.flPage)) || (paramView.equals(this.btnCancel)))
    {
      setCanceled(true);
      finish();
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.grid != null)
      this.grid.onConfigurationChanged();
  }

  public void onCreate()
  {
    super.onCreate();
    this.finishing = false;
    initPageView();
    initAnim();
    this.activity.setContentView(this.flPage);
    this.grid.setData(this.shareParamsMap, this.silent);
    this.grid.setHiddenPlatforms(this.hiddenPlatforms);
    this.grid.setCustomerLogos(this.customerLogos);
    this.grid.setParent(this);
    this.btnCancel.setOnClickListener(this);
    this.llPage.clearAnimation();
    this.llPage.startAnimation(this.animShow);
  }

  public boolean onFinish()
  {
    if (this.finishing)
      return super.onFinish();
    if (this.animHide == null)
    {
      this.finishing = true;
      return false;
    }
    this.finishing = true;
    this.animHide.setAnimationListener(new PlatformListPage.2(this));
    this.llPage.clearAnimation();
    this.llPage.startAnimation(this.animHide);
    return true;
  }

  public void onPlatformIconClick(View paramView, ArrayList<Object> paramArrayList)
  {
    onShareButtonClick(paramView, paramArrayList);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.PlatformListPage
 * JD-Core Version:    0.6.0
 */