package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.ReviewSummary;
import java.util.List;

final class dk
  implements AdapterView.OnItemClickListener
{
  dk(ReviewListActivity paramReviewListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - ReviewListActivity.k(this.a).getHeaderViewsCount();
    if ((i >= 0) && (i < ReviewListActivity.l(this.a).size()))
    {
      ReviewSummary localReviewSummary = (ReviewSummary)ReviewListActivity.l(this.a).get(i);
      if (localReviewSummary != null)
      {
        Intent localIntent = new Intent(this.a, ReviewActivity.class);
        localIntent.putExtra("extraReviewId", localReviewSummary.get_id());
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dk
 * JD-Core Version:    0.6.0
 */