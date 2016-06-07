package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class I
  implements View.OnClickListener
{
  I(AddTopicCategoryActivity paramAddTopicCategoryActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, AddTopicActivity.class);
    localIntent.putExtra("book_post_list_bookId", AddTopicCategoryActivity.a(this.a));
    localIntent.putExtra("book_post_list_bookTitle", AddTopicCategoryActivity.b(this.a));
    localIntent.putExtra("add_post_mode", AddTopicCategoryActivity.c(this.a));
    localIntent.putExtra("book_post_list_from_reader", AddTopicCategoryActivity.d(this.a));
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.I
 * JD-Core Version:    0.6.0
 */