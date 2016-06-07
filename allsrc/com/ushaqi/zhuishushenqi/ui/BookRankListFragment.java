package com.ushaqi.zhuishushenqi.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.adapter.g;
import com.ushaqi.zhuishushenqi.model.BookRankDetail;
import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;
import java.util.ArrayList;
import java.util.List;

public class BookRankListFragment extends Fragment
{
  protected g a;
  private View b;
  private View c;
  private View d;
  private TextView e;
  private List<BookRankDetail> f = new ArrayList(100);
  private aR g;

  public static BookRankListFragment a(String paramString1, String paramString2)
  {
    BookRankListFragment localBookRankListFragment = new BookRankListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("type", paramString2);
    localBundle.putString("book_list_id", paramString1);
    localBookRankListFragment.setArguments(localBundle);
    return localBookRankListFragment;
  }

  private void a()
  {
    this.g = new aR(this, 0);
    this.g.b(new String[0]);
  }

  protected final void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.a.getCount()))
    {
      BookRankDetail localBookRankDetail = (BookRankDetail)this.a.getItem(paramInt);
      startActivity(BookInfoActivity.a(getActivity(), localBookRankDetail.get_id()));
    }
  }

  protected final void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.c.setVisibility(8);
      this.d.setVisibility(8);
      this.e.setVisibility(8);
      return;
    case 0:
      this.c.setVisibility(0);
      this.d.setVisibility(8);
      this.e.setVisibility(8);
      return;
    case 2:
      this.c.setVisibility(8);
      this.d.setVisibility(0);
      this.e.setVisibility(8);
      return;
    case 3:
    }
    this.c.setVisibility(8);
    this.d.setVisibility(8);
    this.e.setVisibility(0);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (getArguments().getString("book_list_id") == null)
    {
      b(3);
      return;
    }
    a();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    View localView = paramLayoutInflater.inflate(2130903210, paramViewGroup, false);
    this.c = localView.findViewById(2131493081);
    this.e = ((TextView)localView.findViewById(2131493080));
    this.d = localView.findViewById(2131493082);
    this.d.setOnClickListener(new aP(this));
    this.a = new g(getActivity().getLayoutInflater());
    ScrollLoadListView localScrollLoadListView = (ScrollLoadListView)localView.findViewById(2131493135);
    localScrollLoadListView.setAdapter(this.a);
    localScrollLoadListView.setOnItemClickListener(new aQ(this));
    this.b = paramLayoutInflater.inflate(2130903325, null);
    localScrollLoadListView.addFooterView(this.b);
    this.b.setVisibility(8);
    return localView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BookRankListFragment
 * JD-Core Version:    0.6.0
 */