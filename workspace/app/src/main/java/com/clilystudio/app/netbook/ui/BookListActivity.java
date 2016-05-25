package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.clilystudio.app.netbook.adapter.g;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.BookRankDetail;

public abstract class BookListActivity extends BaseActivity
{
  protected g a;
  private View b;
  private View c;
  private TextView e;

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d_IntentFactory().a_setClass(paramContext, BookRankDetailActivity.class).a_putExtra("book_list_id", paramString1).a_putExtra("book_list_title", paramString2).a();
  }

  protected void a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.a.getCount()))
      startActivity(BookInfoActivity.a(this, ((BookRankDetail)this.a.getItem(paramInt)).get_id()));
  }

  protected abstract void b();

  protected final void e(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.b.setVisibility(8);
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      return;
    case 0:
      this.b.setVisibility(0);
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      return;
    case 2:
      this.b.setVisibility(8);
      this.c.setVisibility(0);
      this.e.setVisibility(8);
      return;
    case 3:
    }
    this.b.setVisibility(8);
    this.c.setVisibility(8);
    this.e.setVisibility(0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903108);
    b(getIntent().getStringExtra("book_list_title"));
    this.b = findViewById(2131493081);
    this.e = ((TextView)findViewById(2131493080));
    this.c = findViewById(2131493082);
    this.c.setOnClickListener(new aJ(this));
    this.a = new g(getLayoutInflater());
    ListView localListView = (ListView)findViewById(2131493135);
    localListView.setAdapter(this.a);
    localListView.setOnItemClickListener(new aK(this));
    b();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookListActivity
 * JD-Core Version:    0.6.2
 */