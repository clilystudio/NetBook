package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.adapter.D;
import com.ushaqi.zhuishushenqi.model.ReviewSummary;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class ReviewListActivity extends BaseActivity
{
  private static final String[] q = { "all", "xhqh", "wxxx", "dsyn", "lsjs", "yxjj", "khly", "cyjk", "hmzc", "xdyq", "gdyq", "hxyq", "dmtr" };
  private static final int[] r = { 2131034548, 2131034559, 2131034557, 2131034551, 2131034556, 2131034560, 2131034555, 2131034549, 2131034553, 2131034558, 2131034552, 2131034554, 2131034550 };
  private dp a;
  private do b;
  private PullToRefreshListView c;
  private ListView e;
  private View f;
  private View g;
  private TextView h;
  private D i;
  private List<ReviewSummary> j = new ArrayList();
  private TextView k;
  private TextView l;
  private TextView m;
  private ImageView n;
  private ImageView o;
  private ImageView p;
  private String s;
  private String t;
  private String u;
  private boolean v;
  private j w = new dg(this);

  private PopupWindow a(View paramView)
  {
    PopupWindow localPopupWindow = new PopupWindow(paramView, -1, -1);
    localPopupWindow.setFocusable(true);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    localPopupWindow.setOutsideTouchable(true);
    localPopupWindow.setOnDismissListener(new de(this));
    return localPopupWindow;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903090);
    a("书评区", 2130837866, new cJ(this), "写书评");
    if (paramBundle != null)
    {
      this.s = paramBundle.getString("savedReviewDur");
      this.t = paramBundle.getString("savedReviewType");
    }
    for (this.u = paramBundle.getString("savedReviewSort"); ; this.u = "updated")
    {
      this.g = findViewById(2131493085);
      this.h = ((TextView)findViewById(2131493100));
      this.c = ((PullToRefreshListView)findViewById(2131493099));
      this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
      View localView1 = findViewById(2131493105);
      View localView2 = findViewById(2131493108);
      View localView3 = findViewById(2131493111);
      this.k = ((TextView)findViewById(2131493106));
      this.l = ((TextView)findViewById(2131493109));
      this.m = ((TextView)findViewById(2131493112));
      this.n = ((ImageView)findViewById(2131493107));
      this.o = ((ImageView)findViewById(2131493110));
      this.p = ((ImageView)findViewById(2131493113));
      localView1.setOnClickListener(new cU(this));
      localView2.setOnClickListener(new df(this));
      localView3.setOnClickListener(new dh(this));
      this.e = ((ListView)this.c.h());
      this.f = LayoutInflater.from(this).inflate(2130903325, null);
      if (a.j())
        this.e.setFooterDividersEnabled(false);
      this.e.addFooterView(this.f);
      this.c.setOnRefreshListener(new di(this));
      this.e.setOnItemClickListener(new dk(this));
      this.i = new D(getLayoutInflater());
      this.e.setAdapter(this.i);
      this.a = new dp(this, 0);
      dp localdp = this.a;
      String[] arrayOfString = new String[3];
      arrayOfString[0] = this.s;
      arrayOfString[1] = this.t;
      arrayOfString[2] = this.u;
      localdp.b(arrayOfString);
      a.u(this);
      b.a(this, "BookReviewListActivity_Opened");
      return;
      this.s = "all";
      this.t = q[0];
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.c.setRefreshing();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("savedReviewDur", this.s);
    paramBundle.putString("savedReviewType", this.t);
    paramBundle.putString("savedReviewSort", this.u);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ReviewListActivity
 * JD-Core Version:    0.6.0
 */