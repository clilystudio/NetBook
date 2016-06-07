package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ActionProvider;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.string;
import android.support.v7.appcompat.R.styleable;
import android.support.v7.widget.L;
import android.support.v7.widget.LinearLayoutCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class ActivityChooserView extends ViewGroup
{
  ActionProvider a;
  private final v b;
  private final w c;
  private final LinearLayoutCompat d;
  private final Drawable e;
  private final FrameLayout f;
  private final ImageView g;
  private final FrameLayout h;
  private final ImageView i;
  private final int j;
  private final DataSetObserver k = new r(this);
  private final ViewTreeObserver.OnGlobalLayoutListener l = new s(this);
  private L m;
  private PopupWindow.OnDismissListener n;
  private boolean o;
  private int p = 4;
  private boolean q;
  private int r;

  public ActivityChooserView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ActivityChooserView, paramInt, 0);
    this.p = localTypedArray.getInt(R.styleable.ActivityChooserView_initialActivityCount, 4);
    Drawable localDrawable = localTypedArray.getDrawable(R.styleable.ActivityChooserView_expandActivityOverflowButtonDrawable);
    localTypedArray.recycle();
    LayoutInflater.from(getContext()).inflate(R.layout.abc_activity_chooser_view, this, true);
    this.c = new w(this, 0);
    this.d = ((LinearLayoutCompat)findViewById(R.id.activity_chooser_view_content));
    this.e = this.d.getBackground();
    this.h = ((FrameLayout)findViewById(R.id.default_activity_button));
    this.h.setOnClickListener(this.c);
    this.h.setOnLongClickListener(this.c);
    this.i = ((ImageView)this.h.findViewById(R.id.image));
    FrameLayout localFrameLayout = (FrameLayout)findViewById(R.id.expand_activities_button);
    localFrameLayout.setOnClickListener(this.c);
    localFrameLayout.setOnTouchListener(new t(this, localFrameLayout));
    this.f = localFrameLayout;
    this.g = ((ImageView)localFrameLayout.findViewById(R.id.image));
    this.g.setImageDrawable(localDrawable);
    this.b = new v(this, 0);
    this.b.registerDataSetObserver(new u(this));
    Resources localResources = paramContext.getResources();
    this.j = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
  }

  private void a(int paramInt)
  {
    if (this.b.e() == null)
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    getViewTreeObserver().addOnGlobalLayoutListener(this.l);
    boolean bool;
    int i2;
    label58: label90: L localL;
    if (this.h.getVisibility() == 0)
    {
      bool = true;
      int i1 = this.b.c();
      if (!bool)
        break label187;
      i2 = 1;
      if ((paramInt == 2147483647) || (i1 <= i2 + paramInt))
        break label193;
      this.b.a(true);
      this.b.a(paramInt - 1);
      localL = d();
      if (!localL.b())
      {
        if ((!this.o) && (bool))
          break label212;
        this.b.a(true, bool);
      }
    }
    while (true)
    {
      localL.c(Math.min(this.b.a(), this.j));
      localL.c();
      if (this.a != null)
        this.a.subUiVisibilityChanged(true);
      localL.g().setContentDescription(getContext().getString(R.string.abc_activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label187: i2 = 0;
      break label58;
      label193: this.b.a(false);
      this.b.a(paramInt);
      break label90;
      label212: this.b.a(false, false);
    }
  }

  private L d()
  {
    if (this.m == null)
    {
      this.m = new L(getContext());
      this.m.a(this.b);
      this.m.a(this);
      this.m.a(true);
      this.m.a(this.c);
      this.m.a(this.c);
    }
    return this.m;
  }

  public final boolean a()
  {
    if ((d().b()) || (!this.q))
      return false;
    this.o = false;
    a(this.p);
    return true;
  }

  public final boolean b()
  {
    if (d().b())
    {
      d().a();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive())
        localViewTreeObserver.removeGlobalOnLayoutListener(this.l);
    }
    return true;
  }

  public final boolean c()
  {
    return d().b();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    l locall = this.b.e();
    if (locall != null)
      locall.registerObserver(this.k);
    this.q = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    l locall = this.b.e();
    if (locall != null)
      locall.unregisterObserver(this.k);
    ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
    if (localViewTreeObserver.isAlive())
      localViewTreeObserver.removeGlobalOnLayoutListener(this.l);
    if (d().b())
      b();
    this.q = false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.d.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!d().b())
      b();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    LinearLayoutCompat localLinearLayoutCompat = this.d;
    if (this.h.getVisibility() != 0)
      paramInt2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    measureChild(localLinearLayoutCompat, paramInt1, paramInt2);
    setMeasuredDimension(localLinearLayoutCompat.getMeasuredWidth(), localLinearLayoutCompat.getMeasuredHeight());
  }

  public void setActivityChooserModel(l paraml)
  {
    this.b.a(paraml);
    if (d().b())
    {
      b();
      a();
    }
  }

  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    this.r = paramInt;
  }

  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    this.g.setContentDescription(str);
  }

  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    this.g.setImageDrawable(paramDrawable);
  }

  public void setInitialActivityCount(int paramInt)
  {
    this.p = paramInt;
  }

  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.n = paramOnDismissListener;
  }

  public void setProvider(ActionProvider paramActionProvider)
  {
    this.a = paramActionProvider;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * JD-Core Version:    0.6.0
 */