package com.ushaqi.zhuishushenqi.ui.post;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.google.gson.Gson;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.handmark.pulltorefresh.library.j;
import com.ushaqi.zhuishushenqi.adapter.G;
import com.ushaqi.zhuishushenqi.db.TweetCache;
import com.ushaqi.zhuishushenqi.model.HotTweetResult;
import com.ushaqi.zhuishushenqi.model.TimelineResult.Temp;
import com.ushaqi.zhuishushenqi.model.Tweet;
import java.util.ArrayList;
import java.util.List;

public class TweetHotFragment extends Fragment
{
  private dI a;
  private dH b;
  private PullToRefreshListView c;
  private ListView d;
  private View e;
  private View f;
  private TextView g;
  private G h;
  private List<Tweet> i = new ArrayList();
  private j j = new dG(this);

  static
  {
    TweetHotFragment.class.getSimpleName();
  }

  private void a()
  {
    this.a = new dI(this, 0);
    this.a.b(new String[0]);
  }

  private void a(HotTweetResult paramHotTweetResult)
  {
    TimelineResult.Temp[] arrayOfTemp = paramHotTweetResult.getTweets();
    if (arrayOfTemp.length > 0)
    {
      int k = arrayOfTemp.length;
      for (int m = 0; m < k; m++)
      {
        TimelineResult.Temp localTemp = arrayOfTemp[m];
        localTemp.getTweet().setUser(localTemp.getUser());
        this.i.add(localTemp.getTweet());
      }
      this.h.a(this.i);
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    List localList = TweetCache.find("zhuishushenqi_hot_user_id", 2);
    if ((localList != null) && (localList.size() > 0))
    {
      TweetCache localTweetCache = (TweetCache)localList.get(0);
      a((HotTweetResult)new Gson().fromJson(localTweetCache.getContent(), HotTweetResult.class));
    }
    a();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903211, paramViewGroup, false);
    this.f = localView.findViewById(2131493085);
    this.f.setVisibility(8);
    this.g = ((TextView)localView.findViewById(2131493100));
    this.c = ((PullToRefreshListView)localView.findViewById(2131493099));
    this.c.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
    this.d = ((ListView)this.c.h());
    this.e = paramLayoutInflater.inflate(2130903325, null);
    this.d.addFooterView(this.e);
    if (a.j())
      this.d.setFooterDividersEnabled(false);
    this.c.setEnabled(false);
    this.c.setOnRefreshListener(new dE(this));
    this.h = new G(getActivity(), false, true);
    this.h.a(this.i);
    this.d.setAdapter(this.h);
    return localView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.TweetHotFragment
 * JD-Core Version:    0.6.0
 */