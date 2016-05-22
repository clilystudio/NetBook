package com.clilystudio.app.netbook.reader.random;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.reader.PagerWidget;
import com.clilystudio.app.netbook.reader.Reader;
import com.clilystudio.app.netbook.reader.bH;
import com.clilystudio.app.netbook.reader.bZ;
import com.clilystudio.app.netbook.reader.n;
import uk.me.lewisdeane.ldialogs.h;

public class ReaderRandomActivity extends FragmentActivity
{
  private BroadcastReceiver A = new E(this);
  private BroadcastReceiver B = new F(this);
  private com.clilystudio.app.netbook.reader.o[] a = new com.clilystudio.app.netbook.reader.o[3];
  private String b;
  private String c;
  private String d;
  private Reader e;
  private bZ f;
  private bH g;
  private com.clilystudio.app.netbook.reader.K h;
  private Handler i = new Handler();
  private PagerWidget j;
  private int k;
  private boolean l = true;
  private boolean m = true;
  private View n;
  private ReaderRandomActionBar o;
  private int p = -1;
  private boolean q;
  private boolean r;
  private View s;
  private TextView t;
  private View u;
  private boolean v;
  private View w;
  private ProgressDialog x;
  private int y = 1;
  private Runnable z = new D(this);

  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    return new com.clilystudio.app.netbook.d().a(paramContext, ReaderRandomActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("TOC_ID", paramString3).a();
  }

  private String a(String paramString)
  {
    return getIntent().getStringExtra(paramString);
  }

  private void a()
  {
    this.e.a(new f(this), false);
  }

  private void a(int paramInt)
  {
    this.h.b(paramInt, new q(this), true);
  }

  private void b()
  {
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    if (this.f.g());
    for (float f1 = -1.0F; ; f1 = this.f.f() / 255.0F)
    {
      localLayoutParams.screenBrightness = f1;
      getWindow().setAttributes(localLayoutParams);
      return;
    }
  }

  private void c()
  {
    n localn1 = this.a[this.k].j();
    if ((localn1 != null) && (!localn1.p()))
    {
      if (localn1.n() == 1)
      {
        a(localn1.l());
        return;
      }
      int i1 = localn1.l();
      this.h.a(i1, new t(this), true);
      return;
    }
    com.clilystudio.app.netbook.reader.o localo1 = this.a[0];
    com.clilystudio.app.netbook.reader.o localo2 = this.a[1];
    com.clilystudio.app.netbook.reader.o localo3 = this.a[2];
    n localn2 = localo1.j();
    n localn3 = localo2.j();
    n localn4 = localo3.j();
    if ((this.k == 2) && (localn4 != null) && (localn4.e()))
    {
      localo1.a(localn3);
      localo2.a(localn4);
      this.j.setCurrentItem(1, false);
      localn4.a(new k(this, localo3));
    }
    while (true)
    {
      d();
      return;
      if ((this.k == 0) && (localn2 != null) && (localn2.f()))
      {
        localo3.a(localn3);
        localo2.a(localn2);
        this.j.setCurrentItem(1, false);
        localn2.b(new l(this, localo1));
      }
    }
  }

  private void d()
  {
    n localn = this.a[this.k].j();
    if (localn != null)
    {
      this.e.a(localn.l(), localn.m());
      if (!localn.e())
        com.clilystudio.app.netbook.util.e.a(this, "已经是最后一页啦");
    }
  }

  private void e()
  {
    com.clilystudio.app.netbook.reader.o localo = this.a[this.k];
    if (localo == null);
    n localn;
    do
    {
      return;
      localn = localo.j();
    }
    while (localn == null);
    if (localn.e())
    {
      i();
      if (this.g.c())
      {
        this.j.a(1 + this.k);
        return;
      }
      this.j.setCurrentItem(1 + this.k, false);
      c();
      return;
    }
    com.clilystudio.app.netbook.util.e.a(this, "已经是最后一页啦");
  }

  private void f()
  {
    com.clilystudio.app.netbook.reader.o localo = this.a[this.k];
    if (localo == null);
    n localn;
    do
    {
      return;
      localn = localo.j();
    }
    while (localn == null);
    if (localn.f())
    {
      i();
      if (this.g.c())
      {
        this.j.a(-1 + this.k);
        return;
      }
      this.j.setCurrentItem(-1 + this.k, false);
      c();
      return;
    }
    com.clilystudio.app.netbook.util.e.a(this, 2131034407);
  }

  private void g()
  {
    if (this.l)
    {
      i();
      return;
    }
    h();
  }

