package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.ushaqi.zhuishushenqi.a;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class AddTopicCategoryActivity extends BaseActivity
{
  private String a;
  private String b;
  private String c;
  private boolean e;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903146);
    b(2131034294);
    a.a();
    a.a(this);
    this.a = getIntent().getStringExtra("book_post_list_bookId");
    this.b = getIntent().getStringExtra("book_post_list_bookTitle");
    this.c = getIntent().getStringExtra("add_post_mode");
    this.e = getIntent().getBooleanExtra("book_post_list_from_reader", false);
    View localView1 = findViewById(2131493266);
    View localView2 = findViewById(2131493268);
    localView1.setOnClickListener(new I(this));
    localView2.setOnClickListener(new J(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.AddTopicCategoryActivity
 * JD-Core Version:    0.6.0
 */