package com.ushaqi.zhuishushenqi.reader;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.adapter.C;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class LocalChapterListActivity extends BaseActivity
{
  private TextView a;
  private ListView b;
  private C c;
  private View e;
  private ProgressDialog f;
  private String g;
  private String h;

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d().a(paramContext, LocalChapterListActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a();
  }

  private void b()
  {
    l locall = new l(this);
    this.f = ProgressDialog.show(this, null, "载入中...", true, true);
    this.f.setCanceledOnTouchOutside(false);
    new m(this, locall).start();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903110);
    c(2131034469);
    this.g = getIntent().getStringExtra("BOOK_ID");
    this.h = getIntent().getStringExtra("BOOK_TITLE");
    this.a = ((TextView)findViewById(2131493139));
    this.b = ((ListView)findViewById(2131493137));
    this.e = LayoutInflater.from(this).inflate(2130903381, this.b, false);
    this.b.addHeaderView(this.e, null, false);
    this.e.setVisibility(8);
    this.c = new C(getLayoutInflater());
    this.b.setAdapter(this.c);
    this.b.setOnItemClickListener(new h(this));
    this.b.setOnItemLongClickListener(new i(this));
    if (!a.d())
    {
      this.a.setVisibility(0);
      this.a.setText("无法获取预读章节，请检查SD卡");
      return;
    }
    b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.LocalChapterListActivity
 * JD-Core Version:    0.6.0
 */