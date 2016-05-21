package com.clilystudio.app.netbook.reader;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Resources;
import android.support.design.widget.am;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.squareup.a.l;
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Advert;
import com.clilystudio.app.netbook.model.ChapterLink;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.util.e;
import java.text.SimpleDateFormat;
import java.util.Map;
import me.biubiubiu.justifytext.library.JustifyTextView;

public final class o
{
  private static final SimpleDateFormat a = new SimpleDateFormat("HH:mm");
  private final Activity b;
  private final bZ c;
  private n d;
  private boolean e;
  private View f;
  private TextView g;
  private TextView h;
  private TextView i;
  private View j;
  private ImageView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private boolean p;
  private G q;
  private H r;
  private F s;
  private boolean t = false;
  private Button u;

  public o(Activity paramActivity, bZ parambZ)
  {
    this.b = paramActivity;
    this.c = parambZ;
    this.f = this.b.getLayoutInflater().inflate(2130903367, null);
    this.g = ((TextView)this.f.findViewById(2131493605));
    this.h = ((TextView)this.f.findViewById(2131493913));
    this.i = ((TextView)this.f.findViewById(2131493915));
    this.j = this.f.findViewById(2131493916);
    this.k = ((ImageView)this.f.findViewById(2131493917));
    this.l = ((TextView)this.f.findViewById(2131493918));
    this.m = ((TextView)this.f.findViewById(2131493919));
    this.n = ((TextView)this.f.findViewById(2131493920));
    this.o = ((TextView)this.f.findViewById(2131493921));
    this.f.setPadding(this.c.c, this.c.d, this.c.c, this.c.d);
    l();
    m();
    k();
    i.a().a(this);
  }

  @TargetApi(11)
  private void a(View paramView, Advert paramAdvert)
  {
    if ((paramView == null) || (paramAdvert == null))
      return;
    paramAdvert.setPosition("read_page");
    paramAdvert.recordShow(this.b);
    SmartImageView localSmartImageView = (SmartImageView)paramView.findViewById(2131493908);
    TextView localTextView1 = (TextView)paramView.findViewById(2131493910);
    TextView localTextView2 = (TextView)paramView.findViewById(2131493911);
    Button localButton = (Button)paramView.findViewById(2131493909);
    if (a.y(this.b))
      localButton.setVisibility(0);
    if (a.a(this.b, "customer_night_theme", false))
    {
      paramView.setBackgroundResource(2130838073);
      localTextView1.setTextColor(this.b.getResources().getColor(2131427396));
      localTextView2.setTextColor(this.b.getResources().getColor(2131427397));
      localButton.setTextColor(this.b.getResources().getColor(2131427396));
      localSmartImageView.setAlpha(0.2F);
    }
    while (true)
    {
      localSmartImageView.setImageBitmap(null);
      localSmartImageView.setImageUrl(paramAdvert.getFullImg());
      localTextView1.setText(paramAdvert.getTitle());
      localTextView2.setText(paramAdvert.getDesc());
      localButton.setOnClickListener(new z(this));
      paramView.setOnClickListener(new A(this, paramAdvert));
      com.clilystudio.app.netbook.util.adutil.n.a(paramAdvert, paramView);
      return;
      paramView.setBackgroundResource(2130838072);
      localTextView1.setTextColor(this.b.getResources().getColor(2131427393));
      localTextView2.setTextColor(this.b.getResources().getColor(2131427394));
      localButton.setTextColor(this.b.getResources().getColor(2131427548));
      localSmartImageView.setAlpha(1.0F);
    }
  }

