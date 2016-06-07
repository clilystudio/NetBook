package com.ushaqi.zhuishushenqi.ui.home;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.db.BookTopicEnterRecord;
import com.ushaqi.zhuishushenqi.model.BookShelfTopic;
import com.ushaqi.zhuishushenqi.ui.post.BookPostTabActivity;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.N
 * JD-Core Version:    0.6.0
 */