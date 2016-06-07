package com.clilystudio.netbook.ui.ugcbook;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Selection;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.squareup.a.l;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.List;
import uk.me.lewisdeane.ldialogs.h;

public class UGCGuideAddCollectionActivity extends BaseActivity
{
  private TextView a;
  private TextView b;
  private String c;
  private Author e;
  private boolean f;

  public void onBackPressed()
  {
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    int i;
    if (a.Q(str1))
    {
      boolean bool = a.Q(str2);
      i = 0;
      if (bool);
    }
    else
    {
      i = 1;
    }
    if (i != 0)
    {
      if (((!this.f) && (this.c != null) && (!this.c.equals(""))) || (e().getBooks().size() <= 0))
      {
        h localh2 = new h(this);
        localh2.d = "提示";
        localh2.e = "离开将丢失已输入的内容，确定离开？";
        localh2.a("离开", new D(this)).b("继续编辑", null).a().show();
        return;
      }
      h localh1 = new h(this);
      localh1.d = "提示";
      localh1.e = "离开将丢失已输入的内容，是否保存为草稿？";
      localh1.b("直接离开", new F(this)).a("保存并离开", new E(this)).a().show();
      return;
    }
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903135);
    i.a().a(this);
    this.a = ((TextView)findViewById(2131493224));
    this.b = ((TextView)findViewById(2131493225));
    this.c = getIntent().getStringExtra("ugc_id");
    this.f = getIntent().getBooleanExtra("is_draft", false);
    this.e = ((Author)getIntent().getSerializableExtra("my_author"));
    int i = 2131034562;
    if ((this.c != null) && (!this.c.equals("")))
    {
      UGCNewCollection localUGCNewCollection = MyApplication.a().a;
      if (localUGCNewCollection != null)
      {
        this.a.setText(localUGCNewCollection.getTitle());
        this.b.setText(localUGCNewCollection.getDesc());
        Selection.setSelection(this.a.getEditableText(), this.a.getText().length());
      }
      i = 2131034563;
    }
    while (true)
    {
      a(i, 2131034419, new C(this));
      return;
      MyApplication.a().a = new UGCNewCollection();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onUgcDraftEvent(com.clilystudio.netbook.event.E paramE)
  {
    finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.UGCGuideAddCollectionActivity
 * JD-Core Version:    0.6.0
 */