  private void a(boolean paramBoolean)
  {
    View localView1 = this.f.findViewById(2131493912);
    View localView2 = this.f.findViewById(2131493922);
    if (paramBoolean)
    {
      localView1.setVisibility(8);
      localView2.setVisibility(0);
      View localView3 = this.f.findViewById(2131493924);
      View localView4 = this.f.findViewById(2131493929);
      ((TextView)localView2.findViewById(2131493923)).setText(this.d.i());
      if (am_CommonUtils.g())
      {
        localView3.setVisibility(0);
        localView4.setVisibility(8);
        TextView localTextView = (TextView)this.f.findViewById(2131493925);
        ChapterLink[] arrayOfChapterLink = MyApplication.a().b().d();
        int i1;
        CheckBox localCheckBox;
        if ((arrayOfChapterLink == null) || (arrayOfChapterLink.length == 0))
        {
          i1 = 0;
          localTextView.setText(i1);
          localCheckBox = (CheckBox)localView3.findViewById(2131493926);
          this.u = ((Button)localView3.findViewById(2131493927));
          if ((a.a(this.b, "user_account_balance", 0) <= this.d.a().getCurrency()) && (!this.t))
            break label402;
          localCheckBox.setVisibility(0);
          localCheckBox.setChecked(a.a(this.b, "auto_buy_chapter" + com.clilystudio.app.netbook.util.I.a, false));
          this.u.setText("购买，继续阅读");
          this.u.setOnClickListener(new s(this, localCheckBox));
          localCheckBox.setOnClickListener(new t(this));
        }
        while (true)
        {
          Button localButton = (Button)localView3.findViewById(2131493928);
          localButton.setOnClickListener(new x(this));
          if (((this.b instanceof ReaderActivity)) && (!((ReaderActivity)this.b).m()))
            localButton.setVisibility(8);
          return;
          int i2 = this.d.l();
          if (i2 < 0)
            i2 = 0;
          while (true)
          {
            i1 = arrayOfChapterLink[i2].getCurrency();
            break;
            if (i2 >= arrayOfChapterLink.length)
              i2 = -1 + arrayOfChapterLink.length;
          }
          label402: localCheckBox.setVisibility(4);
          this.u.setText("余额不足，请充值");
          this.u.setOnClickListener(new v(this));
        }
      }
      localView3.setVisibility(8);
      localView4.setVisibility(0);
      localView4.findViewById(2131493930).setOnClickListener(new y(this));
      return;
    }
    localView1.setVisibility(0);
    localView2.setVisibility(8);
    r();
  }

