package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.support.design.R.layout;
import android.support.v4.view.ViewCompat;
import android.support.v7.app.c;
import android.support.v7.internal.widget.Y;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

final class an extends LinearLayout
  implements View.OnLongClickListener
{
  private final am a;
  private TextView b;
  private ImageView c;
  private View d;
  private TextView e;
  private ImageView f;

  public an(TabLayout paramTabLayout, Context paramContext, am paramam)
  {
    super(paramContext);
    this.a = paramam;
    if (TabLayout.a(paramTabLayout) != 0)
      setBackgroundDrawable(Y.a(paramContext, TabLayout.a(paramTabLayout)));
    ViewCompat.setPaddingRelative(this, TabLayout.b(paramTabLayout), TabLayout.c(paramTabLayout), TabLayout.d(paramTabLayout), TabLayout.e(paramTabLayout));
    setGravity(17);
    a();
  }

  private void a(am paramam, TextView paramTextView, ImageView paramImageView)
  {
    CharSequence localCharSequence = paramam.b();
    int i;
    if (paramImageView != null)
    {
      if (0 != 0)
      {
        paramImageView.setImageDrawable(null);
        paramImageView.setVisibility(0);
        setVisibility(0);
        paramImageView.setContentDescription(null);
      }
    }
    else
    {
      if (TextUtils.isEmpty(localCharSequence))
        break label107;
      i = 1;
      label45: if (paramTextView != null)
      {
        if (i == 0)
          break label113;
        paramTextView.setText(localCharSequence);
        paramTextView.setContentDescription(null);
        paramTextView.setVisibility(0);
        setVisibility(0);
      }
    }
    while (true)
    {
      if ((i != 0) || (TextUtils.isEmpty(null)))
        break label127;
      setOnLongClickListener(this);
      return;
      paramImageView.setVisibility(8);
      paramImageView.setImageDrawable(null);
      break;
      label107: i = 0;
      break label45;
      label113: paramTextView.setVisibility(8);
      paramTextView.setText(null);
    }
    label127: setOnLongClickListener(null);
    setLongClickable(false);
  }

  final void a()
  {
    am localam = this.a;
    if (0 != 0)
    {
      ViewParent localViewParent = null.getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null)
          ((ViewGroup)localViewParent).removeView(null);
        addView(null);
      }
      this.d = null;
      if (this.b != null)
        this.b.setVisibility(8);
      if (this.c != null)
      {
        this.c.setVisibility(8);
        this.c.setImageDrawable(null);
      }
      this.e = ((TextView)null.findViewById(16908308));
      this.f = ((ImageView)null.findViewById(16908294));
      if (this.d != null)
        break label280;
      if (this.c == null)
      {
        ImageView localImageView = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.layout_tab_icon, this, false);
        addView(localImageView, 0);
        this.c = localImageView;
      }
      if (this.b == null)
      {
        TextView localTextView = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.layout_tab_text, this, false);
        addView(localTextView);
        this.b = localTextView;
      }
      this.b.setTextAppearance(getContext(), TabLayout.h(this.g));
      if (TabLayout.i(this.g) != null)
        this.b.setTextColor(TabLayout.i(this.g));
      a(localam, this.b, this.c);
    }
    label280: 
    do
    {
      return;
      if (this.d != null)
      {
        removeView(this.d);
        this.d = null;
      }
      this.e = null;
      this.f = null;
      break;
    }
    while ((this.e == null) && (this.f == null));
    a(localam, this.e, this.f);
  }

  public final am b()
  {
    return this.a;
  }

  @TargetApi(14)
  public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(c.class.getName());
  }

  @TargetApi(14)
  public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
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
    Toast localToast = Toast.makeText(localContext, null, 0);
    localToast.setGravity(49, arrayOfInt[0] + i / 2 - k / 2, j);
    localToast.show();
    return true;
  }

  public final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = getMeasuredWidth();
    if ((i < TabLayout.f(this.g)) || (i > TabLayout.g(this.g)))
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(d.a(i, TabLayout.f(this.g), TabLayout.g(this.g)), 1073741824), paramInt2);
  }

  public final void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean);
    for (int i = 1; ; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
      {
        sendAccessibilityEvent(4);
        if (this.b != null)
          this.b.setSelected(paramBoolean);
        if (this.c != null)
          this.c.setSelected(paramBoolean);
      }
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.an
 * JD-Core Version:    0.6.0
 */