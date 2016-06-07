package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.model.ChineseAllPromRoot;
import com.ushaqi.zhuishushenqi.model.TocSummary;
import com.ushaqi.zhuishushenqi.ui.BaseLoadingActivity;

public class ReaderMixActivity extends BaseLoadingActivity
{
  private String a;
  private String b;
  private String c;
  private ListView e;
  private bG f;
  private View g;
  private ChineseAllPromRoot h;
  private View i;
  private View j;
  private TocSummary k;

  public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    return new d().a(paramContext, ReaderMixActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("SOURCE", paramString3).a();
  }

  protected final void b()
  {
    i();
    bE localbE = new bE(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.a;
    localbE.b(arrayOfString);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903321);
    c(2131034482);
    d(2130837881);
    this.a = getIntent().getStringExtra("BOOK_ID");
    this.b = getIntent().getStringExtra("BOOK_TITLE");
    this.c = getIntent().getStringExtra("SOURCE");
    this.f = new bG(this, getLayoutInflater());
    this.e = ((ListView)findViewById(2131493135));
    this.e.setFooterDividersEnabled(true);
    View localView1 = LayoutInflater.from(this).inflate(2130903364, this.e, false);
    this.g = localView1.findViewById(2131493879);
    this.e.addHeaderView(localView1, null, false);
    View localView2 = findViewById(2131493877);
    View localView3 = findViewById(2131493878);
    if ("mix".equals(this.c))
      localView3.setVisibility(0);
    localView2.setOnClickListener(new bB(this));
    this.i = findViewById(2131493872);
    this.j = findViewById(2131493876);
    this.e.setAdapter(this.f);
    this.e.setOnItemClickListener(new bC(this));
    b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ReaderMixActivity
 * JD-Core Version:    0.6.0
 */