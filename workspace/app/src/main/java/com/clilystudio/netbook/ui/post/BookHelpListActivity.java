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
import com.clilystudio.netbook.adapter.d;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class BookHelpListActivity extends BaseActivity
{
  private av a;
  private au b;
  private PullToRefreshListView c;
  private ListView e;
  private View f;
  private View g;
  private TextView h;
  private d i;
  private List<BookHelpSummary> j = new ArrayList();
  private TextView k;
  private TextView l;
  private ImageView m;
  private ImageView n;
  private String o;
  private String p;
  private boolean q;
  private j r = new ak(this);

  private PopupWindow a(View paramView)
  {
    PopupWindow localPopupWindow = new PopupWindow(paramView, -1, -1);
    localPopupWindow.setFocusable(true);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    localPopupWindow.setOutsideTouchable(true);
    localPopupWindow.setOnDismissListener(new aj(this));
    return localPopupWindow;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903086);
    a("书荒区", 2130837866, new af(this), "编辑书荒");
    if (paramBundle != null)
      this.o = paramBundle.getString("savedHelpDuration");
    for (this.p = paramBundle.getString("savedHelpSort"); ; this.p = "updated")
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
      localView1.setOnClickListener(new al(this));
      localView2.setOnClickListener(new am(this));
      this.e = ((ListView)this.c.h());
      if (a.j())
        this.e.setFooterDividersEnabled(false);
      this.f = LayoutInflater.from(this).inflate(2130903325, null);
      this.f.setVisibility(8);
      this.e.addFooterView(this.f);
      this.c.setOnRefreshListener(new an(this));
      this.e.setOnItemClickListener(new ap(this));
      this.i = new d(getLayoutInflater());
      this.e.setAdapter(this.i);
      this.a = new av(this, 0);
      av localav = this.a;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = this.o;
      arrayOfString[1] = this.p;
      localav.b(arrayOfString);
      a.u(this);
      b.a(this, "BookHelpListActivity_Opened");
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
    paramBundle.putString("savedHelpDuration", this.o);
    paramBundle.putString("savedHelpSort", this.p);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.BookHelpListActivity
 * JD-Core Version:    0.6.0
 */