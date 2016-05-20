package com.clilystudio.app.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.clilystudio.app.netbook.adapter.c;
import com.clilystudio.app.netbook.model.CategoryBook;
import java.util.ArrayList;
import java.util.List;

public class BookCategoryFragment extends Fragment
{
  private PullToRefreshListView a;
  private ListView b;
  private View c;
  private c d;
  private View e;
  private TextView f;
  private String g;
  private aq h;
  private List<CategoryBook> i = new ArrayList();
  private j j = new ap(this);

  public static BookCategoryFragment a(String paramString)
  {
    BookCategoryFragment localBookCategoryFragment = new BookCategoryFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("bookcategory_type", paramString);
    localBookCategoryFragment.setArguments(localBundle);
    return localBookCategoryFragment;
  }

  public final void a()
  {
    this.e.setVisibility(0);
    this.i.clear();
    this.d.a(this.i);
    this.h = new aq(this);
    this.h.b(new String[0]);
  }

  public final void b(String paramString)
  {
    this.g = paramString;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    View localView = paramLayoutInflater.inflate(2130903209, paramViewGroup, false);
    this.g = ((BookCategoryListActivity)getActivity()).g();
    this.a = ((PullToRefreshListView)localView.findViewById(2131493099));
    this.b = ((ListView)this.a.h());
    a.a(getActivity(), this.b);
    this.e = localView.findViewById(2131493085);
    this.f = ((TextView)localView.findViewById(2131493100));
    LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
    this.c = localLayoutInflater.inflate(2130903325, null);
    if (a.i())
      this.b.setFooterDividersEnabled(false);
    this.b.addFooterView(this.c);
    this.c.setVisibility(8);
    this.b.setOnItemClickListener(new am(this));
    this.a.setOnRefreshListener(new an(this));
    this.d = new c(localLayoutInflater);
    this.b.setAdapter(this.d);
    return localView;
  }

  public void setUserVisibleHint(boolean paramBoolean)
  {
    super.setUserVisibleHint(paramBoolean);
    String str = ((BookCategoryListActivity)getActivity()).g();
    if ((paramBoolean) && (!this.g.equals(str)))
    {
      this.g = str;
      a();
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookCategoryFragment
 * JD-Core Version:    0.6.2
 */