package com.clilystudio.netbook.reader;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;

public class ReaderModeActivity extends BaseActivity
{
  protected int a;
  protected String b;
  protected String c;

  private String g(String paramString)
  {
    if (getIntent() != null)
      return getIntent().getStringExtra(paramString);
    return null;
  }

  public final ReaderWebPageFragment a(String paramString)
  {
    ReaderWebPageFragment localReaderWebPageFragment = (ReaderWebPageFragment)getSupportFragmentManager().findFragmentByTag(ReaderWebPageFragment.class.getName());
    if (localReaderWebPageFragment == null)
      localReaderWebPageFragment = ReaderWebPageFragment.a(this.a, paramString);
    return localReaderWebPageFragment;
  }

  public final void a(int paramInt)
  {
    startActivity(BookPostTabActivity.a(this, this.b, this.c));
    BookTopicEnterRecord.updateCount(this.b, paramInt);
  }

  public final void b()
  {
    startActivity(ModeListActivity.a(this, this.b, this.c, this.a));
    overridePendingTransition(2130968602, 2130968603);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.b = g("BOOK_ID");
    this.c = g("BOOK_TITLE");
    if (paramBundle != null);
    for (this.a = paramBundle.getInt("savedCurrentMode", 5); ; this.a = getIntent().getIntExtra("BOOK_MODE", 5))
    {
      getIntent().getBooleanExtra("SELECT_LAST", false);
      return;
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("savedCurrentMode", this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ReaderModeActivity
 * JD-Core Version:    0.6.0
 */