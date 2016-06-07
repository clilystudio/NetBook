package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.ushaqi.zhuishushenqi.adapter.X;
import com.ushaqi.zhuishushenqi.model.UGCBookListRoot.UGCBook;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

public class UGCMainListFragment extends Fragment
  implements AdapterView.OnItemClickListener
{
  private PullToRefreshListView a;
  private ListView b;
  private View c;
  private X d;
  private View e;
  private TextView f;
  private at g;
  private as h;
  private List<UGCBookListRoot.UGCBook> i = new ArrayList();
  private String j;
  private j k = new ar(this);

  public static UGCMainListFragment a(String paramString1, String paramString2)
  {
    UGCMainListFragment localUGCMainListFragment = new UGCMainListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("sort", paramString1);
    localBundle.putString("duration", paramString2);
    localUGCMainListFragment.setArguments(localBundle);
    return localUGCMainListFragment;
  }

  public final void a()
  {
    this.e.setVisibility(0);
    this.i.clear();
    this.d.a(this.i);
    this.g = new at(this, 0);
    this.g.b(new String[0]);
  }

  public final void a(String paramString)
  {
    this.j = paramString;
  }

  public final String b()
  {
    if (getActivity().getString(2131034561).equals(this.j))
      return "";
    try
    {
      String str = URLEncoder.encode(this.j, "utf-8");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return this.j;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    new at(this, 0).b(new String[0]);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    View localView = paramLayoutInflater.inflate(2130903220, paramViewGroup, false);
    this.a = ((PullToRefreshListView)localView.findViewById(2131493099));
    this.b = ((ListView)this.a.h());
    a.a(getActivity(), this.b);
    this.b.setOnItemClickListener(this);
    this.e = localView.findViewById(2131493085);
    this.f = ((TextView)localView.findViewById(2131493100));
    LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
    this.c = localLayoutInflater.inflate(2130903325, null);
    if (a.i())
      this.b.setFooterDividersEnabled(false);
    this.b.addFooterView(this.c);
    this.c.setVisibility(8);
    this.a.setOnRefreshListener(new ap(this));
    this.d = new X(localLayoutInflater);
    this.b.setAdapter(this.d);
    return localView;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int m = paramInt - this.b.getHeaderViewsCount();
    if ((m >= 0) && (m < this.i.size()))
    {
      UGCBookListRoot.UGCBook localUGCBook = (UGCBookListRoot.UGCBook)this.i.get(m);
      if (localUGCBook != null)
      {
        Intent localIntent = new Intent(getActivity(), UGCDetailActivity.class);
        localIntent.putExtra("book_id", localUGCBook.get_id());
        startActivity(localIntent);
      }
    }
  }

  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    String str = ((UGCMainActivity)getActivity()).b();
    if ((paramBoolean) && (!this.j.equals(str)))
    {
      this.j = str;
      a();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.UGCMainListFragment
 * JD-Core Version:    0.6.0
 */