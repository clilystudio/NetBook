package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.umeng.a.b;
import com.clilystudio.netbook.adapter.v;
import com.clilystudio.netbook.d;

public class MhdListActivity extends BaseActivity
{
  private View a;
  private View b;
  private v c;

  public static Intent a(Context paramContext)
  {
    return new d().a(paramContext, MhdListActivity.class).a();
  }

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
    new bm(this, 0).b(new Void[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    b(2131034412);
    ListView localListView = (ListView)findViewById(2131493101);
    this.a = findViewById(2131493102);
    this.b = findViewById(2131493103);
    this.b.setOnClickListener(new bj(this));
    this.c = new v(getLayoutInflater());
    localListView.setAdapter(this.c);
    localListView.setOnItemClickListener(new bk(this));
    b();
    b.a(this, "mhd_open");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.MhdListActivity
 * JD-Core Version:    0.6.0
 */