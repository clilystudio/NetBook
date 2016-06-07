package com.clilystudio.netbook.ui.post;

import android.os.Bundle;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.squareup.a.b;
import com.squareup.a.l;
import com.clilystudio.netbook.adapter.G;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.db.TweetCache;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.TimelineResult;
import com.clilystudio.netbook.model.TimelineResult.Names;
import com.clilystudio.netbook.model.TimelineResult.Temp;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TweetTimelineFragment extends Fragment
{
  private eb a;
  private ea b;
  private PullToRefreshListView c;
  private ListView d;
  private View e;
  private View f;
  private TextView g;
  private RelativeLayout h;
  private TextView i;
  private G j;
  private List<Tweet> k = new ArrayList();
  private j l = new dZ(this);

  static
  {
    TweetTimelineFragment.class.getSimpleName();
  }

  private List<Tweet> a(List<Tweet> paramList, TimelineResult paramTimelineResult)
  {
    ArrayList localArrayList = new ArrayList();
    TimelineResult.Temp[] arrayOfTemp = paramTimelineResult.getTweets();
    int m = arrayOfTemp.length;
    for (int n = 0; n < m; n++)
      localArrayList.add(arrayOfTemp[n].getTweet());
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
    {
      Tweet localTweet = (Tweet)localIterator.next();
      if (a(paramList, localTweet))
        continue;
      if (localTweet.isRetween())
        localTweet.names = a(paramTimelineResult.getRetweetNames(), localTweet.getRefTweet().get_id());
      paramList.add(localTweet);
    }
    return paramList;
  }

  private void a()
  {
    if (am.e() != null)
    {
      this.h.setVisibility(8);
      Account localAccount = am.e();
      this.a = new eb(this, 0);
      eb localeb = this.a;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localAccount.getToken();
      arrayOfString[1] = am.e().getUser().getId();
      localeb.b(arrayOfString);
      return;
    }
    c();
    b();
  }

  private void a(TimelineResult paramTimelineResult)
  {
    TimelineResult.Temp[] arrayOfTemp = paramTimelineResult.getTweets();
    if (arrayOfTemp.length > 0)
    {
      this.k.clear();
      int m = arrayOfTemp.length;
      for (int n = 0; n < m; n++)
      {
        TimelineResult.Temp localTemp = arrayOfTemp[n];
        localTemp.getTweet().setUser(localTemp.getUser());
      }
      this.k = a(new ArrayList(), paramTimelineResult);
      this.j.a(this.k);
    }
  }

  private static boolean a(Tweet paramTweet)
  {
    User localUser = am.e().getUser();
    if (paramTweet.getNames() == null);
    while (true)
    {
      return false;
      String[] arrayOfString = paramTweet.getNames();
      int m = arrayOfString.length;
      for (int n = 0; n < m; n++)
        if (arrayOfString[n].equals(localUser.getNickname()))
          return true;
    }
  }

  private static boolean a(List<Tweet> paramList, Tweet paramTweet)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Tweet localTweet = (Tweet)localIterator.next();
      if ((paramTweet.isRetween()) && (paramTweet.getRefTweet().equals(localTweet.getRefTweet())))
        return true;
      if ((!paramTweet.isRetween()) && (paramTweet.equals(localTweet.getRefTweet())))
        return true;
    }
    return false;
  }

  private static String[] a(TimelineResult.Names[] paramArrayOfNames, String paramString)
  {
    if (paramArrayOfNames == null);
    while (true)
    {
      return null;
      int m = paramArrayOfNames.length;
      for (int n = 0; n < m; n++)
      {
        TimelineResult.Names localNames = paramArrayOfNames[n];
        if (localNames.getId().equals(paramString))
          return localNames.getNames();
      }
    }
  }

  private void b()
  {
    if (am.e() == null)
    {
      this.h.setVisibility(0);
      return;
    }
    this.g.setVisibility(0);
    this.g.setText("这里还没有话题，去发布一个吧");
  }

  private void b(TimelineResult paramTimelineResult)
  {
    TimelineResult.Temp[] arrayOfTemp = paramTimelineResult.getTweets();
    User localUser = am.e().getUser();
    ArrayList localArrayList = new ArrayList();
    int m = arrayOfTemp.length;
    for (int n = 0; n < m; n++)
    {
      TimelineResult.Temp localTemp = arrayOfTemp[n];
      if ((!localTemp.getTweet().isRetween()) || (!a(localTemp.getTweet())))
        continue;
      RetweenRecord localRetweenRecord = new RetweenRecord();
      localRetweenRecord.setUserId(localUser.getId());
      localRetweenRecord.setTweetId(localTemp.getTweet().getRefTweet().get_id());
      localArrayList.add(localRetweenRecord);
    }
    RetweenRecord.save2DB(localArrayList);
  }

  private void c()
  {
    this.g.setVisibility(8);
    this.f.setVisibility(8);
    this.e.setVisibility(8);
    this.c.n();
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Account localAccount = am.e();
    if (localAccount != null)
    {
      List localList = TweetCache.find(localAccount.getUser().getId(), 1);
      if ((localList != null) && (localList.size() > 0))
      {
        TweetCache localTweetCache = (TweetCache)localList.get(0);
        a((TimelineResult)new Gson().fromJson(localTweetCache.getContent(), TimelineResult.class));
      }
    }
    a();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i.a().a(this);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903211, paramViewGroup, false);
    this.f = localView.findViewById(2131493085);
    this.f.setVisibility(8);
    this.g = ((TextView)localView.findViewById(2131493100));
    this.c = ((PullToRefreshListView)localView.findViewById(2131493099));
    this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
    this.h = ((RelativeLayout)localView.findViewById(2131493438));
    this.i = ((TextView)localView.findViewById(2131493589));
    this.i.setOnClickListener(new dW(this));
    this.d = ((ListView)this.c.h());
    this.e = paramLayoutInflater.inflate(2130903325, null);
    this.d.addFooterView(this.e);
    if (a.j())
      this.d.setFooterDividersEnabled(false);
    this.c.setEnabled(false);
    this.c.setOnRefreshListener(new dX(this));
    this.j = new G(getActivity(), false, false);
    this.j.a(this.k);
    this.d.setAdapter(this.j);
    return localView;
  }

  public void onDestroy()
  {
    super.onDestroy();
    i.a().b(this);
  }

  @l
  public void onLogin(t paramt)
  {
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.TweetTimelineFragment
 * JD-Core Version:    0.6.0
 */