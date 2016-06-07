package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.adapter.W;
import com.clilystudio.netbook.model.UGCBookDetail.UGCBookContainer;
import com.clilystudio.netbook.model.UGCBookDetail.UGCBookContainer.UGCBookItem;
import com.clilystudio.netbook.ui.BookInfoActivity;

final class m
  implements AdapterView.OnItemClickListener
{
  m(UGCDetailActivity paramUGCDetailActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - UGCDetailActivity.g(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < UGCDetailActivity.h(this.a).getCount()))
    {
      UGCBookDetail.UGCBookContainer localUGCBookContainer = (UGCBookDetail.UGCBookContainer)UGCDetailActivity.h(this.a).getItem(i);
      if ((localUGCBookContainer != null) && (localUGCBookContainer.getBook() != null))
      {
        Intent localIntent = new Intent(this.a, BookInfoActivity.class);
        localIntent.putExtra("book_id", localUGCBookContainer.getBook().get_id());
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.m
 * JD-Core Version:    0.6.0
 */