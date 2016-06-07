package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import butterknife.ButterKnife;
import cn.sharesdk.framework.ShareSDK;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.event.o;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.reader.txt.ScanTxtFileActivity;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.WifiActivity;
import com.clilystudio.netbook.ui.game.GameTabActivity;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity.Source;
import com.clilystudio.netbook.ui.user.MyMessageActivity;
import com.clilystudio.netbook.ui.user.UserInfoActivity;
import com.clilystudio.netbook.util.J;
import com.clilystudio.netbook.util.Z;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.s;
import com.clilystudio.netbook.widget.TabWidgetV2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class HomeActivity extends HomeParentActivity
  implements ViewPager.OnPageChangeListener, View.OnClickListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  private static final String a = HomeActivity.class.getSimpleName();
  private static HomeActivity w;
  private long b = 0L;
  private boolean c = true;
  private List<Fragment> e = new ArrayList();
  private TabHost f;
  private ViewPager g;
  private i h;
  private PopupWindow i;
  private PopupWindow j;
  private View k;
  private SmartImageView l;
  private TextView m;
  private TextView n;
  private ImageView o;
  private Account p;
  private ImageView q;
  private ImageView r;
  private ViewGroup s;
  private WebView t;
  private boolean u;
  private String[] v;

  private void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.h.getCount()))
    {
      this.g.setCurrentItem(paramInt, true);
      if (paramInt == -1 + this.h.getCount())
      {
        boolean bool = com.arcsoft.hpay100.a.a.r(this, "switch_17kflow");
        float f1 = j();
        double d = Math.random();
        if ((bool) && (f1 > d) && (!this.u))
          new g(this, 0).b(new Void[0]);
        this.u = true;
      }
    }
  }

  private void a(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("file_name");
    if (str != null)
    {
      if ("nonsupport".equals(str))
        com.clilystudio.netbook.util.e.a(this, "很抱歉，暂不支持此格式的图书");
    }
    else
      return;
    Intent localIntent = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
    localIntent.putExtra("file_name", str);
    startActivity(localIntent);
  }

  private void a(Account paramAccount)
  {
    J.a(this).a(paramAccount);
  }

  private void a(User paramUser)
  {
    if (paramUser == null);
    do
      return;
    while (this.k == null);
    this.l.setImageUrl(paramUser.getFullAvatar());
    this.m.setText(paramUser.getNickname());
  }

  private static void a(List<BookReadRecord> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      BookReadRecord localBookReadRecord = (BookReadRecord)localIterator.next();
      BookSubRecord.create("book:" + localBookReadRecord.getBookId());
    }
  }

  public static HomeActivity b()
  {
    return w;
  }

  private void e(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 2131493485:
      startActivity(GameTabActivity.a(this));
      com.arcsoft.hpay100.a.a.n(this, "home_ab_game");
      return;
    case 2131493486:
      startActivity(SearchActivity.a(this));
      com.arcsoft.hpay100.a.a.n(this, "home_ab_search");
      return;
    case 2131493487:
    }
    l();
    com.arcsoft.hpay100.a.a.n(this, "home_ab_more");
  }

  private void h()
  {
    Iterator localIterator = BookSubRecord.getAll().iterator();
    while (localIterator.hasNext())
    {
      BookSubRecord localBookSubRecord = (BookSubRecord)localIterator.next();
      com.xiaomi.mipush.sdk.d.b(getApplicationContext(), localBookSubRecord.pushId, null);
    }
  }

  private void i()
  {
    Iterator localIterator = BookUnSubRecord.getAll().iterator();
    while (localIterator.hasNext())
    {
      BookUnSubRecord localBookUnSubRecord = (BookUnSubRecord)localIterator.next();
      com.xiaomi.mipush.sdk.d.c(getApplicationContext(), localBookUnSubRecord.pushId, null);
    }
  }

  private float j()
  {
    String str = com.umeng.a.b.b(this, "rate_17kflow");
    try
    {
      float f1 = Float.parseFloat(str);
      return f1;
    }
    catch (Exception localException)
    {
    }
    return 0.0F;
  }

  private void k()
  {
    if (this.k != null)
    {
      this.l.setImageResource(2130837835);
      this.m.setText("请登录");
    }
  }

  private void l()
  {
    try
    {
      if ((this.j == null) || (!this.j.isShowing()))
      {
        this.j = new PopupWindow(getLayoutInflater().inflate(2130903227, null, false), -1, com.arcsoft.hpay100.a.a.L(this));
        this.j.setAnimationStyle(2131165629);
        this.j.showAtLocation(a().a(), 0, 0, 0);
      }
      View localView = findViewById(2131493096);
      if (this.i == null)
      {
        this.i = new PopupWindow(this.k, getResources().getDimensionPixelSize(2131099746), -2);
        this.i.setFocusable(true);
        this.i.setOutsideTouchable(true);
        this.i.setBackgroundDrawable(new ColorDrawable(0));
        this.i.getContentView().setFocusableInTouchMode(true);
        this.i.getContentView().setFocusable(true);
        this.i.getContentView().setOnKeyListener(new c(this));
      }
      this.i = this.i;
      this.i.setAnimationStyle(2131165628);
      this.i.showAtLocation(localView, 53, com.arcsoft.hpay100.a.a.a(this, 5.0F), am.l(this) + am.k(this));
      this.i.setOnDismissListener(new d(this));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void m()
  {
    if ((this.i != null) && (this.i.isShowing()))
      this.i.dismiss();
    n();
  }

  private void n()
  {
    if ((this.j != null) && (this.j.isShowing()))
      this.j.dismiss();
  }

  // ERROR //
  private String o()
  {
    v1 = 0x0;
    v0 = p0.getApplicationInfo();
    v0 = v0.Landroid/content/pm/ApplicationInfo;->sourceDir;
    :try_start_0
    v2 = new ZipFile();
    v2.<init>(v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v3 = v2.entries();
    :cond_0
    v0 = v3.hasMoreElements();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v3.nextElement();
    check-cast v0, Ljava/util/zip/ZipEntry;
    v4 = v0.getName();
    v5 = "META-INF/DATA";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = new BufferedReader();
    v4 = new InputStreamReader();
    v0 = v2.getInputStream(v0);
    v4.<init>(v0);
    v3.<init>(v4);
    v0 = new StringBuilder();
    v0.<init>();
    :goto_0
    v4 = v3.readLine();
    if (v4 == 0) {
//       if-eqz v4, :cond_2
    }
    v0.append(v4);
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    :try_start_2
    v0.printStackTrace();
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    :cond_1
    :goto_2
    v0 = v1;
    :goto_3
    return v0;
    :cond_2
    :try_start_4
    v3.close();
    v0.toString();
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    move-result-object v0
    :try_start_5
    v2.close();
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    goto :goto_3
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_3
    :cond_3
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    goto :goto_2
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_3
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_4
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_7
    v2.close();
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    :cond_4
    :goto_5
    throw v0
    :catch_4
    move-exception v1
    v1.printStackTrace();
    goto :goto_5
    :catchall_1
    move-exception v0
    goto :goto_4
    :catch_5
    move-exception v0
    v2 = v1;
    goto :goto_1
  }

  public final HomeShelfFragment a(String paramString)
  {
    HomeShelfFragment localHomeShelfFragment = (HomeShelfFragment)getSupportFragmentManager().findFragmentByTag(paramString);
    if (localHomeShelfFragment == null)
    {
      Log.i(a, "getHomeShelfFragment ");
      localHomeShelfFragment = HomeShelfFragment.b();
    }
    return localHomeShelfFragment;
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this);
    localView.setMinimumHeight(0);
    localView.setMinimumWidth(0);
    return localView;
  }

  public final void f()
  {
    a(0);
  }

  public final HomeFindFragment g(String paramString)
  {
    HomeFindFragment localHomeFindFragment = (HomeFindFragment)getSupportFragmentManager().findFragmentByTag(paramString);
    if (localHomeFindFragment == null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("game_center_show", this.c);
      localHomeFindFragment = HomeFindFragment.a(localBundle);
    }
    return localHomeFindFragment;
  }

  public final void g()
  {
    this.g.setCurrentItem(2, true);
  }

  @com.squareup.a.l
  public void onAccountUpdated(com.clilystudio.netbook.event.a parama)
  {
    Account localAccount = am.e();
    if (localAccount != null)
    {
      this.l.setImageUrl(localAccount.getUser().getFullAvatar());
      this.m.setText(localAccount.getUser().getNickname());
    }
  }

  public void onBackPressed()
  {
    if ((this.e != null) && (this.e.size() > 0) && ((this.e.get(0) instanceof HomeShelfFragment)) && (((HomeShelfFragment)this.e.get(0)).c()))
    {
      ((HomeShelfFragment)this.e.get(0)).e();
      return;
    }
    long l1 = System.currentTimeMillis();
    if (as.c())
    {
      uk.me.lewisdeane.ldialogs.h localh = new uk.me.lewisdeane.ldialogs.h(this);
      localh.e = "即将退出听书，有声小说是否继续播放？";
      localh.a("都关了", new f(this)).b("继续放", new e(this)).b();
      return;
    }
    if (l1 - this.b > 2000L)
    {
      this.b = l1;
      Toast.makeText(this, 2131034373, 0).show();
      return;
    }
    super.onBackPressed();
  }

  @com.squareup.a.l
  public void onBookShelfRefresh(BookShelfRefreshEvent paramBookShelfRefreshEvent)
  {
    if (this.p != null)
      a(this.p);
  }

  public void onClick(View paramView)
  {
    m();
    switch (paramView.getId())
    {
    case 2131493489:
    case 2131493490:
    case 2131493492:
    case 2131493493:
    case 2131493494:
    case 2131493495:
    case 2131493497:
    case 2131493499:
    case 2131493501:
    case 2131493503:
    case 2131493505:
    case 2131493506:
    default:
      return;
    case 2131493488:
      if (this.p != null)
      {
        m();
        startActivity(UserInfoActivity.a(this, this.p.getToken()));
        return;
      }
      Intent localIntent2 = AuthLoginActivity.a(this);
      localIntent2.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
      startActivityForResult(localIntent2, 100);
      return;
    case 2131493491:
      if (this.p != null)
      {
        m();
        com.arcsoft.hpay100.a.a.b(this, "key_enter_msg_time", System.currentTimeMillis());
        AccountInfo localAccountInfo = AccountInfo.getOrCreate(this.p.getToken());
        localAccountInfo.setPrevUnimpNotif(J.a(this).b());
        localAccountInfo.save();
        com.umeng.a.b.a(this, "view_notification");
        com.clilystudio.netbook.event.i.a().c(new w());
        startActivity(new Intent(this, MyMessageActivity.class));
        return;
      }
      startActivityForResult(AuthLoginActivity.a(this), 100);
      return;
    case 2131493496:
      if (this.p != null)
      {
        m();
        new Z(this, this.p.getToken()).a(false);
        return;
      }
      startActivityForResult(AuthLoginActivity.a(this), 100);
      return;
    case 2131493502:
      startActivity(CommonPostListActivity.a(this, "android-feedback"));
      return;
    case 2131493504:
      Intent localIntent1 = new Intent(this, HomeTransparentActivity.class);
      if (com.arcsoft.hpay100.a.a.a(this, "customer_night_theme", false))
      {
        this.n.setText(2131034366);
        this.o.setImageResource(2130838181);
        com.arcsoft.hpay100.a.a.b(this, "customer_night_theme", false);
        com.arcsoft.hpay100.a.a.b(this, "night_mode", false);
        com.arcsoft.hpay100.a.a.C(this);
        localIntent1.putExtra("onThemeChange", 0);
      }
      while (true)
      {
        startActivity(localIntent1);
        overridePendingTransition(2130968606, 2130968607);
        return;
        this.n.setText(2131034365);
        this.o.setImageResource(2130838180);
        com.arcsoft.hpay100.a.a.b(this, "customer_night_theme", true);
        com.arcsoft.hpay100.a.a.b(this, "night_mode", true);
        com.umeng.a.b.a(this, "start_night_theme_home");
        com.arcsoft.hpay100.a.a.B(this);
        localIntent1.putExtra("onThemeChange", 1);
      }
    case 2131493507:
      startActivity(new Intent(this, SettingsActivity.class));
      return;
    case 2131493498:
      startActivity(new Intent(this, ScanTxtFileActivity.class));
      return;
    case 2131493500:
      if (!com.arcsoft.hpay100.a.a.d())
      {
        com.clilystudio.netbook.util.e.a(this, "无法使用，请检查SD卡是否挂载");
        return;
      }
      if (com.arcsoft.hpay100.a.a.e() <= 20000L)
      {
        com.clilystudio.netbook.util.e.a(this, "SD卡剩余容量不足");
        return;
      }
      startActivity(new Intent(this, WifiActivity.class));
      return;
    case 2131493485:
      e(paramView.getId());
      return;
    case 2131493486:
      e(paramView.getId());
      return;
    case 2131493487:
    }
    e(paramView.getId());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    ButterKnife.inject(this);
    w = this;
    android.support.v7.app.a locala = a();
    locala.c(false);
    locala.a(false);
    locala.a(2130903226);
    locala.d(true);
    this.q = ((ImageView)locala.a().findViewById(2131493487));
    ImageView localImageView = (ImageView)locala.a().findViewById(2131493486);
    this.r = ((ImageView)locala.a().findViewById(2131493485));
    this.q.setOnClickListener(this);
    localImageView.setOnClickListener(this);
    this.r.setOnClickListener(this);
    TabWidgetV2 localTabWidgetV2;
    LayoutInflater localLayoutInflater;
    int i1;
    label297: TabHost.TabSpec localTabSpec;
    View localView8;
    if (com.arcsoft.hpay100.a.a.w(this))
    {
      this.r.setVisibility(0);
      this.c = com.arcsoft.hpay100.a.a.x(this);
      if (!this.c)
        this.r.setVisibility(8);
      com.clilystudio.netbook.event.i.a().a(this);
      this.f = ((TabHost)findViewById(2131493096));
      localTabWidgetV2 = (TabWidgetV2)findViewById(16908307);
      this.g = ((ViewPager)findViewById(2131493097));
      this.h = new i(this, getSupportFragmentManager());
      this.g.setOffscreenPageLimit(3);
      this.g.setAdapter(this.h);
      this.g.setOnPageChangeListener(this);
      this.f.setup();
      this.f.setOnTabChangedListener(this);
      if (this.f.getTabWidget().getTabCount() > 0)
      {
        this.f.setCurrentTab(0);
        this.f.clearAllTabs();
      }
      localLayoutInflater = getLayoutInflater();
      i1 = 0;
      if (i1 >= this.h.getCount())
        break label469;
      localTabSpec = this.f.newTabSpec("tab" + i1);
      localTabSpec.setContent(this);
      if ((i1 != 1) || (!com.arcsoft.hpay100.a.a.a(this, "FRIST_RUN_POST", true)) || (!com.arcsoft.hpay100.a.a.r(this, "switch_news")))
        break label455;
      localView8 = localLayoutInflater.inflate(2130903230, null);
      this.s = ((ViewGroup)localView8);
    }
    label455: for (View localView7 = localView8; ; localView7 = localLayoutInflater.inflate(2130903229, null))
    {
      ((TextView)localView7.findViewById(2131493509)).setText((String)this.h.getPageTitle(i1));
      localTabSpec.setIndicator(localView7);
      this.f.addTab(localTabSpec);
      i1++;
      break label297;
      this.r.setVisibility(8);
      break;
    }
    label469: this.p = am.e();
    this.k = getLayoutInflater().inflate(2130903228, null);
    View localView1 = this.k.findViewById(2131493488);
    View localView2 = this.k.findViewById(2131493491);
    View localView3 = this.k.findViewById(2131493496);
    View localView4 = this.k.findViewById(2131493502);
    View localView5 = this.k.findViewById(2131493507);
    View localView6 = this.k.findViewById(2131493504);
    this.k.findViewById(2131493498).setOnClickListener(this);
    this.k.findViewById(2131493500).setOnClickListener(this);
    localView1.setOnClickListener(this);
    localView2.setOnClickListener(this);
    localView3.setOnClickListener(this);
    localView4.setOnClickListener(this);
    localView5.setOnClickListener(this);
    localView6.setOnClickListener(this);
    this.l = ((SmartImageView)localView1.findViewById(2131493489));
    this.m = ((TextView)localView1.findViewById(2131493490));
    if (this.p != null)
    {
      a(this.p.getUser());
      this.n = ((TextView)this.k.findViewById(2131493506));
      this.o = ((ImageView)this.k.findViewById(2131493505));
      if (!com.arcsoft.hpay100.a.a.a(this, "customer_night_theme", false))
        break label985;
      this.n.setText(2131034365);
      this.o.setImageResource(2130838180);
    }
    while (true)
    {
      if (!com.arcsoft.hpay100.a.a.a(this, "bookPushRecords", false))
      {
        List localList = BookReadRecord.getAll();
        if ((localList != null) && (!localList.isEmpty()))
          a(localList);
        com.arcsoft.hpay100.a.a.b(this, "bookPushRecords", true);
      }
      h();
      i();
      new Handler().postDelayed(new l(this), 3000L);
      if (this.p != null)
      {
        com.clilystudio.netbook.util.e.c("launch");
        h localh = new h(this);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.p.getToken();
        localh.b(arrayOfString);
      }
      if (paramBundle != null)
        localTabWidgetV2.setIndex(paramBundle.getInt("extra_index"));
      findViewById(2131493487).setOnClickListener(this);
      findViewById(2131493486).setOnClickListener(this);
      if (this != null)
      {
        Account localAccount = am.e();
        if (localAccount != null)
          new Z(this, localAccount.getToken()).a(true);
      }
      a(getIntent());
      new j(this).b(new String[0]);
      new Handler().postDelayed(new a(this), 10000L);
      return;
      k();
      break;
      label985: this.n.setText(2131034366);
      this.o.setImageResource(2130838181);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    ShareSDK.stopSDK(this);
    com.clilystudio.netbook.event.i.a().b(this);
    this.p = null;
    if (this.t != null)
    {
      this.t.clearHistory();
      this.t.clearCache(true);
      this.t.freeMemory();
      this.t.pauseTimers();
      this.t.destroy();
    }
    this.u = false;
    com.arcsoft.hpay100.a.a.b(this, "search_hot_words_date", 0);
  }

  @com.squareup.a.l
  public void onEnterTweet(o paramo)
  {
    this.s.getChildAt(1).setVisibility(8);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0))
    {
      l();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  @com.squareup.a.l
  public void onLoginEvent(t paramt)
  {
    this.p = paramt.a();
    if (this.p != null)
    {
      a(this.p.getUser());
      if (paramt.b() == AuthLoginActivity.Source.HOME)
        break label99;
    }
    label99: for (boolean bool = true; ; bool = false)
    {
      new Z(this, this.p.getToken()).a(bool);
      a(this.p);
      h localh = new h(this);
      String[] arrayOfString = new String[1];
      arrayOfString[0] = this.p.getToken();
      localh.b(arrayOfString);
      return;
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    a(paramIntent);
  }

  @com.squareup.a.l
  public void onNotifEvent(w paramw)
  {
    int i1 = J.a(this).e();
    View localView = this.k.findViewById(2131493495);
    TextView localTextView = (TextView)this.k.findViewById(2131493494);
    if (i1 > 0)
    {
      localTextView.setVisibility(0);
      localView.setVisibility(8);
      localTextView.setText(String.valueOf(i1));
      if (this.q != null)
        this.q.setImageResource(2130837870);
    }
    do
    {
      while (true)
      {
        return;
        if (i1 != -1)
          break;
        localTextView.setVisibility(8);
        localView.setVisibility(0);
        if (this.q == null)
          continue;
        this.q.setImageResource(2130837870);
        return;
      }
      localTextView.setVisibility(8);
      localView.setVisibility(8);
    }
    while (this.q == null);
    this.q.setImageResource(2130837871);
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    ((TabWidgetV2)this.f.getTabWidget()).a(paramInt1, paramInt2);
  }

  public void onPageSelected(int paramInt)
  {
    TabWidget localTabWidget = this.f.getTabWidget();
    int i1 = localTabWidget.getDescendantFocusability();
    localTabWidget.setDescendantFocusability(393216);
    this.f.setCurrentTab(paramInt);
    localTabWidget.setDescendantFocusability(i1);
  }

  public void onPause()
  {
    super.onPause();
    if ((this.i != null) && (this.i.isShowing()) && (this.j != null) && (this.j.isShowing()))
      m();
  }

  public void onResume()
  {
    super.onResume();
    com.clilystudio.netbook.api.e.a("1".equals(com.umeng.a.b.b(this, "use_http_dns")));
    if (com.arcsoft.hpay100.a.a.l())
      new s(this).b(new Void[0]);
    Account localAccount = am.e();
    if (localAccount != null)
    {
      this.p = localAccount;
      a(localAccount.getUser());
      return;
    }
    this.p = null;
    k();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("extra_index", this.f.getCurrentTab());
  }

  public void onTabChanged(String paramString)
  {
    a(this.f.getCurrentTab());
  }

  @com.squareup.a.l
  public void onUpdateGameCenter(H paramH)
  {
    boolean bool = true;
    int i1;
    if (this.c == paramH.a())
    {
      i1 = 0;
      if (i1 != 0)
      {
        if ((!paramH.a()) || (!com.arcsoft.hpay100.a.a.w(this)))
          break label88;
        label33: this.c = bool;
        if (!this.c)
          break label93;
        this.r.setVisibility(0);
      }
    }
    while (true)
    {
      HomeFindFragment localHomeFindFragment = (HomeFindFragment)this.e.get(2);
      if (localHomeFindFragment != null)
        localHomeFindFragment.a(this.c);
      return;
      i1 = bool;
      break;
      label88: bool = false;
      break label33;
      label93: this.r.setVisibility(4);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.HomeActivity
 * JD-Core Version:    0.6.0
 */