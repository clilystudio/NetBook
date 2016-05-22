package com.clilystudio.app.netbook.ui;

import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.squareup.a.l;
import com.clilystudio.app.netbook.adapter.NotificationAdapter;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.NotificationItem;
import java.util.ArrayList;
import java.util.List;

public abstract class NotifFragment extends Fragment
{
  private b a = b.a();
  private bw b;
  private bx c;
  private PullToRefreshListView d;
  private ListView e;
  private View f;
  private View g;
  private TextView h;
  private View i;
  private NotificationAdapter j;
  private List<NotificationItem> k = new ArrayList();
  private int l;
  private Account m;
  private j n = new bv(this);

  private void a(boolean paramBoolean)
  {
    if (this.g != null)
      this.g.setVisibility(8);
    if (this.h != null)
    {
      this.h.setVisibility(0);
      this.h.setText("请登录后查看");
    }
    this.i.setVisibility(8);
    if ((paramBoolean) && (this.k != null) && (this.j != null))
    {
      this.k.clear();
      this.j.a(this.k);
    }
  }

  protected abstract NotifFragment.Type a();

  protected void a(ListView paramListView)
  {
  }

  protected abstract NotificationAdapter b();

  protected final void c()
  {
    this.c = new bx(this, (byte)0);
    bx localbx = this.c;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.m.getToken();
    localbx.b(arrayOfString);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.m = am_CommonUtils.e();
    this.f = LayoutInflater.from(getActivity()).inflate(2130903325, null);
    this.e = ((ListView)this.d.h());
    if (a.i())
      this.e.setFooterDividersEnabled(false);
    this.e.addFooterView(this.f);
    this.f.setVisibility(8);
    this.d.setOnRefreshListener(new bs(this));
    this.e.setOnItemClickListener(new bu(this));
    this.j = b();
    a(this.e);
    this.e.setAdapter(this.j);
    if (this.m == null)
    {
      a(false);
      return;
    }
    this.c = new bx(this, (byte)0);
    bx localbx = this.c;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.m.getToken();
    localbx.b(arrayOfString);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903333, paramViewGroup, false);
    ButterKnife.inject(this, localView);
    this.d = ((PullToRefreshListView)localView.findViewById(2131493099));
    this.g = localView.findViewById(2131493085);
    this.h = ((TextView)localView.findViewById(2131493100));
    this.i = localView.findViewById(2131493086);
    this.i.setOnClickListener(new br(this));
    return localView;
  }

  @l
  public void onNewMsgClickEvent$154ad029(a parama)
  {
    if ((this.d != null) && (this.l > 0))
      this.d.setRefreshing();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.NotifFragment
 * JD-Core Version:    0.6.2
 */