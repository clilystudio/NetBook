package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.ushaqi.zhuishushenqi.ui.SimpleTabActivity;

public class UserTopicActivity extends SimpleTabActivity
{
  public final String[] h()
  {
    return new String[] { "发布的话题", "收藏的话题" };
  }

  public final Fragment[] i()
  {
    Fragment[] arrayOfFragment = new Fragment[2];
    arrayOfFragment[0] = new MyTopicFragment();
    arrayOfFragment[1] = new MyFavTopicFragment();
    return arrayOfFragment;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b("话题");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.UserTopicActivity
 * JD-Core Version:    0.6.0
 */