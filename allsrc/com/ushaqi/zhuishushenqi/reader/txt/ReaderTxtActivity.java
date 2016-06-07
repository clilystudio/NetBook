package com.ushaqi.zhuishushenqi.reader.txt;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager.WakeLock;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SynthesizerListener;
import com.squareup.a.b;
import com.ushaqi.zhuishushenqi.MyApplication;
import com.ushaqi.zhuishushenqi.db.BookFile;
import com.ushaqi.zhuishushenqi.event.A;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import com.ushaqi.zhuishushenqi.model.TxtFileObject;
import com.ushaqi.zhuishushenqi.reader.AutoReaderSetWidget;
import com.ushaqi.zhuishushenqi.reader.AutoReaderTextView;
import com.ushaqi.zhuishushenqi.reader.PagerWidget;
import com.ushaqi.zhuishushenqi.reader.Reader;
import com.ushaqi.zhuishushenqi.reader.ReaderActionBar;
import com.ushaqi.zhuishushenqi.reader.ReaderChapter;
import com.ushaqi.zhuishushenqi.reader.ReaderTocDialog;
import com.ushaqi.zhuishushenqi.reader.ReaderTtsSetWidget;
import com.ushaqi.zhuishushenqi.reader.SettingWidget;
import com.ushaqi.zhuishushenqi.reader.TtsSpeakingService;
import com.ushaqi.zhuishushenqi.reader.bH;
import com.ushaqi.zhuishushenqi.reader.bZ;
import com.ushaqi.zhuishushenqi.reader.o;
import java.io.File;
import java.util.LinkedList;

