package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.app.c;
import android.support.v7.appcompat.R.attr;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.G;
import android.support.v7.widget.LinearLayoutCompat;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.handmark.pulltorefresh.library.internal.e;

final class M extends LinearLayoutCompat
  implements View.OnLongClickListener
{
  private final int[] a = { 16842964 };
  private c b;
  private TextView c;
  private ImageView d;
  private View e;

  public M(ScrollingTabContainerView paramScrollingTabContainerView, Context paramContext, c paramc, boolean paramBoolean)
  {
    super(paramContext, null, R.attr.actionBarTabStyle);
    this.b = paramc;
    e locale = e.a(paramContext, null, this.a, R.attr.actionBarTabStyle, 0);
    if (locale.e(0))
      setBackgroundDrawable(locale.a(0));
    locale.b();
    if (paramBoolean)
      setGravity(8388627);
    b();
  }

  private void b()
  {
    c localc = this.b;
    View localView = localc.c();
    if (localView != null)
    {
      ViewParent localViewParent = localView.getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null)
          ((ViewGroup)localViewParent).removeView(localView);
        addView(localView);
      }
      this.e = localView;
      if (this.c != null)
        this.c.setVisibility(8);
      if (this.d != null)
      {
        this.d.setVisibility(8);
        this.d.setImageDrawable(null);
      }
      return;
    }
    if (this.e != null)
    {
      removeView(this.e);
      this.e = null;
    }
    Drawable localDrawable = localc.a();
    CharSequence localCharSequence = localc.b();
    int i;
    if (localDrawable != null)
    {
      if (this.d == null)
      {
        ImageView localImageView = new ImageView(getContext());
        G localG2 = new G(-2, -2);
        localG2.h = 16;
        localImageView.setLayoutParams(localG2);
        addView(localImageView, 0);
        this.d = localImageView;
      }
      this.d.setImageDrawable(localDrawable);
      this.d.setVisibility(0);
      if (TextUtils.isEmpty(localCharSequence))
        break label372;
      i = 1;
      label213: if (i == 0)
        break label378;
      if (this.c == null)
      {
        AppCompatTextView localAppCompatTextView = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
        localAppCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        G localG1 = new G(-2, -2);
        localG1.h = 16;
        localAppCompatTextView.setLayoutParams(localG1);
        addView(localAppCompatTextView);
        this.c = localAppCompatTextView;
      }
      this.c.setText(localCharSequence);
      this.c.setVisibility(0);
    }
    while (true)
    {
      if (this.d != null)
        this.d.setContentDescription(localc.d());
      if ((i != 0) || (TextUtils.isEmpty(localc.d())))
        break label405;
      setOnLongClickListener(this);
      return;
      if (this.d == null)
        break;
      this.d.setVisibility(8);
      this.d.setImageDrawable(null);
      break;
      label372: i = 0;
      break label213;
      label378: if (this.c == null)
        continue;
      this.c.setVisibility(8);
      this.c.setText(null);
    }
    label405: setOnLongClickListener(null);
    setLongClickable(false);
  }

  public final c a()
  {
    return this.b;
  }

  public final void a(c paramc)
  {
    this.b = paramc;
    b();
  }

  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(c.class.getName());
  }

  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14)
      paramAccessibilityNodeInfo.setClassName(c.class.getName());
  }

  public final boolean onLongClick(View paramView)
  {
    int[] arrayOfInt = new int[2];
    getLocationOnScreen(arrayOfInt);
    Context localContext = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = localContext.getResources().getDisplayMetrics().widthPixels;
    Toast localToast = Toast.makeText(localContext, this.b.d(), 0);
    localToast.setGravity(49, arrayOfInt[0] + i / 2 - k / 2, j);
    localToast.show();
    return true;
  }

  public final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.f.b > 0) && (getMeasuredWidth() > this.f.b))
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.f.b, 1073741824), paramInt2);
  }

  public final void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean);
    for (int i = 1; ; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
        sendAccessibilityEvent(4);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.M
 * JD-Core Version:    0.6.0
 */