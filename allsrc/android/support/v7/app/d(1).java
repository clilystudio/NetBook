package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.styleable;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;

class d
{
  private TextView A;
  private TextView B;
  private View C;
  private ListAdapter D;
  private int E = -1;
  private int F;
  private int G;
  private int H;
  private int I;
  private int J;
  private int K;
  private int L = 0;
  private Handler M;
  private final View.OnClickListener N = new e(this);
  private final Context a;
  private final B b;
  private final Window c;
  private CharSequence d;
  private CharSequence e;
  private ListView f;
  private View g;
  private int h;
  private int i;
  private int j;
  private int k;
  private int l;
  private boolean m = false;
  private Button n;
  private CharSequence o;
  private Message p;
  private Button q;
  private CharSequence r;
  private Message s;
  private Button t;
  private CharSequence u;
  private Message v;
  private ScrollView w;
  private int x = 0;
  private Drawable y;
  private ImageView z;

  public d(Context paramContext, B paramB, Window paramWindow)
  {
    this.a = paramContext;
    this.b = paramB;
    this.c = paramWindow;
    this.M = new h(paramB);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
    this.F = localTypedArray.getResourceId(R.styleable.AlertDialog_android_layout, 0);
    this.G = localTypedArray.getResourceId(R.styleable.AlertDialog_buttonPanelSideLayout, 0);
    this.H = localTypedArray.getResourceId(R.styleable.AlertDialog_listLayout, 0);
    this.I = localTypedArray.getResourceId(R.styleable.AlertDialog_multiChoiceItemLayout, 0);
    this.J = localTypedArray.getResourceId(R.styleable.AlertDialog_singleChoiceItemLayout, 0);
    this.K = localTypedArray.getResourceId(R.styleable.AlertDialog_listItemLayout, 0);
    localTypedArray.recycle();
  }

