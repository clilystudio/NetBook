package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Snackbar$SnackbarLayout extends LinearLayout
{
  private TextView a;
  private TextView b;
  private int c;
  private int d;
  private W e;

  public Snackbar$SnackbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SnackbarLayout);
    this.c = localTypedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
    this.d = localTypedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
    if (localTypedArray.hasValue(R.styleable.SnackbarLayout_elevation))
      ViewCompat.setElevation(this, localTypedArray.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
    localTypedArray.recycle();
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(R.layout.layout_snackbar_include, this);
  }

  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = getOrientation();
    int j = 0;
    if (paramInt1 != i)
    {
      setOrientation(paramInt1);
      j = 1;
    }
    TextView localTextView;
    if ((this.a.getPaddingTop() != paramInt2) || (this.a.getPaddingBottom() != paramInt3))
    {
      localTextView = this.a;
      if (!ViewCompat.isPaddingRelative(localTextView))
        break label82;
      ViewCompat.setPaddingRelative(localTextView, ViewCompat.getPaddingStart(localTextView), paramInt2, ViewCompat.getPaddingEnd(localTextView), paramInt3);
    }
    while (true)
    {
      j = 1;
      return j;
      label82: localTextView.setPadding(localTextView.getPaddingLeft(), paramInt2, localTextView.getPaddingRight(), paramInt3);
    }
  }

  final void a(int paramInt1, int paramInt2)
  {
    ViewCompat.setAlpha(this.a, 0.0F);
    ViewCompat.animate(this.a).alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    if (this.b.getVisibility() == 0)
    {
      ViewCompat.setAlpha(this.b, 0.0F);
      ViewCompat.animate(this.b).alpha(1.0F).setDuration(180L).setStartDelay(70L).start();
    }
  }

  final void a(W paramW)
  {
    this.e = paramW;
  }

  final void b(int paramInt1, int paramInt2)
  {
    ViewCompat.setAlpha(this.a, 1.0F);
    ViewCompat.animate(this.a).alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    if (this.b.getVisibility() == 0)
    {
      ViewCompat.setAlpha(this.b, 1.0F);
      ViewCompat.animate(this.b).alpha(0.0F).setDuration(180L).setStartDelay(0L).start();
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((TextView)findViewById(R.id.snackbar_text));
    this.b = ((TextView)findViewById(R.id.snackbar_action));
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramBoolean) && (this.e != null))
      this.e.a();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.c > 0) && (getMeasuredWidth() > this.c))
    {
      paramInt1 = View.MeasureSpec.makeMeasureSpec(this.c, 1073741824);
      super.onMeasure(paramInt1, paramInt2);
    }
    int i = getResources().getDimensionPixelSize(R.dimen.snackbar_padding_vertical_2lines);
    int j = getResources().getDimensionPixelSize(R.dimen.snackbar_padding_vertical);
    int k;
    int m;
    if (this.a.getLayout().getLineCount() > 1)
    {
      k = 1;
      if ((k == 0) || (this.d <= 0) || (this.b.getMeasuredWidth() <= this.d))
        break label140;
      if (!a(1, i, i - j))
        break label167;
      m = 1;
    }
    while (true)
    {
      if (m != 0)
        super.onMeasure(paramInt1, paramInt2);
      return;
      k = 0;
      break;
      label140: if (k != 0);
      while (true)
      {
        if (!a(0, i, i))
          break label167;
        m = 1;
        break;
        i = j;
      }
      label167: m = 0;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.Snackbar.SnackbarLayout
 * JD-Core Version:    0.6.0
 */