package com.clilystudio.app.netbook.ui.feed;

import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.i;
import com.clilystudio.app.netbook.event.m;
import com.clilystudio.app.netbook.ui.BaseActivity;
import java.util.List;
import uk.me.lewisdeane.ldialogs.h;

public class FeedListActivity extends BaseActivity
{
  private f a;
  private int b;

  private void a(int paramInt)
  {
    int i = 0;
    int j = a.d(paramInt);
    int[] arrayOfInt = { 2131493425, 2131493426, 2131493427, 2131493428, 2131493429 };
    View localView = getLayoutInflater().inflate(2130903206, null, false);
    h localh = new h(this);
    localh.d = "选择养肥章节数";
    AlertDialog localAlertDialog = localh.a(localView).b("取消", null).a();
    ((RadioGroup)localView.findViewById(2131493424)).check(arrayOfInt[j]);
    while (i < 5)
    {
      ((RadioButton)localView.findViewById(arrayOfInt[i])).setOnClickListener(new e(this, localAlertDialog, i, j));
      i++;
    }
    localAlertDialog.show();
  }

  private void b()
  {
    List localList = BookReadRecord.getAllFeedingOrderByCount();
    this.b = a.a(this, "feed_chapter_count", 50);
    this.a.a(localList);
  }

  @com.squareup.a.l
  public void onBookAddedEvent(com.clilystudio.app.netbook.event.l paraml)
  {
    b();
  }

  @com.squareup.a.l
  public void onChapterCountEvent(m paramm)
  {
    b();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903099);
    b(2131034374);
    i.a().a(this);
    ListView localListView = (ListView)findViewById(2131493127);
    this.a = new f(this, getLayoutInflater());
    localListView.setAdapter(this.a);
    b();
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131558400, paramMenu);
    return true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332:
      onBackPressed();
      return true;
    case 2131494054:
      startActivity(new Intent(this, FeedAddActivity.class));
      return true;
    case 2131494055:
    }
    a(a.a(this, "feed_chapter_count", 50));
    return true;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.FeedListActivity
 * JD-Core Version:    0.6.2
 */