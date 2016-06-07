package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.ListView;
import android.widget.RelativeLayout;
import com.clilystudio.netbook.model.Follower;
import com.clilystudio.netbook.ui.BaseActivity;

public class FollowerListActivity extends BaseActivity
{
  private Follower[] a;
  private ListView b;
  private RelativeLayout c;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903101);
  }

  protected void onStart()
  {
    super.onStart();
    Bundle localBundle = getIntent().getExtras();
    String str;
    if (localBundle.getString("type").equals("TYPE_FOLLOWINGS"))
      str = "关注";
    while (true)
    {
      b(str);
      this.c = ((RelativeLayout)findViewById(2131493132));
      this.b = ((ListView)findViewById(2131493131));
      this.b.setDivider(getResources().getDrawable(2130838151));
      Parcelable[] arrayOfParcelable = localBundle.getParcelableArray("follows");
      if (arrayOfParcelable != null)
      {
        this.a = new Follower[arrayOfParcelable.length];
        for (int i = 0; i < arrayOfParcelable.length; i++)
          this.a[i] = ((Follower)arrayOfParcelable[i]);
        str = "粉丝";
        continue;
      }
      this.a = new Follower[0];
    }
    this.b.setAdapter(new bj(this));
    if (this.a.length > 0)
    {
      this.c.setVisibility(8);
      return;
    }
    this.c.setVisibility(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.FollowerListActivity
 * JD-Core Version:    0.6.0
 */