package com.clilystudio.app.netbook.ui.user;

import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.support.v4.app.Fragment;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.app.netbook.adapter.F;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.TopicPost;
import com.clilystudio.app.netbook.widget.LabelPtrListView;
import java.util.ArrayList;
import java.util.List;

public class MyFavTopicFragment extends Fragment
{
  private z a;
  private A b;
  private LabelPtrListView c;
  private ListView d;
  private View e;
  private View f;
  private TextView g;
  private F h;
  private List<TopicPost> i = new ArrayList();
  private int j;
  private String k;
  private j l = new x(this);

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getMenuInfo() instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramMenuItem.getMenuInfo();
      if (paramMenuItem.getItemId() == 0)
      {
        TopicPost localTopicPost = (TopicPost)this.d.getAdapter().getItem(localAdapterContextMenuInfo.position);
        y localy = new y(this, getActivity(), 2131034218);
        String[] arrayOfString = new String[2];
        arrayOfString[0] = this.k;
        arrayOfString[1] = localTopicPost.get_id();
        localy.b(arrayOfString);
      }
    }
    return super.onContextItemSelected(paramMenuItem);
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    TopicPost localTopicPost;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      localTopicPost = (TopicPost)this.d.getAdapter().getItem(localAdapterContextMenuInfo.position);
      if (localTopicPost == null)
        break label69;
    }
    label69: for (String str = localTopicPost.getTitle(); ; str = "提示")
    {
      paramContextMenu.setHeaderTitle(str);
      paramContextMenu.add(0, 0, 0, 2131034367);
      return;
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903221, paramViewGroup, false);
    this.f = localView.findViewById(2131493085);
    this.g = ((TextView)localView.findViewById(2131493100));
    this.c = ((LabelPtrListView)localView.findViewById(2131493099));
    this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
    this.e = LayoutInflater.from(getActivity()).inflate(2130903325, null);
    this.d = ((ListView)this.c.h());
    if (a.i())
      this.d.setFooterDividersEnabled(false);
    this.d.addFooterView(this.e);
    this.e.setVisibility(8);
    registerForContextMenu(this.d);
    this.c.setOnRefreshListener(new u(this));
    this.d.setOnItemClickListener(new w(this));
    this.h = new F(getLayoutInflater(null));
    this.d.setAdapter(this.h);
    Account localAccount = am_CommonUtils.e();
    if (localAccount == null)
    {
      this.f.setVisibility(8);
      this.g.setVisibility(0);
      this.g.setText("请登录后查看");
      return localView;
    }
    this.k = localAccount.getToken();
    this.b = new A(this, (byte)0);
    A localA = this.b;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.k;
    localA.b(arrayOfString);
    return localView;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.MyFavTopicFragment
 * JD-Core Version:    0.6.2
 */