  private boolean a(View paramView)
  {
    try
    {
      int i1 = this.h.getLayout().getHeight() + paramView.getLayoutParams().height;
      int i2 = this.c.e;
      if (i1 < i2)
        return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void b(int paramInt)
  {
    if (this.k != null)
      this.k.setImageResource(paramInt);
  }

  private void b(n paramn)
  {
    if ((paramn != null) && (paramn.o() == -1))
    {
      Reader localReader = MyApplication.a().b();
      if (localReader != null)
      {
        String str = localReader.i();
        com.umeng.a.b.a(this.b, "chapter_load_error", str);
      }
    }
  }

  private void l()
  {
    this.f.setBackgroundResource(this.c.h);
    this.g.setTextColor(this.c.i);
    this.h.setTextColor(this.c.g);
    this.i.setTextColor(this.c.i);
    TextView localTextView = (TextView)this.f.findViewById(2131493914);
    localTextView.setTextColor(this.c.i);
    localTextView.setBackgroundResource(this.c.j);
    ((TextView)this.f.findViewById(2131493606)).setTextColor(this.c.i);
  }

  private void m()
  {
    this.h.setHeight(this.c.e);
    this.h.setTextSize(0, this.c.a);
    this.h.setLineSpacing(this.c.b, 1.0F);
  }

  private void n()
  {
    if (this.d == null)
      return;
    switch (this.d.o())
    {
    default:
      return;
    case -5:
      p();
      this.n.setVisibility(8);
      this.l.setText("本来源暂无该小说");
      this.m.setText("请切换到其他来源");
      b(2130837937);
      u();
      a(false);
      return;
    case 1:
      e();
      return;
    case -1:
      p();
      this.n.setVisibility(0);
      t();
      a(false);
      if (a.t(this.b))
      {
        this.l.setText("连接超时，再试试？");
        this.m.setText("请刷新重试或切换来源");
        b(2130837937);
        u();
        return;
      }
      this.l.setText("没网，连不上呀");
      this.m.setText("请检查网络后重试");
      b(2130837938);
      this.o.setVisibility(8);
      this.n.setText(2131034471);
      return;
    case -3:
      p();
      this.n.setVisibility(0);
      this.l.setText("本章暂无文字");
      this.m.setText("未找到本章的文字内容");
      b(2130837937);
      t();
      u();
      a(false);
      return;
    case -2:
      p();
      this.l.setText("此来源尚未更新，请稍后再试");
      this.m.setText("");
      b(2130837939);
      u();
      a(false);
      return;
    case -4:
      p();
      this.n.setVisibility(0);
      this.l.setText("连接超时，再试试？");
      this.m.setText("请刷新重试或切换来源");
      b(2130837937);
      this.n.setOnClickListener(new q(this));
      u();
      a(false);
      return;
    case 0:
    }
    this.j.setVisibility(8);
    this.g.setText("");
    this.h.setText("");
    this.i.setText("");
    a(false);
  }

  private static boolean o()
  {
    if (am_CommonUtils.e() == null);
    while (!a.a(MyApplication.a(), "auto_buy_chapter" + com.clilystudio.app.netbook.util.I.a, false))
      return false;
    return true;
  }

  private void p()
  {
    this.j.setVisibility(0);
    this.g.setText(this.d.i());
    this.h.setText("");
    this.i.setText("");
  }

  private boolean q()
  {
    if (MyApplication.a().d() == 9);
    for (int i1 = 1; (i1 == 0) && (this.d != null) && (this.d.l() % 5 == 4) && (this.d.h()); i1 = 0)
      return true;
    return false;
  }

  private void r()
  {
    if (!this.e);
    View localView;
    do
    {
      do
      {
        return;
        localView = this.f.findViewById(2131493907);
      }
      while (localView == null);
      if ((am_CommonUtils.q(this.b)) && (a.F(this.b)) && (q()) && (a(localView)) && ((this.b instanceof ReaderActivity)))
      {
        Advert localAdvert = com.clilystudio.app.netbook.util.adutil.n.b(this.b, "page");
        if ((localAdvert != null) && (a.w(this.b, "rate_zssq_advert_reader_bookinfo")))
        {
          localView.setVisibility(0);
          a(localView, localAdvert);
          return;
        }
        localView.setVisibility(8);
        return;
      }
      localView.setVisibility(8);
    }
    while ((!this.e) || (a.a(this.b, "remove_ad_toast_showed" + com.clilystudio.app.netbook.util.I.a, false)) || (!q()) || (!a(localView)) || (am_CommonUtils.r(this.b)));
    e.a(this.b, "已为您自动免除广告");
    a.b(this.b, "remove_ad_toast_showed" + com.clilystudio.app.netbook.util.I.a, true);
  }

  private void s()
  {
    View localView = this.f.findViewById(2131493907);
    if (localView != null)
      localView.setVisibility(8);
  }

  private void t()
  {
    this.n.setOnClickListener(new B(this));
  }

  private void u()
  {
    this.o.setVisibility(0);
    this.o.setText("更换来源");
    this.o.setOnClickListener(new r(this));
  }

  public final void a()
  {
    this.p = true;
  }

  public final void a(int paramInt)
  {
    ((TextView)this.f.findViewById(2131493914)).setText(String.valueOf(paramInt));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    if ((this.h instanceof JustifyTextView))
      ((JustifyTextView)this.h).setHighLight(paramInt1, paramInt2);
  }

  public final void a(F paramF)
  {
    this.s = paramF;
  }

  public final void a(G paramG)
  {
    this.q = paramG;
  }

  public final void a(H paramH)
  {
    this.r = paramH;
  }

  public final void a(n paramn)
  {
    this.d = paramn;
    this.e = false;
    n();
    b(paramn);
    s();
  }

  public final void a(n paramn, boolean paramBoolean)
  {
    this.d = paramn;
    this.e = true;
    n();
    b(paramn);
    if (a(paramn.a()))
    {
      com.umeng.a.b.a(this.b, "paying_page_auto_purchase", com.clilystudio.app.netbook.util.I.b);
      I localI = new I(this, this.b, "自动购买中...");
      String[] arrayOfString = new String[2];
      arrayOfString[0] = am_CommonUtils.e().getToken();
      arrayOfString[1] = paramn.a().getId();
      localI.b(arrayOfString);
    }
    if (paramn.j() == 0)
    {
      int i1 = paramn.l();
      Reader localReader = MyApplication.a().b();
      if (o())
        localReader.a(i1 + 1, new p(this), true, false);
    }
  }

  public final boolean a(ReaderChapter paramReaderChapter)
  {
    if (!o())
      return false;
    if ((paramReaderChapter == null) || (!paramReaderChapter.isVip()))
      return false;
    if (a.a(this.b, "user_account_balance", 0) < paramReaderChapter.getCurrency())
      return false;
    String str = paramReaderChapter.getKey();
    if (str == null)
      str = (String)this.d.q().a().e().get(paramReaderChapter.getId());
    return str == null;
  }

  public final void b()
  {
    l();
  }

  public final void c()
  {
    l();
  }

  public final int d()
  {
    return this.h.getHeight();
  }

  public final void e()
  {
    if (this.d == null)
      return;
    if (f())
    {
      if (this.e)
        com.umeng.a.b.a(this.b, "paying_page_show", com.clilystudio.app.netbook.util.I.b);
      a(true);
      return;
    }
    if (this.p)
      m();
    this.j.setVisibility(8);
    this.g.setText(this.d.i());
    if (this.c.i())
      this.h.setText(this.d.a(this.b));
    while (true)
    {
      TextView localTextView = this.i;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(1 + this.d.j());
      arrayOfObject[1] = Integer.valueOf(this.d.k());
      localTextView.setText(String.format("%s/%s", arrayOfObject));
      a(false);
      return;
      this.h.setText(this.d.c());
    }
  }

  public final boolean f()
  {
    try
    {
      if (this.d == null)
        return false;
      ChapterLink[] arrayOfChapterLink = MyApplication.a().b().d();
      if ((arrayOfChapterLink != null) && (arrayOfChapterLink.length != 0))
      {
        int i1 = this.d.l();
        if (i1 < 0)
          i1 = 0;
        while (!arrayOfChapterLink[i1].isVip())
        {
          return false;
          if (i1 >= arrayOfChapterLink.length)
            i1 = -1 + arrayOfChapterLink.length;
        }
        String str = this.d.a().getKey();
        if (str == null)
        {
          str = (String)this.d.q().a().e().get(this.d.a().getId());
          if (str != null)
            this.d.a().setKey(str);
        }
        return str == null;
      }
    }
    catch (Exception localException)
    {
      com.umeng.a.b.a(this.b, "zhuishu_catch_exception", "PageBinder_needPay:" + localException.getMessage());
      return false;
    }
    return false;
  }

  public final void g()
  {
    if (this.e)
      com.umeng.a.b.a(this.b, "paying_page_cancel", com.clilystudio.app.netbook.util.I.b);
  }

  public final void h()
  {
    if (this.e);
    View localView;
    do
    {
      return;
      localView = this.f.findViewById(2131493907);
    }
    while (localView == null);
    localView.setVisibility(8);
  }

  public final View i()
  {
    return this.f;
  }

  public final n j()
  {
    return this.d;
  }

  public final void k()
  {
    ((TextView)this.f.findViewById(2131493606)).setText(a.format(Long.valueOf(System.currentTimeMillis())));
  }

  @l
  public final void onHideAdEvent(com.clilystudio.app.netbook.event.s params)
  {
    s();
  }

  @l
  public final void onLoginEvent(com.clilystudio.app.netbook.event.t paramt)
  {
    if (this.e)
    {
      Account localAccount = paramt.a();
      if (localAccount != null)
        new D(this, this.b, "正在获取资产信息...", localAccount.getToken()).b(new Void[0]);
    }
  }

  @l
  public final void onPayFinish(com.clilystudio.app.netbook.event.y paramy)
  {
    if ((this.e) && (paramy.a()))
    {
      C localC = new C(this, this.b, "正在更新资产信息...");
      String[] arrayOfString = new String[1];
      arrayOfString[0] = am_CommonUtils.e().getToken();
      localC.b(arrayOfString);
    }
  }

  @l
  public final void onRemoveAdEvent$2234193(a parama)
  {
    if (this.e)
      this.f.findViewById(2131493907).setVisibility(8);
  }

  @l
  public final void onShowThirdAd(com.clilystudio.app.netbook.event.B paramB)
  {
    if ((paramB == null) || (!am_CommonUtils.q(this.b)) || (!paramB.b().equals("page")));
    View localView;
    Advert localAdvert;
    do
    {
      do
      {
        return;
        localView = this.f.findViewById(2131493907);
      }
      while ((localView == null) || (!a.F(this.b)) || (!q()) || (!a(localView)) || (!(this.b instanceof ReaderActivity)));
      localAdvert = paramB.a();
    }
    while (localAdvert == null);
    localView.setVisibility(0);
    a(localView, localAdvert);
  }

  @l
  public final void onThemeChanged(com.clilystudio.app.netbook.event.C paramC)
  {
    r();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.o
 * JD-Core Version:    0.6.2
 */