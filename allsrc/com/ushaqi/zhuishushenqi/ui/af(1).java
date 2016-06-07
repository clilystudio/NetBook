package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.ui.post.AddReviewRatingActivity;

final class af
  implements View.OnClickListener
{
  af(BestReviewsFragment paramBestReviewsFragment)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getArguments().getString("args_book_id");
    Intent localIntent = new Intent(this.a.getActivity(), AddReviewRatingActivity.class);
    localIntent.putExtra("bookReviewBookId", str);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.af
 * JD-Core Version:    0.6.0
 */