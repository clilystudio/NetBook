package cn.sharesdk.framework;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;

public class TitleLayout extends LinearLayout
{
  private ImageView btnBack;
  private TextView btnRight;
  private TextView tvTitle;

  public TitleLayout(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
  }

  public TitleLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }

  private void init(Context paramContext)
  {
    this.btnBack = new ImageView(paramContext);
    this.btnBack.setBackgroundDrawable(null);
    int i = a.d(paramContext, "ssdk_back_arr");
    if (i > 0)
      this.btnBack.setImageResource(i);
    this.btnBack.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    int j = a.a(paramContext, 48);
    this.btnBack.setLayoutParams(new LinearLayout.LayoutParams(j, -1));
    addView(this.btnBack);
    ImageView localImageView1 = new ImageView(paramContext);
    int k = a.a(paramContext, 2);
    int m = a.d(paramContext, "ssdk_title_div");
    if (m > 0)
      localImageView1.setImageResource(m);
    localImageView1.setLayoutParams(new LinearLayout.LayoutParams(k, -1));
    addView(localImageView1);
    this.tvTitle = new TextView(paramContext);
    int n = a.a(paramContext, 23);
    this.tvTitle.setPadding(n, 0, n, 0);
    this.tvTitle.setSingleLine();
    this.tvTitle.setTextColor(-1);
    this.tvTitle.setTextSize(1, 18.0F);
    this.tvTitle.setTypeface(Typeface.DEFAULT_BOLD);
    this.tvTitle.setGravity(16);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    localLayoutParams.weight = 1.0F;
    this.tvTitle.setLayoutParams(localLayoutParams);
    addView(this.tvTitle);
    ImageView localImageView2 = new ImageView(paramContext);
    int i1 = a.d(paramContext, "ssdk_title_div");
    if (i1 > 0)
      localImageView2.setImageResource(i1);
    localImageView2.setLayoutParams(new LinearLayout.LayoutParams(k, -1));
    addView(localImageView2);
    this.btnRight = new n(this, paramContext, localImageView2);
    this.btnRight.setVisibility(4);
    this.btnRight.setBackgroundDrawable(null);
    int i2 = a.a(paramContext, 50);
    this.btnRight.setMinWidth(i2);
    this.btnRight.setTextColor(-1);
    this.btnRight.setTextSize(1, 12.0F);
    this.btnRight.setGravity(17);
    this.btnRight.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    addView(this.btnRight);
  }

  public ImageView getBtnBack()
  {
    return this.btnBack;
  }

  public TextView getBtnRight()
  {
    return this.btnRight;
  }

  public TextView getTvTitle()
  {
    return this.tvTitle;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.TitleLayout
 * JD-Core Version:    0.6.0
 */