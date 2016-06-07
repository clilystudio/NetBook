package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.model.BookReview;
import java.util.List;

final class aB
  implements AdapterView.OnItemClickListener
{
  aB(BookReviewListFragment paramBookReviewListFragment)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - this.a.b.getHeaderViewsCount();
    if ((i >= 0) && (i < BookReviewListFragment.d(this.a).size()))
    {
      BookReview localBookReview = (BookReview)BookReviewListFragment.d(this.a).get(i);
      if (localBookReview != null)
      {
        Intent localIntent = new Intent(this.a.getActivity(), ReviewActivity.class);
        localIntent.putExtra("extraReviewId", localBookReview._id);
        this.a.startActivity(localIntent);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aB
 * JD-Core Version:    0.6.0
 */