  private static void a(Button paramButton)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    localLayoutParams.gravity = 1;
    localLayoutParams.weight = 0.5F;
    paramButton.setLayoutParams(localLayoutParams);
  }

  private static boolean b(View paramView)
  {
    if (paramView.onCheckIsTextEditor())
      return true;
    if (!(paramView instanceof ViewGroup))
      return false;
    ViewGroup localViewGroup = (ViewGroup)paramView;
    int i1 = localViewGroup.getChildCount();
    while (i1 > 0)
    {
      i1--;
      if (b(localViewGroup.getChildAt(i1)))
        return true;
    }
    return false;
  }

  public final void a()
  {
    this.b.a().b(1);
    int i1 = this.F;
    this.b.setContentView(i1);
    ViewGroup localViewGroup1 = (ViewGroup)this.c.findViewById(R.id.contentPanel);
    this.w = ((ScrollView)this.c.findViewById(R.id.scrollView));
    this.w.setFocusable(false);
    this.B = ((TextView)this.c.findViewById(16908299));
    int i2;
    label161: label208: label255: int i3;
    label296: label314: int i4;
    label322: ViewGroup localViewGroup2;
    com.handmark.pulltorefresh.library.internal.e locale;
    label400: FrameLayout localFrameLayout1;
    View localView2;
    if (this.B != null)
    {
      if (this.e != null)
        this.B.setText(this.e);
    }
    else
    {
      this.n = ((Button)this.c.findViewById(16908313));
      this.n.setOnClickListener(this.N);
      if (!TextUtils.isEmpty(this.o))
        break label744;
      this.n.setVisibility(8);
      i2 = 0;
      this.q = ((Button)this.c.findViewById(16908314));
      this.q.setOnClickListener(this.N);
      if (!TextUtils.isEmpty(this.r))
        break label769;
      this.q.setVisibility(8);
      this.t = ((Button)this.c.findViewById(16908315));
      this.t.setOnClickListener(this.N);
      if (!TextUtils.isEmpty(this.u))
        break label797;
      this.t.setVisibility(8);
      Context localContext = this.a;
      TypedValue localTypedValue = new TypedValue();
      localContext.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, localTypedValue, true);
      if (localTypedValue.data == 0)
        break label825;
      i3 = 1;
      if (i3 != 0)
      {
        if (i2 != 1)
          break label831;
        a(this.n);
      }
      if (i2 == 0)
        break label863;
      i4 = 1;
      localViewGroup2 = (ViewGroup)this.c.findViewById(R.id.topPanel);
      locale = com.handmark.pulltorefresh.library.internal.e.a(this.a, null, R.styleable.AlertDialog, R.attr.alertDialogStyle, 0);
      if (this.C == null)
        break label869;
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
      localViewGroup2.addView(this.C, 0, localLayoutParams);
      this.c.findViewById(R.id.title_template).setVisibility(8);
      View localView1 = this.c.findViewById(R.id.buttonPanel);
      if (i4 == 0)
      {
        localView1.setVisibility(8);
        View localView3 = this.c.findViewById(R.id.textSpacerNoButtons);
        if (localView3 != null)
          localView3.setVisibility(0);
      }
      localFrameLayout1 = (FrameLayout)this.c.findViewById(R.id.customPanel);
      if (this.g == null)
        break label1061;
      localView2 = this.g;
      label475: int i5 = 0;
      if (localView2 != null)
        i5 = 1;
      if ((i5 == 0) || (!b(localView2)))
        this.c.setFlags(131072, 131072);
      if (i5 == 0)
        break label1096;
      FrameLayout localFrameLayout2 = (FrameLayout)this.c.findViewById(R.id.custom);
      localFrameLayout2.addView(localView2, new ViewGroup.LayoutParams(-1, -1));
      if (this.m)
        localFrameLayout2.setPadding(this.i, this.j, this.k, this.l);
      if (this.f != null)
        ((LinearLayout.LayoutParams)localFrameLayout1.getLayoutParams()).weight = 0.0F;
    }
    while (true)
    {
      ListView localListView = this.f;
      if ((localListView != null) && (this.D != null))
      {
        localListView.setAdapter(this.D);
        int i6 = this.E;
        if (i6 >= 0)
        {
          localListView.setItemChecked(i6, true);
          localListView.setSelection(i6);
        }
      }
      locale.b();
      return;
      this.B.setVisibility(8);
      this.w.removeView(this.B);
      if (this.f != null)
      {
        ViewGroup localViewGroup3 = (ViewGroup)this.w.getParent();
        int i8 = localViewGroup3.indexOfChild(this.w);
        localViewGroup3.removeViewAt(i8);
        localViewGroup3.addView(this.f, i8, new ViewGroup.LayoutParams(-1, -1));
        break;
      }
      localViewGroup1.setVisibility(8);
      break;
      label744: this.n.setText(this.o);
      this.n.setVisibility(0);
      i2 = 1;
      break label161;
      label769: this.q.setText(this.r);
      this.q.setVisibility(0);
      i2 |= 2;
      break label208;
      label797: this.t.setText(this.u);
      this.t.setVisibility(0);
      i2 |= 4;
      break label255;
      label825: i3 = 0;
      break label296;
      label831: if (i2 == 2)
      {
        a(this.q);
        break label314;
      }
      if (i2 != 4)
        break label314;
      a(this.t);
      break label314;
      label863: i4 = 0;
      break label322;
      label869: this.z = ((ImageView)this.c.findViewById(16908294));
      if (!TextUtils.isEmpty(this.d));
      for (int i7 = 1; ; i7 = 0)
      {
        if (i7 == 0)
          break label1027;
        this.A = ((TextView)this.c.findViewById(R.id.alertTitle));
        this.A.setText(this.d);
        if (this.x == 0)
          break label959;
        this.z.setImageResource(this.x);
        break;
      }
      label959: if (this.y != null)
      {
        this.z.setImageDrawable(this.y);
        break label400;
      }
      this.A.setPadding(this.z.getPaddingLeft(), this.z.getPaddingTop(), this.z.getPaddingRight(), this.z.getPaddingBottom());
      this.z.setVisibility(8);
      break label400;
      label1027: this.c.findViewById(R.id.title_template).setVisibility(8);
      this.z.setVisibility(8);
      localViewGroup2.setVisibility(8);
      break label400;
      label1061: if (this.h != 0)
      {
        localView2 = LayoutInflater.from(this.a).inflate(this.h, localFrameLayout1, false);
        break label475;
      }
      localView2 = null;
      break label475;
      label1096: localFrameLayout1.setVisibility(8);
    }
  }

  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    if (paramOnClickListener != null)
      paramMessage = this.M.obtainMessage(paramInt, paramOnClickListener);
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Button does not exist");
    case -1:
      this.o = paramCharSequence;
      this.p = paramMessage;
      return;
    case -2:
      this.r = paramCharSequence;
      this.s = paramMessage;
      return;
    case -3:
    }
    this.u = paramCharSequence;
    this.v = paramMessage;
  }

  public final void a(Drawable paramDrawable)
  {
    this.y = paramDrawable;
    this.x = 0;
    if (this.z != null)
    {
      if (paramDrawable != null)
        this.z.setImageDrawable(paramDrawable);
    }
    else
      return;
    this.z.setVisibility(8);
  }

  public final void a(View paramView)
  {
    this.C = paramView;
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.d = paramCharSequence;
    if (this.A != null)
      this.A.setText(paramCharSequence);
  }

  public final boolean a(KeyEvent paramKeyEvent)
  {
    return (this.w != null) && (this.w.executeKeyEvent(paramKeyEvent));
  }

  public final void b(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    if (this.B != null)
      this.B.setText(paramCharSequence);
  }

  public final boolean b(KeyEvent paramKeyEvent)
  {
    return (this.w != null) && (this.w.executeKeyEvent(paramKeyEvent));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.d
 * JD-Core Version:    0.6.0
 */