package com.clilystudio.app.netbook.ui.home;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.app.netbook.db.BookTopicEnterRecord;
import com.clilystudio.app.netbook.model.BookShelfTopic;
import com.clilystudio.app.netbook.ui.post.BookPostTabActivity;
import java.util.List;

final class N
  implements AdapterView.OnItemClickListener
{
  N(HomeTopicFragment paramHomeTopicFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = -1 + (paramInt - HomeTopicFragment.b(this.a).getHeaderViewsCount());
    if ((i < 0) || (i >= HomeTopicFragment.c(this.a).size()))
      return;
    BookShelfTopic localBookShelfTopic = (BookShelfTopic)HomeTopicFragment.c(this.a).get(i);
    Intent localIntent = BookPostTabActivity.a(this.a.getActivity(), localBookShelfTopic.getBookId(), localBookShelfTopic.getTitle());
    this.a.startActivity(localIntent);
    BookTopicEnterRecord.updateCount(localBookShelfTopic.getBookId(), localBookShelfTopic.getPostCount());
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.N
 * JD-Core Version:    0.6.2
 */