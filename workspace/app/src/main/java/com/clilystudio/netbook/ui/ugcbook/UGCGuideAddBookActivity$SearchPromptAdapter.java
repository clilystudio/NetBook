package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.clilystudio.netbook.widget.SearchEditText;
import com.clilystudio.netbook.widget.SearchFixListView;
import java.util.ArrayList;
import java.util.List;

public final class UGCGuideAddBookActivity$SearchPromptAdapter extends BaseAdapter
  implements AdapterView.OnItemClickListener, Filterable
{
  private List<String> b = new ArrayList();
  private x c;

  public UGCGuideAddBookActivity$SearchPromptAdapter(UGCGuideAddBookActivity paramUGCGuideAddBookActivity)
  {
  }

  public final int getCount()
  {
    return this.b.size();
  }

  public final Filter getFilter()
  {
    if (this.c == null)
      this.c = new x(this, 0);
    return this.c;
  }

  public final Object getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.b.size()))
      return this.b.get(paramInt);
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = this.a.getLayoutInflater().inflate(2130903303, paramViewGroup, false);
    UGCGuideAddBookActivity.SearchPromptAdapter.ViewHolder localViewHolder = new UGCGuideAddBookActivity.SearchPromptAdapter.ViewHolder(this, localView);
    if ((paramInt >= 0) && (paramInt < this.b.size()))
      localViewHolder.label.setText((CharSequence)this.b.get(paramInt));
    return localView;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    UGCGuideAddBookActivity.f(this.a).setVisibility(8);
    if ((paramInt >= 0) && (paramInt < this.b.size()))
    {
      String str = (String)this.b.get(paramInt);
      UGCGuideAddBookActivity.a(this.a).setTextByCode(str);
      UGCGuideAddBookActivity.g(this.a);
      UGCGuideAddBookActivity.a(this.a, false);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.UGCGuideAddBookActivity.SearchPromptAdapter
 * JD-Core Version:    0.6.0
 */