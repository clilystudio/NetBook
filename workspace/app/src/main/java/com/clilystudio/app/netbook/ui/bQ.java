package com.clilystudio.app.netbook.ui;

import android.text.TextUtils;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.AutoCompleteRoot;
import com.clilystudio.app.netbook.widget.SearchEditText;
import com.clilystudio.app.netbook.widget.SearchFixListView;
import java.util.ArrayList;
import java.util.List;

final class bQ extends Filter
{
  private bQ(SearchActivity.SearchPromptAdapter paramSearchPromptAdapter)
  {
  }

  protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    String str = SearchActivity.f(this.a.a).getText().toString();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    localArrayList.add(paramCharSequence.toString());
    if (!TextUtils.isEmpty(str));
    try
    {
      b.a();
      AutoCompleteRoot localAutoCompleteRoot2 = b.b().N(str);
      localAutoCompleteRoot1 = localAutoCompleteRoot2;
      if ((localAutoCompleteRoot1 != null) && (localAutoCompleteRoot1.getKeywords() != null))
        localArrayList.addAll(0, localAutoCompleteRoot1.getKeywords());
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      localFilterResults.values = localArrayList;
      localFilterResults.count = localArrayList.size();
      return localFilterResults;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        AutoCompleteRoot localAutoCompleteRoot1 = null;
      }
    }
  }

  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    List localList = (List)paramFilterResults.values;
    if (localList == null);
    int i;
    do
    {
      return;
      i = localList.size();
    }
    while (i < 2);
    String str = (String)localList.get(i - 2);
    Object localObject;
    label108: SearchFixListView localSearchFixListView;
    if ((i > 2) && (!SearchActivity.c(this.a.a, str)))
    {
      localObject = localList.subList(0, i - 2);
      SearchActivity.SearchPromptAdapter.a(this.a, (List)localObject);
      if (!SearchActivity.SearchPromptAdapter.a(this.a).isEmpty())
        break label159;
      this.a.notifyDataSetInvalidated();
      localSearchFixListView = SearchActivity.k(this.a.a);
      if (!SearchActivity.SearchPromptAdapter.a(this.a).isEmpty())
        break label169;
    }
    label159: label169: for (int j = 8; ; j = 0)
    {
      localSearchFixListView.setVisibility(j);
      return;
      localObject = new ArrayList();
      break;
      this.a.notifyDataSetChanged();
      break label108;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bQ
 * JD-Core Version:    0.6.2
 */