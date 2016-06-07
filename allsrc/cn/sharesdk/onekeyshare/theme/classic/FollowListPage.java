package cn.sharesdk.onekeyshare.theme.classic;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.gui.PullToRefreshView;
import java.util.ArrayList;

public class FollowListPage extends FollowerListFakeActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private FollowListPage.FollowAdapter adapter;
  private int lastPosition = -1;
  private TitleLayout llTitle;

  public void onClick(View paramView)
  {
    if (paramView.equals(this.llTitle.getBtnRight()))
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      int j = this.adapter.getCount();
      while (i < j)
      {
        if (this.adapter.getItem(i).checked)
          localArrayList.add(this.adapter.getItem(i).atName);
        i++;
      }
      setResultForChecked(localArrayList);
    }
    finish();
  }

  public void onCreate()
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setBackgroundColor(-657931);
    localLinearLayout.setOrientation(1);
    this.activity.setContentView(localLinearLayout);
    this.llTitle = new TitleLayout(getContext());
    int i = a.d(getContext(), "title_back");
    if (i > 0)
      this.llTitle.setBackgroundResource(i);
    this.llTitle.getBtnBack().setOnClickListener(this);
    int j = a.e(getContext(), "multi_share");
    if (j > 0)
      this.llTitle.getTvTitle().setText(j);
    this.llTitle.getBtnRight().setVisibility(0);
    int k = a.e(getContext(), "finish");
    if (k > 0)
      this.llTitle.getBtnRight().setText(k);
    this.llTitle.getBtnRight().setOnClickListener(this);
    this.llTitle.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    localLinearLayout.addView(this.llTitle);
    FrameLayout localFrameLayout = new FrameLayout(getContext());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.weight = 1.0F;
    localFrameLayout.setLayoutParams(localLayoutParams);
    localLinearLayout.addView(localFrameLayout);
    PullToRefreshView localPullToRefreshView = new PullToRefreshView(getContext());
    localPullToRefreshView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localFrameLayout.addView(localPullToRefreshView);
    this.adapter = new FollowListPage.FollowAdapter(localPullToRefreshView);
    this.adapter.setPlatform(this.platform);
    localPullToRefreshView.setAdapter(this.adapter);
    this.adapter.getListView().setOnItemClickListener(this);
    ImageView localImageView = new ImageView(getContext());
    int m = a.d(getContext(), "title_shadow");
    if (m > 0)
      localImageView.setBackgroundResource(m);
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    localFrameLayout.addView(localImageView);
    localPullToRefreshView.a(true);
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (isRadioMode(this.platform.getName()))
    {
      if (this.lastPosition >= 0)
        this.adapter.getItem(this.lastPosition).checked = false;
      this.lastPosition = paramInt;
    }
    FollowerListFakeActivity.Following localFollowing = this.adapter.getItem(paramInt);
    boolean bool1 = localFollowing.checked;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    localFollowing.checked = bool2;
    this.adapter.notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.classic.FollowListPage
 * JD-Core Version:    0.6.0
 */