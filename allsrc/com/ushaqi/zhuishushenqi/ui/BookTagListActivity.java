package com.ushaqi.zhuishushenqi.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.model.BookSummary;
import com.ushaqi.zhuishushenqi.widget.ScrollLoadListView;
import com.ushaqi.zhuishushenqi.widget.av;
import java.util.ArrayList;
import java.util.List;

public class BookTagListActivity extends BaseLoadingActivity
{
  private aW a;
  private aV b;
  private String c;
  private ScrollLoadListView e;
  private View f;
  private List<BookSummary> g = new ArrayList();
  private av h = new aU(this);

  public static Intent a(Context paramContext, String paramString)
  {
    return new d().a(paramContext, BookTagListActivity.class).a("TAG_LIST_KEY", paramString).a();
  }

  protected final void b()
  {
    i();
    new aX(this, 0).b(new String[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903386);
    this.c = getIntent().getStringExtra("TAG_LIST_KEY");
    b(this.c);
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    this.f = localLayoutInflater.inflate(2130903325, null);
    this.f.setVisibility(8);
    this.e = ((ScrollLoadListView)findViewById(2131493981));
    this.e.addFooterView(this.f);
    this.e.setOnItemClickListener(new aT(this));
    this.b = new aV(this, localLayoutInflater);
    this.e.setAdapter(this.b);
    b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BookTagListActivity
 * JD-Core Version:    0.6.0
 */