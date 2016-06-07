package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.model.BookHelpSummary;
import java.util.List;

final class ap
  implements AdapterView.OnItemClickListener
{
  ap(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - BookHelpListActivity.i(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < BookHelpListActivity.j(this.a).size()))
    {
      BookHelpSummary localBookHelpSummary = (BookHelpSummary)BookHelpListActivity.j(this.a).get(i);
      if (localBookHelpSummary != null)
      {
        Intent localIntent = new Intent(this.a, BookHelpActivity.class);
        localIntent.putExtra("extraBookHelpId", localBookHelpSummary.get_id());
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.ap
 * JD-Core Version:    0.6.0
 */