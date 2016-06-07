package com.ushaqi.zhuishushenqi.ui.feed;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.ui.BaseActivity;
import java.util.ArrayList;
import java.util.List;

public class FeedAddActivity extends BaseActivity
{
  private c a;
  private ListView b;
  private ArrayList<BookReadRecord> c = new ArrayList();

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903097);
    a(2131034383, 2131034375, new a(this));
    this.b = ((ListView)findViewById(2131493124));
    this.b.setOnItemClickListener(new b(this));
  }

  public void onResume()
  {
    super.onResume();
    this.a = new c(this, getLayoutInflater());
    this.b.setAdapter(this.a);
    List localList = BookReadRecord.getAllWithTopNoFeed();
    this.a.a(localList);
    int i;
    View localView1;
    View localView2;
    if (!localList.isEmpty())
    {
      i = 1;
      localView1 = findViewById(2131493122);
      localView2 = findViewById(2131493125);
      if (i == 0)
        break label98;
      localView1.setVisibility(0);
      localView2.setVisibility(8);
    }
    while (true)
    {
      this.c.clear();
      return;
      i = 0;
      break;
      label98: localView1.setVisibility(8);
      localView2.setVisibility(0);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.feed.FeedAddActivity
 * JD-Core Version:    0.6.0
 */