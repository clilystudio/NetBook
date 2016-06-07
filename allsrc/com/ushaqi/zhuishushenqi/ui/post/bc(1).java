package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.DiscussSummary;
import java.util.List;

final class bc
  implements AdapterView.OnItemClickListener
{
  bc(CommonPostListActivity paramCommonPostListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - CommonPostListActivity.g(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < CommonPostListActivity.h(this.a).size()))
    {
      DiscussSummary localDiscussSummary = (DiscussSummary)CommonPostListActivity.h(this.a).get(i);
      if (localDiscussSummary != null)
      {
        Intent localIntent = PostDetailActivity.a(this.a, localDiscussSummary.get_id(), "ramble");
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bc
 * JD-Core Version:    0.6.0
 */