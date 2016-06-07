package com.ushaqi.zhuishushenqi.ui.post;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.ushaqi.zhuishushenqi.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class dV extends ZssqFragmentPagerAdapter
{
  private String[] a = { "tabTag0", "tabTag1", "tabTag2" };

  public dV(TweetTabActivity paramTweetTabActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    List localList1 = TweetTabActivity.a(paramTweetTabActivity);
    String str1 = this.a[0];
    TweetTimelineFragment localTweetTimelineFragment = (TweetTimelineFragment)paramTweetTabActivity.getSupportFragmentManager().findFragmentByTag(str1);
    if (localTweetTimelineFragment == null)
      localTweetTimelineFragment = new TweetTimelineFragment();
    localList1.add(0, localTweetTimelineFragment);
    List localList2 = TweetTabActivity.a(paramTweetTabActivity);
    String str2 = this.a[1];
    TweetHotFragment localTweetHotFragment = (TweetHotFragment)paramTweetTabActivity.getSupportFragmentManager().findFragmentByTag(str2);
    if (localTweetHotFragment == null)
      localTweetHotFragment = new TweetHotFragment();
    localList2.add(1, localTweetHotFragment);
    List localList3 = TweetTabActivity.a(paramTweetTabActivity);
    String str3 = this.a[2];
    MyTweetFragment localMyTweetFragment = (MyTweetFragment)paramTweetTabActivity.getSupportFragmentManager().findFragmentByTag(str3);
    if (localMyTweetFragment == null)
      localMyTweetFragment = new MyTweetFragment();
    localList3.add(2, localMyTweetFragment);
    FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
    while (i < 3)
    {
      Fragment localFragment = (Fragment)TweetTabActivity.a(paramTweetTabActivity).get(i);
      if (!localFragment.isAdded())
        localFragmentTransaction.add(TweetTabActivity.b(paramTweetTabActivity).getId(), localFragment, this.a[i]);
      i++;
    }
    if (!localFragmentTransaction.isEmpty())
    {
      localFragmentTransaction.commit();
      paramFragmentManager.executePendingTransactions();
    }
  }

  public final Fragment a(int paramInt)
  {
    return (Fragment)TweetTabActivity.a(this.b).get(paramInt);
  }

  protected final String b(int paramInt)
  {
    return this.a[paramInt];
  }

  public final int getCount()
  {
    return 3;
  }

  public final CharSequence getPageTitle(int paramInt)
  {
    return this.b.getResources().getStringArray(2131361809)[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dV
 * JD-Core Version:    0.6.0
 */