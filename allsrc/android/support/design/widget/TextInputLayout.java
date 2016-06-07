package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class TextInputLayout extends LinearLayout
{
  private EditText a;
  private CharSequence b;
  private boolean c;
  private TextView d;
  private int e;
  private int f;
  private int g;
  private final k h;
  private final Handler i;
  private au j;

  public TextInputLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    setWillNotDraw(false);
    this.h = new k(this);
    this.i = new Handler(new ao(this));
    this.h.a(a.b);
    this.h.b(new AccelerateInterpolator());
    this.h.d(48);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TextInputLayout, 0, R.style.Widget_Design_TextInputLayout);
    this.b = localTypedArray.getText(R.styleable.TextInputLayout_android_hint);
    int k = localTypedArray.getResourceId(R.styleable.TextInputLayout_hintTextAppearance, -1);
    if (k != -1)
      this.h.e(k);
    this.e = localTypedArray.getResourceId(R.styleable.TextInputLayout_errorTextAppearance, 0);
    boolean bool = localTypedArray.getBoolean(R.styleable.TextInputLayout_errorEnabled, false);
    TypedValue localTypedValue = new TypedValue();
    if (getContext().getTheme().resolveAttribute(16842906, localTypedValue, true));
    for (int m = localTypedValue.data; ; m = -65281)
    {
      this.f = m;
      this.g = this.h.e();
      this.h.a(this.f);
      this.h.b(this.f);
      localTypedArray.recycle();
      if (bool)
        setErrorEnabled(true);
      if (ViewCompat.getImportantForAccessibility(this) == 0)
        ViewCompat.setImportantForAccessibility(this, 1);
      ViewCompat.setAccessibilityDelegate(this, new at(this, 0));
      return;
    }
  }

  private void a(float paramFloat)
  {
    if (this.j == null)
    {
      this.j = aP.a();
      this.j.a(a.a);
      this.j.a(200);
      this.j.a(new as(this));
    }
    while (true)
    {
      this.j.a(this.h.a(), paramFloat);
      this.j.a();
      return;
      if (!this.j.b())
        continue;
      this.j.e();
    }
  }

  private void a(boolean paramBoolean)
  {
    int k;
    boolean bool;
    k localk;
    if (!TextUtils.isEmpty(this.a.getText()))
    {
      k = 1;
      bool = this.a.isFocused();
      this.h.b(this.f);
      localk = this.h;
      if (!bool)
        break label80;
    }
    label80: for (int m = this.g; ; m = this.f)
    {
      localk.a(m);
      if ((k == 0) && (!bool))
        break label98;
      if (!paramBoolean)
        break label89;
      a(1.0F);
      return;
      k = 0;
      break;
    }
    label89: this.h.b(1.0F);
    return;
    label98: if (paramBoolean)
    {
      a(0.0F);
      return;
    }
    this.h.b(0.0F);
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      EditText localEditText = (EditText)paramView;
      if (this.a != null)
        throw new IllegalArgumentException("We already have an EditText, can only have one");
      this.a = localEditText;
      this.h.a(this.a.getTextSize());
      this.a.addTextChangedListener(new ap(this));
      this.f = this.a.getHintTextColors().getDefaultColor();
      this.a.setOnFocusChangeListener(new aq(this));
      if (TextUtils.isEmpty(this.b))
      {
        setHint(this.a.getHint());
        this.a.setHint(null);
      }
      if (this.d != null)
        ViewCompat.setPaddingRelative(this.d, ViewCompat.getPaddingStart(this.a), 0, ViewCompat.getPaddingEnd(this.a), this.a.getPaddingBottom());
      a(false);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(paramLayoutParams);
      Paint localPaint = new Paint();
      localPaint.setTextSize(this.h.b());
      localLayoutParams.topMargin = (int)(-localPaint.ascent());
      super.addView(paramView, 0, localLayoutParams);
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    this.h.a(paramCanvas);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.a != null)
    {
      int k = this.a.getLeft() + this.a.getCompoundPaddingLeft();
      int m = this.a.getRight() - this.a.getCompoundPaddingRight();
      this.h.a(k, this.a.getTop() + this.a.getCompoundPaddingTop(), m, this.a.getBottom() - this.a.getCompoundPaddingBottom());
      this.h.b(k, getPaddingTop(), m, paramInt4 - paramInt2 - getPaddingBottom());
      this.h.c();
    }
  }

  public void setError(CharSequence paramCharSequence)
  {
    if (!this.c)
    {
      if (TextUtils.isEmpty(paramCharSequence))
        return;
      setErrorEnabled(true);
    }
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      this.d.setText(paramCharSequence);
      this.d.setVisibility(0);
      ViewCompat.setAlpha(this.d, 0.0F);
      ViewCompat.animate(this.d).alpha(1.0F).setDuration(200L).setInterpolator(a.b).setListener(null).start();
    }
    while (true)
    {
      sendAccessibilityEvent(2048);
      return;
      if (this.d.getVisibility() != 0)
        continue;
      ViewCompat.animate(this.d).alpha(0.0F).setDuration(200L).setInterpolator(a.b).setListener(new ar(this)).start();
    }
  }

  public void setErrorEnabled(boolean paramBoolean)
  {
    if (this.c != paramBoolean)
    {
      if (!paramBoolean)
        break label100;
      this.d = new TextView(getContext());
      this.d.setTextAppearance(getContext(), this.e);
      this.d.setVisibility(4);
      addView(this.d);
      if (this.a != null)
        ViewCompat.setPaddingRelative(this.d, ViewCompat.getPaddingStart(this.a), 0, ViewCompat.getPaddingEnd(this.a), this.a.getPaddingBottom());
    }
    while (true)
    {
      this.c = paramBoolean;
      return;
      label100: removeView(this.d);
      this.d = null;
    }
  }

  public void setHint(CharSequence paramCharSequence)
  {
    this.b = paramCharSequence;
    this.h.a(paramCharSequence);
    sendAccessibilityEvent(2048);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.TextInputLayout
 * JD-Core Version:    0.6.0
 */