  @SuppressLint({"NewApi"})
  private void h()
  {
    if (!this.l)
    {
      this.o.setVisibility(0);
      this.s.setVisibility(0);
      getWindow().addFlags(2048);
      getWindow().clearFlags(1024);
      this.l = true;
    }
    if ((a.h()) && (!this.m))
      this.n.setSystemUiVisibility(0);
  }

  @SuppressLint({"NewApi"})
  private void i()
  {
    if (this.l)
    {
      this.o.setVisibility(4);
      getWindow().addFlags(1024);
      getWindow().clearFlags(2048);
      this.l = false;
    }
    if ((a.h()) && (this.m))
      this.n.setSystemUiVisibility(1);
    if (this.q)
      getWindow().addFlags(512);
    while (true)
    {
      this.s.setVisibility(8);
      a.a(getWindow().getDecorView());
      return;
      getWindow().addFlags(2048);
      getWindow().clearFlags(1024);
      getWindow().clearFlags(512);
      if ((a.h()) && (this.m))
        this.n.setSystemUiVisibility(0);
    }
  }

  private void j()
  {
    this.i.removeCallbacks(this.z);
    if (this.g.d() != 0)
      this.i.postDelayed(this.z, this.g.d());
  }

  public void onBackPressed()
  {
    if (this.e.m())
    {
      super.onBackPressed();
      return;
    }
    new h(this).a(2131034455).b(2131034287).a(2131034280, new B(this)).b(2131034281, new A(this)).a().show();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(256);
    getWindow().addFlags(512);
    setContentView(2130903122);
    this.b = a("BOOK_ID");
    this.c = a("BOOK_TITLE");
    this.d = a("TOC_ID");
    com.clilystudio.app.netbook.util.I.g = 0;
    if (paramBundle != null)
      this.k = paramBundle.getInt("SaveSelectedPageIndex", 0);
    this.w = findViewById(2131493167);
    this.o = ((ReaderRandomActionBar)findViewById(2131493170));
    this.f = new bZ(this);
    this.g = new bH(this);
    this.e = new Reader(this.b, this.d, this.c, 5);
    this.f.a(new G(this));
    this.f.a(new H(this));
    this.f.a(new I(this));
    this.f.a(new J(this));
    this.f.a(new K(this));
    b();
    this.o.setTitle("书名被封印");
    this.o.setOnBtnClickListener$3ce42dcd(new L(this));
    this.s = findViewById(2131493171);
    this.s.setVisibility(0);
    View localView1 = findViewById(2131493936);
    View localView2 = findViewById(2131493939);
    this.t = ((TextView)findViewById(2131493938));
    this.u = findViewById(2131493937);
    this.v = a.l(this, "firstRandomBooks");
    ReaderRandomActionBar localReaderRandomActionBar;
    RelativeLayout.LayoutParams localLayoutParams;
    if (this.e.m())
    {
      this.u.setBackgroundResource(2130837650);
      this.t.setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
      this.t.setText("已添加");
      this.r = true;
      localView1.setOnClickListener(new d(this));
      localView2.setOnClickListener(new o(this));
      this.n = getWindow().getDecorView();
      if (a.h())
        this.n.setOnSystemUiVisibilityChangeListener(new r(this));
      this.q = a.l(this, "reader_opt_full_screen");
      localReaderRandomActionBar = this.o;
      boolean bool = this.q;
      localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
      if (!bool)
        break label544;
      localLayoutParams.setMargins(0, am.k(localReaderRandomActionBar.getContext()), 0, 0);
    }
    while (true)
    {
      localReaderRandomActionBar.setLayoutParams(localLayoutParams);
      i();
      if (this.v)
      {
        h();
        this.v = false;
      }
      this.e.c(new e(this));
      a();
      return;
      this.r = false;
      break;
      label544: localLayoutParams.setMargins(0, 0, 0, 0);
    }
  }

  public void onDestroy()
  {
    try
    {
      unregisterReceiver(this.A);
      unregisterReceiver(this.B);
      super.onDestroy();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default:
      return super.onKeyDown(paramInt, paramKeyEvent);
    case 25:
      if (this.g.b())
      {
        e();
        return true;
      }
      return false;
    case 24:
    }
    if (this.g.b())
    {
      f();
      return true;
    }
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      g();
    while ((paramInt == 25) || (paramInt == 24))
      return true;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    a.b(this, "firstRandomBooks", false);
  }

  public void onResume()
  {
    super.onResume();
    getWindow().addFlags(128);
    j();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("SaveSelectedPageIndex", this.k);
  }

  public void onUserInteraction()
  {
    super.onUserInteraction();
    j();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.ReaderRandomActivity
 * JD-Core Version:    0.6.2
 */