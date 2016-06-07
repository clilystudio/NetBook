package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.ushaqi.zhuishushenqi.adapter.a;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;

final class B
  implements AdapterView.OnItemClickListener
{
  B(AddReviewActivity paramAddReviewActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    AddReviewActivity.a(this.a, ((BookReadRecord)AddReviewActivity.b(this.a).getItem(paramInt)).getBookId());
    AddReviewActivity.b(this.a).a(paramInt);
    AddReviewActivity.b(this.a).notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.B
 * JD-Core Version:    0.6.0
 */