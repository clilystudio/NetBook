package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;

public class BookRankDetailActivity extends BookListActivity
{
  protected final void b()
  {
    e(0);
    aL localaL = new aL(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = getIntent().getStringExtra("book_list_id");
    localaL.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BookRankDetailActivity
 * JD-Core Version:    0.6.0
 */