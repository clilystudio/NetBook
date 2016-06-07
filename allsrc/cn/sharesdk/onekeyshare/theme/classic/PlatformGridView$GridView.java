package cn.sharesdk.onekeyshare.theme.classic;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.onekeyshare.CustomerLogo;
import com.arcsoft.hpay100.a.a;

class PlatformGridView$GridView extends LinearLayout
{
  private Object[] beans;
  private View.OnClickListener callback;
  private int lines;
  private PlatformGridView.PlatformAdapter platformAdapter;

  public PlatformGridView$GridView(PlatformGridView.PlatformAdapter paramPlatformAdapter)
  {
    super(PlatformGridView.PlatformAdapter.access$800(paramPlatformAdapter).getContext());
    this.platformAdapter = paramPlatformAdapter;
    this.callback = PlatformGridView.PlatformAdapter.access$900(paramPlatformAdapter);
  }

  private Bitmap getIcon(Platform paramPlatform)
  {
    if (paramPlatform == null);
    do
      return null;
    while (paramPlatform.getName() == null);
    String str = "logo_" + paramPlatform.getName();
    int i = a.d(getContext(), str.toLowerCase());
    return BitmapFactory.decodeResource(getResources(), i);
  }

  private String getName(Platform paramPlatform)
  {
    if (paramPlatform == null)
      return "";
    if (paramPlatform.getName() == null)
      return "";
    int i = a.e(getContext(), paramPlatform.getName().toLowerCase());
    if (i > 0)
      return getContext().getString(i);
    return null;
  }

  private LinearLayout getView(int paramInt, View.OnClickListener paramOnClickListener, Context paramContext)
  {
    Bitmap localBitmap2;
    String str;
    if ((this.beans[paramInt] instanceof Platform))
    {
      localBitmap2 = getIcon((Platform)this.beans[paramInt]);
      str = getName((Platform)this.beans[paramInt]);
    }
    Bitmap localBitmap1;
    for (Object localObject = localBitmap2; ; localObject = localBitmap1)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      ImageView localImageView = new ImageView(paramContext);
      int i = a.a(paramContext, 5);
      localImageView.setPadding(i, i, i, i);
      localImageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams1.setMargins(i, i, i, i);
      localLayoutParams1.gravity = 1;
      localImageView.setLayoutParams(localLayoutParams1);
      localImageView.setImageBitmap((Bitmap)localObject);
      localLinearLayout.addView(localImageView);
      TextView localTextView = new TextView(paramContext);
      localTextView.setTextColor(-16777216);
      localTextView.setTextSize(1, 14.0F);
      localTextView.setSingleLine();
      localTextView.setIncludeFontPadding(false);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams2.gravity = 1;
      localLayoutParams2.weight = 1.0F;
      localLayoutParams2.setMargins(i, 0, i, i);
      localTextView.setLayoutParams(localLayoutParams2);
      localTextView.setText(str);
      localLinearLayout.addView(localTextView);
      localLinearLayout.setOnClickListener(paramOnClickListener);
      return localLinearLayout;
      localBitmap1 = ((CustomerLogo)this.beans[paramInt]).enableLogo;
      str = ((CustomerLogo)this.beans[paramInt]).label;
    }
  }

  private void init()
  {
    int i = a.a(getContext(), 5);
    setPadding(0, i, 0, i);
    setOrientation(1);
    int j;
    int k;
    int m;
    LinearLayout.LayoutParams localLayoutParams;
    if (this.beans == null)
    {
      j = 0;
      k = PlatformGridView.access$400(PlatformGridView.PlatformAdapter.access$800(this.platformAdapter));
      m = j / k;
      if (j % k > 0)
        m++;
      localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      localLayoutParams.weight = 1.0F;
    }
    for (int n = 0; ; n++)
    {
      if (n >= this.lines)
        return;
      LinearLayout localLinearLayout1 = new LinearLayout(getContext());
      localLinearLayout1.setLayoutParams(localLayoutParams);
      localLinearLayout1.setPadding(i, 0, i, 0);
      addView(localLinearLayout1);
      if (n >= m)
        continue;
      int i1 = 0;
      label130: if (i1 >= k)
        continue;
      int i2 = i1 + n * k;
      if (i2 >= j)
      {
        LinearLayout localLinearLayout2 = new LinearLayout(getContext());
        localLinearLayout2.setLayoutParams(localLayoutParams);
        localLinearLayout1.addView(localLinearLayout2);
      }
      while (true)
      {
        i1++;
        break label130;
        j = this.beans.length;
        break;
        LinearLayout localLinearLayout3 = getView(i2, this.callback, getContext());
        localLinearLayout3.setTag(this.beans[i2]);
        localLinearLayout3.setLayoutParams(localLayoutParams);
        localLinearLayout1.addView(localLinearLayout3);
      }
    }
  }

  public void setData(int paramInt, Object[] paramArrayOfObject)
  {
    this.lines = paramInt;
    this.beans = paramArrayOfObject;
    init();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.PlatformGridView.GridView
 * JD-Core Version:    0.6.0
 */