public class ReaderTxtActivity extends FragmentActivity
  implements com.ushaqi.zhuishushenqi.reader.a, com.ushaqi.zhuishushenqi.reader.d
{
  public static String a = "";
  private boolean A = false;
  private int B;
  private int C;
  private String[] D;
  private int E = 0;
  private LinkedList<Integer> F;
  private SpeechSynthesizer G;
  private PowerManager.WakeLock H = null;
  private SynthesizerListener I = new d(this);
  private Runnable J = new E(this);
  private BroadcastReceiver K = new F(this);
  private BroadcastReceiver L = new G(this);
  private o[] b = new o[3];
  private String c;
  private Reader d;
  private bZ e;
  private bH f;
  private com.ushaqi.zhuishushenqi.reader.K g;
  private ReaderTocDialog h;
  private Handler i = new Handler();
  private PagerWidget j;
  private int k;
  private boolean l = true;
  private boolean m = true;
  private View n;
  private ReaderActionBar o;
  private SettingWidget p;
  private int q = -1;
  private boolean r;
  private boolean s;
  private boolean t;
  private View u;
  private AutoReaderSetWidget v;
  private int w = 0;
  private AutoReaderTextView x;
  private View y;
  private ReaderTtsSetWidget z;

  private void A()
  {
    this.i.removeCallbacks(this.J);
    if (this.f.d() != 0)
      this.i.postDelayed(this.J, this.f.d());
  }

  private void a(int paramInt)
  {
    this.g.b(paramInt, new t(this), true);
  }

  private void a(boolean paramBoolean)
  {
    if (this.b[this.k].f())
      j();
    while (true)
    {
      return;
      if (this.D == null)
        break;
      if ((paramBoolean) && (!this.D[0].startsWith("　　")))
      {
        this.B = 0;
        this.C = (1 + this.D[0].length());
        this.b[this.k].a(this.B, this.C);
        return;
      }
      this.B = this.C;
      if (this.E > -1 + this.D.length)
        continue;
      this.C = (1 + (this.B + this.D[this.E].length()));
      this.b[this.k].a(this.B, this.C);
      this.G.startSpeaking(this.D[this.E], this.I);
      return;
    }
    com.ushaqi.zhuishushenqi.util.e.a(this, "获取章节内容失败,请退出后重试");
  }

  private void f()
  {
    if (this.s)
    {
      setRequestedOrientation(1);
      return;
    }
    setRequestedOrientation(0);
  }

  private void g()
  {
    try
    {
      startService(new Intent(this, TtsSpeakingService.class));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void h()
  {
    try
    {
      stopService(new Intent(this, TtsSpeakingService.class));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void i()
  {
    if ((this.H != null) && (this.H.isHeld()))
    {
      this.H.release();
      this.H = null;
    }
  }

  private void j()
  {
    this.G.stopSpeaking();
    this.w = 0;
    this.j.setReadMode(this.w);
    h();
    t();
    this.B = 0;
    this.C = 0;
    this.E = 0;
  }

  private void k()
  {
    this.d.c(new f(this));
    l();
  }

  private void l()
  {
    this.d.a(new g(this), false);
  }

  private void m()
  {
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    float f1;
    if (this.e.g())
      f1 = -1.0F;
    while (true)
    {
      localLayoutParams.screenBrightness = f1;
      getWindow().setAttributes(localLayoutParams);
      return;
      f1 = this.e.f() / 255.0F;
    }
  }

  private void n()
  {
    com.ushaqi.zhuishushenqi.reader.n localn1 = this.b[this.k].j();
    if ((localn1 != null) && (!localn1.p()))
    {
      if (localn1.n() == 1)
      {
        a(localn1.l());
        return;
      }
      int i1 = localn1.l();
      this.g.a(i1, new x(this), true);
      return;
    }
    o localo1 = this.b[0];
    o localo2 = this.b[1];
    o localo3 = this.b[2];
    com.ushaqi.zhuishushenqi.reader.n localn2 = localo1.j();
    com.ushaqi.zhuishushenqi.reader.n localn3 = localo2.j();
    com.ushaqi.zhuishushenqi.reader.n localn4 = localo3.j();
    if ((this.k == 2) && (localn4 != null))
    {
      if (localn4.e())
      {
        localo1.a(localn3);
        localo2.a(localn4);
        this.j.setCurrentItem(1, false);
        localn4.a(new m(this, localo3));
      }
      if (this.w == 1)
      {
        if (!this.x.isShown())
          z();
        this.x.a();
      }
      if (this.w == 2)
      {
        if (this.F.size() != 0)
          break label255;
        Object[] arrayOfObject2 = localn4.d();
        if (arrayOfObject2 != null)
        {
          this.D = ((String[])arrayOfObject2[0]);
          this.F = ((LinkedList)arrayOfObject2[1]);
          a(true);
        }
      }
    }
    while (true)
    {
      o();
      return;
      label255: this.b[this.k].a(0, 1 + localn4.c().length());
      continue;
      if ((this.k == 0) && (localn2 != null) && (localn2.f()))
      {
        localo3.a(localn3);
        localo2.a(localn2);
        this.j.setCurrentItem(1, false);
        localn2.b(new n(this, localo1));
        continue;
      }
      if (this.k != 1)
        continue;
      if (this.w == 1)
      {
        if (!this.x.isShown())
          z();
        this.x.a();
        continue;
      }
      if (this.w != 2)
        continue;
      if (this.F.size() == 0)
      {
        Object[] arrayOfObject1 = localn3.d();
        if (arrayOfObject1 == null)
          continue;
        this.D = ((String[])arrayOfObject1[0]);
        this.F = ((LinkedList)arrayOfObject1[1]);
        a(true);
        continue;
      }
      this.b[this.k].a(0, 1 + localn3.c().length());
    }
  }

  private void o()
  {
    com.ushaqi.zhuishushenqi.reader.n localn = this.b[this.k].j();
    if (localn != null)
    {
      this.d.a(localn.l(), localn.m());
      if (!localn.e())
        com.ushaqi.zhuishushenqi.util.e.a(this, "已经是最后一页啦");
    }
  }

  private void p()
  {
    o localo = this.b[this.k];
    if (localo == null);
    com.ushaqi.zhuishushenqi.reader.n localn;
    do
    {
      return;
      localn = localo.j();
    }
    while (localn == null);
    if (localn.e())
    {
      t();
      if (this.f.c())
      {
        this.j.a(1 + this.k);
        return;
      }
      this.j.setCurrentItem(1 + this.k, false);
      n();
      return;
    }
    com.ushaqi.zhuishushenqi.util.e.a(this, "已经是最后一页啦");
  }

  private void q()
  {
    o localo = this.b[this.k];
    if (localo == null);
    com.ushaqi.zhuishushenqi.reader.n localn;
    do
    {
      return;
      localn = localo.j();
    }
    while (localn == null);
    if (localn.f())
    {
      t();
      if (this.f.c())
      {
        this.j.a(-1 + this.k);
        return;
      }
      this.j.setCurrentItem(-1 + this.k, false);
      n();
      return;
    }
    com.ushaqi.zhuishushenqi.util.e.a(this, 2131034407);
  }

  private void r()
  {
    this.g = new com.ushaqi.zhuishushenqi.reader.K(this.d, this.e);
    h localh = new h(this);
    int i1 = this.b.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      o localo = new o(this, this.e);
      this.b[i2] = localo;
      localo.a(localh);
    }
    registerReceiver(this.K, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    registerReceiver(this.L, new IntentFilter("android.intent.action.TIME_TICK"));
    this.j.setAdapter(new i(this));
    this.j.setOnPageChangeListener(new j(this));
    this.j.setOnClickListener$4b8a6d15(new k(this));
    MyApplication.a().a(this.d);
    BookFile localBookFile = TxtFileObject.getProgress(this.c);
    int i4;
    int i3;
    if (localBookFile != null)
    {
      i4 = localBookFile.getProgressChapterIndex();
      i3 = localBookFile.getProgressCharOffset();
    }
    while (true)
    {
      this.g.a(i4, i3, new r(this), true);
      return;
      i3 = 0;
      i4 = 0;
    }
  }

  private void s()
  {
    if (this.l)
      t();
    do
    {
      while (true)
      {
        do
          return;
        while (this.l);
        this.l = true;
        if (this.w != 0)
          break;
        this.o.setVisibility(0);
        getWindow().addFlags(2048);
        getWindow().clearFlags(1024);
        if ((!com.arcsoft.hpay100.a.a.h()) || (this.m))
          continue;
        this.n.setSystemUiVisibility(0);
        return;
      }
      if (this.w != 1)
        continue;
      this.x.clearAnimation();
      this.v.a();
      return;
    }
    while (this.w != 2);
    this.G.pauseSpeaking();
    this.z.setPause(true);
    this.z.a();
  }

  @SuppressLint({"NewApi"})
  private void t()
  {
    if (this.l)
    {
      this.l = false;
      this.o.setVisibility(8);
      this.p.setVisibility(8);
      this.v.b();
      if (this.w == 1)
        this.x.e();
      if (this.w == 2)
      {
        this.z.setVisibility(8);
        if (this.z.b())
        {
          this.G.resumeSpeaking();
          this.z.setPause(false);
        }
      }
      getWindow().addFlags(1024);
      getWindow().clearFlags(2048);
      if (this.r)
      {
        getWindow().addFlags(512);
        com.arcsoft.hpay100.a.a.a(this.n);
      }
    }
    else
    {
      if (!this.f.f())
        break label226;
      if ((com.arcsoft.hpay100.a.a.h()) && (this.m))
        this.n.setSystemUiVisibility(2055);
    }
    label226: 
    do
    {
      return;
      getWindow().addFlags(2048);
      getWindow().clearFlags(1024);
      getWindow().clearFlags(512);
      if ((!com.arcsoft.hpay100.a.a.h()) || (!this.m))
        break;
      this.n.setSystemUiVisibility(0);
      break;
    }
    while ((!com.arcsoft.hpay100.a.a.h()) || (!this.m));
    this.n.setSystemUiVisibility(1);
  }

  private void u()
  {
    this.r = com.arcsoft.hpay100.a.a.l(this, "reader_opt_full_screen");
    this.o.a(this.r);
    t();
  }

  private void v()
  {
    this.g.a(new v(this));
  }

  private com.ushaqi.zhuishushenqi.reader.n w()
  {
    o localo = this.b[this.k];
    if (localo != null)
      return localo.j();
    return null;
  }

  private void x()
  {
    com.ushaqi.zhuishushenqi.reader.n localn = w();
    if (localn == null)
      return;
    if (localn.e())
    {
      if (this.w == 1)
      {
        if (!this.e.i())
          break label73;
        this.x.setText(localn.a(this));
      }
      while (true)
      {
        this.x.b();
        this.j.setCurrentItem(1 + this.k, false);
        n();
        return;
        label73: this.x.setText(localn.c());
      }
    }
    this.x.clearAnimation();
    y();
    this.w = 0;
    this.j.setReadMode(0);
  }

  private void y()
  {
    this.x.setVisibility(8);
    this.y.setVisibility(8);
  }

  private void z()
  {
    this.x.setVisibility(0);
    if (this.e.h())
      this.y.setBackgroundResource(2130837612);
    while (true)
    {
      this.y.setVisibility(0);
      return;
      this.y.setBackgroundResource(2130837611);
    }
  }

  public final void a()
  {
    this.v.c();
    this.x.c();
  }

  public final void b()
  {
    this.v.d();
    this.x.d();
  }

  public final void c()
  {
    Log.d("tag", "stopAutoReader");
    this.x.clearAnimation();
    this.w = 0;
    this.j.setReadMode(0);
    t();
    y();
    if (this.l)
      t();
    com.ushaqi.zhuishushenqi.reader.n localn;
    do
    {
      return;
      localn = w();
    }
    while ((localn == null) || (!localn.f()));
    this.j.setCurrentItem(-1 + this.k, false);
    n();
  }

  public final void d()
  {
    x();
  }

  public final void e()
  {
    int i1 = 0;
    this.B = 0;
    this.C = 0;
    o[] arrayOfo = this.b;
    int i2 = arrayOfo.length;
    while (i1 < i2)
    {
      arrayOfo[i1].a(-1, -1);
      i1++;
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.f.a();
    if (this.g != null)
    {
      u();
      this.e.a(this.r);
      v();
    }
  }

  public void onBackPressed()
  {
    int i1 = 0;
    super.onBackPressed();
    BookFile localBookFile = new BookFile(new File(this.c));
    o localo = this.b[1];
    if (localo != null)
    {
      com.ushaqi.zhuishushenqi.reader.n localn = localo.j();
      if (localn == null)
        return;
      int i2 = localn.a().getIndex();
      localBookFile.progressChapterIndex = i2;
      int i3 = localo.j().b();
      localBookFile.progressCharOffset = i3;
      ChapterLink[] arrayOfChapterLink = this.d.d();
      int i4 = 0;
      int i5 = 0;
      if (i1 < arrayOfChapterLink.length)
      {
        ChapterLink localChapterLink = arrayOfChapterLink[i1];
        i5 += localChapterLink.getTxtCharLength();
        if (i1 < i2)
          i4 += localChapterLink.getTxtCharLength();
        while (true)
        {
          localBookFile.progress = (i4 / i5);
          i1++;
          break;
          if (i1 != i2)
            continue;
          i4 += i3;
        }
      }
    }
    TxtFileObject.updateProgress(localBookFile);
    com.ushaqi.zhuishushenqi.event.i.a().c(new A());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(256);
    getWindow().addFlags(512);
    this.s = com.arcsoft.hpay100.a.a.l(this, "reader_orientation");
    f();
    setContentView(2130903123);
    this.c = getIntent().getStringExtra("file_name");
    if (paramBundle != null)
    {
      this.k = paramBundle.getInt("SaveSelectedPageIndex", 0);
      this.t = paramBundle.getBoolean("SaveChangeOrientation");
    }
    if (this.G == null)
    {
      this.G = SpeechSynthesizer.createSynthesizer(this, new e(this));
      this.G.setParameter("engine_type", "local");
      this.G.setParameter("speed", com.arcsoft.hpay100.a.a.a(this, "speech_speed", 50));
      this.G.setParameter("voice_name", com.arcsoft.hpay100.a.a.d(this, "speech_voice", ""));
    }
    this.j = ((PagerWidget)findViewById(2131493158));
    this.u = findViewById(2131493167);
    this.o = ((ReaderActionBar)findViewById(2131493172));
    this.p = ((SettingWidget)findViewById(2131493165));
    this.e = new bZ(this);
    this.f = new bH(this);
    this.d = new Reader(this.c);
    this.z = ((ReaderTtsSetWidget)findViewById(2131493164));
    this.v = ((AutoReaderSetWidget)findViewById(2131493163));
    this.x = ((AutoReaderTextView)findViewById(2131493161));
    this.y = findViewById(2131493162);
    this.e.a(new H(this));
    this.e.a(new I(this));
    this.e.a(new J(this));
    this.e.a(new K(this));
    this.e.a(new L(this));
    m();
    this.x.setTextColor(this.e.g);
    this.x.setHeight(this.e.e);
    this.x.setTextSize(0, this.e.a);
    this.x.setLineSpacing(this.e.b, 1.0F);
    if (this.e.h == 2130838077)
      this.x.setBackgroundResource(2130838076);
    while (true)
    {
      this.o.setReaderStyle(this.e);
      this.o.b(this.s);
      this.o.c(false);
      this.o.d(false);
      this.o.e(false);
      this.o.g(false);
      this.o.setOnBtnClickListener$7ead76dc(new M(this));
      this.p.setReaderStyle(this.e, this.o);
      this.p.a(new a(this));
      this.p.a(new l(this));
      this.v.setOptionClickListener(this);
      this.x.setOnPageTurning(this);
      this.j.setAutoReaderTextView(this.x);
      this.z.a(this.G);
      this.z.setOnPlayChangeListener(new w(this));
      this.n = getWindow().getDecorView();
      if (com.arcsoft.hpay100.a.a.h())
        this.n.setOnSystemUiVisibilityChangeListener(new u(this));
      u();
      if (!this.t)
        break;
      Reader localReader = MyApplication.a().b();
      if (localReader != null)
      {
        this.d = localReader;
        r();
        return;
        this.x.setBackgroundResource(this.e.h);
        continue;
      }
      k();
      return;
    }
    k();
  }

  public void onDestroy()
  {
    try
    {
      unregisterReceiver(this.K);
      unregisterReceiver(this.L);
      if (this.G != null)
      {
        this.G.stopSpeaking();
        this.G.destroy();
        com.arcsoft.hpay100.a.a.K(this);
        h();
      }
      i();
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
      if ((this.f.b()) && (this.w == 0))
      {
        p();
        return true;
      }
      return false;
    case 24:
    }
    if ((this.f.b()) && (this.w == 0))
    {
      q();
      return true;
    }
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      s();
    do
      return true;
    while ((paramInt == 25) || (paramInt == 24));
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onResume()
  {
    super.onResume();
    getWindow().addFlags(128);
    A();
    t();
    if ((this.w == 2) || (!"".equals(a)))
    {
      this.z.setResetVoice(this.A);
      this.z.setVoiceSourceView();
      this.A = false;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("SaveSelectedPageIndex", this.k);
    paramBundle.putBoolean("SaveChangeOrientation", this.t);
  }

  public void onUserInteraction()
  {
    super.onUserInteraction();
    A();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.ReaderTxtActivity
 * JD-Core Version:    0.6.0
 */