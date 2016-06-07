package com.clilystudio.netbook.ui.post;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.e;
import uk.me.lewisdeane.ldialogs.h;

public class AddVoteActivity extends BaseActivity
{
  private EditText a;
  private EditText b;
  private View c;
  private String e;
  private String f;
  private boolean g;
  private boolean h;
  private String[] i;
  private int j;
  private String k;
  private String l;

  private boolean f()
  {
    String str = this.a.getText().toString().trim();
    if (this.j != 3)
    {
      if (com.arcsoft.hpay100.a.a.Q(str))
      {
        e.a(this, "\t\t请输入帖子标题\t\t");
        return false;
      }
      if (str.length() < 4)
      {
        e.a(this, "\t\t标题文字太少了哦\t\t");
        return false;
      }
    }
    Editable localEditable = this.b.getText();
    if ((localEditable == null) || (com.arcsoft.hpay100.a.a.Q(localEditable.toString())))
    {
      e.a(this, "\t\t请输入正文\t\t");
      return false;
    }
    if ((this.j == 4) && (localEditable.toString().length() < 300))
    {
      e.a(this, "\t\t文章正文不少于300字\t\t");
      return false;
    }
    return true;
  }

  protected String b()
  {
    return this.k;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 0) && (paramInt2 == -1))
      this.i = paramIntent.getStringArrayExtra("contentArray");
  }

  public void onBackPressed()
  {
    int m = 1;
    String str1 = this.a.getText().toString();
    String str2 = this.b.getText().toString();
    if (!com.arcsoft.hpay100.a.a.Q(str1));
    while (m != 0)
    {
      h localh = new h(this);
      localh.d = "提示";
      localh.e = "离开将丢失已输入的内容，确定离开？";
      localh.b("留在此页", new N(this));
      localh.a("离开", new O(this));
      localh.a().show();
      return;
      if (!com.arcsoft.hpay100.a.a.Q(str2))
        continue;
      m = 0;
    }
    super.onBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903078);
    com.clilystudio.netbook.a.a();
    com.clilystudio.netbook.a.a(this);
    this.a = ((EditText)findViewById(2131493072));
    this.b = ((EditText)findViewById(2131493074));
    this.c = findViewById(2131493073);
    this.l = getIntent().getStringExtra("add_post_mode");
    String str;
    if ("ramble".equals(this.l))
    {
      this.j = 1;
      this.a.setHint(2131034400);
      this.b.setHint(2131034399);
      this.k = "话题";
      this.g = getIntent().getBooleanExtra("add_post_category", false);
      if (!this.g)
        break label433;
      str = "下一步";
      this.k = "投票";
    }
    while (true)
    {
      a("编辑" + b(), str, new K(this));
      return;
      if ("android-feedback".equals(this.l))
      {
        this.j = 2;
        this.a.setHint(2131034402);
        this.b.setHint(2131034401);
        this.k = "意见反馈";
        break;
      }
      if ("TWEET".equals(this.l))
      {
        this.j = 3;
        this.a.setVisibility(8);
        this.c.setVisibility(8);
        this.b.setHint(2131034403);
        this.k = "动态";
        break;
      }
      if ("ARTICLE".equals(this.l))
      {
        this.j = 4;
        this.a.setHint(2131034400);
        this.b.setHint(2131034398);
        this.k = "文章";
        break;
      }
      if ("girl".equals(this.l))
      {
        this.j = 5;
        this.a.setHint(2131034292);
        this.b.setHint(2131034290);
        this.k = "女生区";
        break;
      }
      this.e = getIntent().getStringExtra("book_post_list_bookId");
      this.f = getIntent().getStringExtra("book_post_list_bookTitle");
      this.h = getIntent().getBooleanExtra("book_post_list_from_reader", false);
      this.j = 0;
      break;
      label433: str = "发布";
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.AddVoteActivity
 * JD-Core Version:    0.6.0
 */