package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.RecommendUgcRoot.RecommendUGC;
import com.ushaqi.zhuishushenqi.ui.ugcbook.UGCDetailActivity;

final class bC
  implements View.OnClickListener
{
  bC(RelateUgcFragment.GetUgcsTask paramGetUgcsTask, RecommendUgcRoot.RecommendUGC paramRecommendUGC)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.b.a.getActivity(), UGCDetailActivity.class);
    localIntent.putExtra("book_id", this.a.getId());
    this.b.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bC
 * JD-Core Version:    0.6.0
 */