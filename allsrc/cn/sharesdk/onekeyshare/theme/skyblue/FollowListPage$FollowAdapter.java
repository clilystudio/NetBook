package cn.sharesdk.onekeyshare.theme.skyblue;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity.FollowersResult;
import cn.sharesdk.onekeyshare.FollowerListFakeActivity.Following;
import com.mob.tools.b.j;
import com.mob.tools.gui.AsyncImageView;
import com.mob.tools.gui.PullToRefreshView;
import com.mob.tools.gui.o;
import java.util.ArrayList;
import java.util.HashMap;

class FollowListPage$FollowAdapter extends o
  implements Handler.Callback, PlatformActionListener
{
  private static final int FOLLOW_LIST_EMPTY = 2;
  private Bitmap bmChd;
  private Bitmap bmUnch;
  private int curPage = -1;
  private ArrayList<FollowerListFakeActivity.Following> follows = new ArrayList();
  private boolean hasNext = true;
  private FollowListPage.PRTHeader llHeader = new FollowListPage.PRTHeader(getContext());
  private HashMap<String, Boolean> map = new HashMap();
  private Platform platform;

  public FollowListPage$FollowAdapter(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
    int i = com.arcsoft.hpay100.a.a.d(getContext(), "auth_follow_cb_chd");
    if (i > 0)
      this.bmChd = BitmapFactory.decodeResource(paramPullToRefreshView.getResources(), i);
    int j = com.arcsoft.hpay100.a.a.d(getContext(), "auth_follow_cb_unc");
    if (j > 0)
      this.bmUnch = BitmapFactory.decodeResource(paramPullToRefreshView.getResources(), j);
  }

  private void next()
  {
    if (this.hasNext)
      this.platform.listFriend(15, 1 + this.curPage, null);
  }

  public int getCount()
  {
    if (this.follows == null)
      return 0;
    return this.follows.size();
  }

  public View getHeaderView()
  {
    return this.llHeader;
  }

  public FollowerListFakeActivity.Following getItem(int paramInt)
  {
    return (FollowerListFakeActivity.Following)this.follows.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool = "FacebookMessenger".equals(this.platform.getName());
    FollowListPage.FollowListItem localFollowListItem;
    FollowerListFakeActivity.Following localFollowing;
    Bitmap localBitmap1;
    if (paramView == null)
    {
      paramView = new LinearLayout(paramViewGroup.getContext());
      localFollowListItem = new FollowListPage.FollowListItem(null);
      paramView.setTag(localFollowListItem);
      int i = com.arcsoft.hpay100.a.a.a(getContext(), 52);
      int j = com.arcsoft.hpay100.a.a.a(paramViewGroup.getContext(), 10);
      int k = com.arcsoft.hpay100.a.a.a(paramViewGroup.getContext(), 5);
      if (!bool)
      {
        localFollowListItem.aivIcon = new AsyncImageView(getContext());
        LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(i, i);
        localLayoutParams3.gravity = 16;
        localLayoutParams3.setMargins(j, k, j, k);
        localFollowListItem.aivIcon.setLayoutParams(localLayoutParams3);
        paramView.addView(localFollowListItem.aivIcon);
      }
      LinearLayout localLinearLayout = new LinearLayout(paramViewGroup.getContext());
      localLinearLayout.setPadding(0, j, j, j);
      localLinearLayout.setOrientation(1);
      LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams1.gravity = 16;
      localLayoutParams1.weight = 1.0F;
      localLinearLayout.setLayoutParams(localLayoutParams1);
      paramView.addView(localLinearLayout);
      localFollowListItem.tvName = new TextView(paramViewGroup.getContext());
      localFollowListItem.tvName.setTextColor(-16777216);
      localFollowListItem.tvName.setTextSize(1, 18.0F);
      localFollowListItem.tvName.setSingleLine();
      if (bool)
        localFollowListItem.tvName.setPadding(j, 0, 0, 0);
      localLinearLayout.addView(localFollowListItem.tvName);
      if (!bool)
      {
        localFollowListItem.tvSign = new TextView(paramViewGroup.getContext());
        localFollowListItem.tvSign.setTextColor(2130706432);
        localFollowListItem.tvSign.setTextSize(1, 14.0F);
        localFollowListItem.tvSign.setSingleLine();
        localLinearLayout.addView(localFollowListItem.tvSign);
      }
      localFollowListItem.ivCheck = new ImageView(paramViewGroup.getContext());
      localFollowListItem.ivCheck.setPadding(0, 0, j, 0);
      LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams2.gravity = 16;
      localFollowListItem.ivCheck.setLayoutParams(localLayoutParams2);
      paramView.addView(localFollowListItem.ivCheck);
      localFollowing = getItem(paramInt);
      localFollowListItem.tvName.setText(localFollowing.screenName);
      if (!bool)
        localFollowListItem.tvSign.setText(localFollowing.description);
      ImageView localImageView = localFollowListItem.ivCheck;
      if (!localFollowing.checked)
        break label561;
      localBitmap1 = this.bmChd;
      label481: localImageView.setImageBitmap(localBitmap1);
      if (!bool)
      {
        if (!isFling())
          break label583;
        Bitmap localBitmap2 = com.mob.tools.gui.a.a(localFollowing.icon);
        if ((localBitmap2 == null) || (localBitmap2.isRecycled()))
          break label570;
        localFollowListItem.aivIcon.setImageBitmap(localBitmap2);
      }
    }
    while (true)
    {
      if (paramInt == -1 + getCount())
        next();
      return paramView;
      localFollowListItem = (FollowListPage.FollowListItem)paramView.getTag();
      break;
      label561: localBitmap1 = this.bmUnch;
      break label481;
      label570: localFollowListItem.aivIcon.a(null, 0);
      continue;
      label583: localFollowListItem.aivIcon.a(localFollowing.icon, 0);
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    if (paramMessage.what < 0)
      ((Activity)getContext()).finish();
    while (true)
    {
      return false;
      if (paramMessage.what == 2)
      {
        notifyDataSetChanged();
        continue;
      }
      if (this.curPage <= 0)
        this.follows.clear();
      ArrayList localArrayList = (ArrayList)paramMessage.obj;
      this.follows.addAll(localArrayList);
      notifyDataSetChanged();
    }
  }

  public void onCancel(Platform paramPlatform, int paramInt)
  {
    j.a(-1, this);
  }

  public void onComplete(Platform paramPlatform, int paramInt, HashMap<String, Object> paramHashMap)
  {
    FollowerListFakeActivity.FollowersResult localFollowersResult = FollowerListFakeActivity.parseFollowers(this.platform.getName(), paramHashMap, this.map);
    if (localFollowersResult == null)
      j.a(2, this);
    do
    {
      return;
      this.hasNext = localFollowersResult.hasNextPage;
    }
    while ((localFollowersResult.list == null) || (localFollowersResult.list.size() <= 0));
    this.curPage = (1 + this.curPage);
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.obj = localFollowersResult.list;
    j.a(localMessage, this);
  }

  public void onError(Platform paramPlatform, int paramInt, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
  }

  public void onPullDown(int paramInt)
  {
    this.llHeader.onPullDown(paramInt);
  }

  public void onRequest()
  {
    this.llHeader.onRequest();
    this.curPage = -1;
    this.hasNext = true;
    this.map.clear();
    next();
  }

  public void onReversed()
  {
    super.onReversed();
    this.llHeader.reverse();
  }

  public void setPlatform(Platform paramPlatform)
  {
    this.platform = paramPlatform;
    paramPlatform.setPlatformActionListener(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.theme.skyblue.FollowListPage.FollowAdapter
 * JD-Core Version:    0.6.0
 */