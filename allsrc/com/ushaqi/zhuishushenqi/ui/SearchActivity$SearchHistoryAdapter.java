package com.ushaqi.zhuishushenqi.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.umeng.a.b;
import java.util.List;

public final class SearchActivity$SearchHistoryAdapter extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  public SearchActivity$SearchHistoryAdapter(SearchActivity paramSearchActivity)
  {
  }

  public final int getCount()
  {
    return SearchActivity.l(this.a).size();
  }

  public final Object getItem(int paramInt)
  {
    return SearchActivity.l(this.a).get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = this.a.getLayoutInflater().inflate(2130903302, paramViewGroup, false);
    SearchActivity.SearchHistoryAdapter.ViewHolder localViewHolder = new SearchActivity.SearchHistoryAdapter.ViewHolder(this, localView);
    if ((paramInt >= 0) && (paramInt < SearchActivity.l(this.a).size()))
      localViewHolder.word.setText((CharSequence)SearchActivity.l(this.a).get(paramInt));
    return localView;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((paramInt >= 0) && (paramInt < SearchActivity.l(this.a).size()))
    {
      SearchActivity.a(this.a, (String)SearchActivity.l(this.a).get(paramInt));
      b.a(this.a, "search_history_word_click", (String)SearchActivity.l(this.a).get(paramInt));
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.SearchActivity.SearchHistoryAdapter
 * JD-Core Version:    0.6.0
 */