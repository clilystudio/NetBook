package com.clilystudio.netbook.ui.post;

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
import com.clilystudio.netbook.adapter.o;
import com.clilystudio.netbook.model.GirlTopicSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class GirlTopicListActivity extends BaseActivity
{
  private bJ a;
  private bI b;
  private PullToRefreshListView c;
  private ListView e;
  private View f;
  private View g;
  private TextView h;
  private o i;
  private List<GirlTopicSummary> j = new ArrayList();
  private TextView k;
  private TextView l;
  private ImageView m;
  private ImageView n;
  private String o;
  private String p;
  private boolean q;
  private j r = new by(this);

  private PopupWindow a(View paramView)
  {
    PopupWindow localPopupWindow = new PopupWindow(paramView, -1, -1);
    localPopupWindow.setFocusable(true);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    localPopupWindow.setOutsideTouchable(true);
    localPopupWindow.setOnDismissListener(new bx(this));
    return localPopupWindow;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903104);
    a("女生区", 2130837866, new bt(this), "编辑话题");
    if (paramBundle != null)
      this.o = paramBundle.getString("savedGirlDuration");
    for (this.p = paramBundle.getString("savedGirlSort"); ; this.p = "updated")
    {
      this.g = findViewById(2131493085);
      this.h = ((TextView)findViewById(2131493100));
      this.c = ((PullToRefreshListView)findViewById(2131493099));
      this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
      View localView1 = findViewById(2131493376);
      View localView2 = findViewById(2131493380);
      this.k = ((TextView)findViewById(2131493378));
      this.l = ((TextView)findViewById(2131493381));
      this.m = ((ImageView)findViewById(2131493379));
      this.n = ((ImageView)findViewById(2131493382));
      localView1.setOnClickListener(new bz(this));
      localView2.setOnClickListener(new bA(this));
      this.e = ((ListView)this.c.h());
      if (a.j())
        this.e.setFooterDividersEnabled(false);
      this.f = LayoutInflater.from(this).inflate(2130903325, null);
      this.f.setVisibility(8);
      this.e.addFooterView(this.f);
      this.c.setOnRefreshListener(new bB(this));
      this.e.setOnItemClickListener(new bD(this));
      this.i = new o(getLayoutInflater());
      this.e.setAdapter(this.i);
      this.a = new bJ(this, 0);
      bJ localbJ = this.a;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.o;
      arrayOfString[1] = this.p;
      localbJ.b(arrayOfString);
      a.u(this);
      b.a(this, "GirlTopicListActivity_Opened");
      return;
      this.o = "all";
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
    paramBundle.putString("savedGirlDuration", this.o);
    paramBundle.putString("savedGirlSort", this.p);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.GirlTopicListActivity
 * JD-Core Version:    0.6.0
 */