package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewGroup;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;

public class ModeListActivity extends BaseActivity
{
  private int a;
  private String b;
  private String c;

  public static Intent a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    return new d().a(paramContext, ModeListActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("BOOK_MODE", paramInt).a();
  }

  public void finish()
  {
    super.finish();
    overridePendingTransition(2130968604, 2130968605);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903113);
    c(2131034481);
    d(2130837881);
    this.a = getIntent().getIntExtra("BOOK_MODE", 5);
    this.b = getIntent().getStringExtra("BOOK_ID");
    this.c = getIntent().getStringExtra("BOOK_TITLE");
    if (this.a == 10)
      this.a = 5;
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131493144);
    localViewGroup.addView(new ReadModeItem(this, 2130838015, 2131034457, 5, this.a, this.b, this.c));
    localViewGroup.addView(new ReadModeItem(this, 2130838019, 2131034458, 0, this.a, this.b, this.c));
    localViewGroup.addView(new ReadModeItem(this, 2130838017, 2131034459, 4, this.a, this.b, this.c));
    localViewGroup.addView(new ReadModeItem(this, 2130838009, 2131034456, 1, this.a, this.b, this.c));
    localViewGroup.addView(new ReadModeItem(this, 2130838018, 2131034460, 2, this.a, this.b, this.c));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ModeListActivity
 * JD-Core Version:    0.6.0
 */