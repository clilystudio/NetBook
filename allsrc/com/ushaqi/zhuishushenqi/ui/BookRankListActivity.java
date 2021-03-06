package com.ushaqi.zhuishushenqi.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.l;
import com.ushaqi.zhuishushenqi.adapter.BookRankAdapter;
import com.ushaqi.zhuishushenqi.event.i;
import com.ushaqi.zhuishushenqi.event.k;
import com.ushaqi.zhuishushenqi.event.x;
import com.ushaqi.zhuishushenqi.model.BookRankSummary;

public class BookRankListActivity extends BaseActivity
{
  private View a;
  private View b;
  private BookRankAdapter c;
  private ListView e;
  private Handler f;

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      return;
    case 0:
      this.a.setVisibility(0);
      this.b.setVisibility(8);
      return;
    case 2:
    }
    this.a.setVisibility(8);
    this.b.setVisibility(0);
  }

  private void b()
  {
    a(0);
    new aO(this, 0).b(new Void[0]);
  }

  @l
  public void clickListItem(x paramx)
  {
    BookRankSummary localBookRankSummary = paramx.b();
    String str1;
    if (paramx.a())
    {
      str1 = "male";
      if ((localBookRankSummary.isCollapse()) || (!a.r(this, "rank_revision_switch")))
        break label95;
    }
    label95: for (Intent localIntent = BookRankMainActivity.a(this, localBookRankSummary.getIds(), localBookRankSummary.getTitle(), str1); ; localIntent = BookRankDetailActivity.a(this, localBookRankSummary.get_id(), localBookRankSummary.getTitle()))
    {
      startActivity(localIntent);
      String str2 = localBookRankSummary.getTitle();
      com.umeng.a.b.a(this, "book_rank_list_item", str2 + "_" + str1);
      return;
      str1 = "female";
      break;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    b(2131034450);
    this.f = new Handler();
    this.e = ((ListView)findViewById(2131493101));
    this.a = findViewById(2131493102);
    this.b = findViewById(2131493103);
    this.b.setOnClickListener(new aM(this));
    this.c = new BookRankAdapter(getLayoutInflater());
    this.e.setAdapter(this.c);
    b();
  }

  @l
  public void onExpand(k paramk)
  {
    if ((!a.g()) || (a.k()));
    do
      return;
    while (paramk.a() != this.e.getLastVisiblePosition());
    this.f.postDelayed(new aN(this, paramk), 50L);
  }

  public void onPause()
  {
    super.onPause();
    i.a().b(this);
  }

  public void onResume()
  {
    super.onResume();
    i.a().a(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BookRankListActivity
 * JD-Core Version:    0.6.0
 */