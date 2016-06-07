package cn.sharesdk.onekeyshare.theme.skyblue;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;

class FollowListPage$PRTHeader extends LinearLayout
{
  private FollowListPage.RotateImageView ivArrow;
  private ProgressBar pbRefreshing;
  private TextView tvHeader;

  public FollowListPage$PRTHeader(Context paramContext)
  {
    super(paramContext);
    setOrientation(1);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams1.gravity = 1;
    addView(localLinearLayout, localLayoutParams1);
    this.ivArrow = new FollowListPage.RotateImageView(paramContext);
    int i = a.d(paramContext, "ssdk_oks_ptr_ptr");
    if (i > 0)
      this.ivArrow.setImageResource(i);
    int j = a.a(paramContext, 32);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(j, j);
    localLayoutParams2.gravity = 16;
    localLinearLayout.addView(this.ivArrow, localLayoutParams2);
    this.pbRefreshing = new ProgressBar(paramContext);
    localLinearLayout.addView(this.pbRefreshing, localLayoutParams2);
    this.pbRefreshing.setVisibility(8);
    this.tvHeader = new TextView(getContext());
    this.tvHeader.setTextSize(1, 18.0F);
    this.tvHeader.setGravity(17);
    int k = a.a(getContext(), 10);
    this.tvHeader.setPadding(k, k, k, k);
    this.tvHeader.setTextColor(-16777216);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams3.gravity = 16;
    localLinearLayout.addView(this.tvHeader, localLayoutParams3);
  }

  public void onPullDown(int paramInt)
  {
    int i = 180;
    int m;
    if (paramInt > 100)
    {
      m = 180 * (paramInt - 100) / 20;
      if (m <= i)
        break label117;
    }
    while (true)
    {
      int n = 0;
      if (i < 0);
      while (true)
      {
        this.ivArrow.setRotation(n);
        if (paramInt < 100)
        {
          int k = a.e(getContext(), "pull_to_refresh");
          if (k > 0)
            this.tvHeader.setText(k);
        }
        int j;
        do
        {
          return;
          this.ivArrow.setRotation(0);
          break;
          j = a.e(getContext(), "release_to_refresh");
        }
        while (j <= 0);
        this.tvHeader.setText(j);
        return;
        n = i;
      }
      label117: i = m;
    }
  }

  public void onRequest()
  {
    this.ivArrow.setVisibility(8);
    this.pbRefreshing.setVisibility(0);
    int i = a.e(getContext(), "refreshing");
    if (i > 0)
      this.tvHeader.setText(i);
  }

  public void reverse()
  {
    this.pbRefreshing.setVisibility(8);
    this.ivArrow.setRotation(180);
    this.ivArrow.setVisibility(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.FollowListPage.PRTHeader
 * JD-Core Version:    0.6.0
 */