package com.ushaqi.zhuishushenqi.ui.home;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.ui.AdWebViewActivity;
import com.ushaqi.zhuishushenqi.ui.AudiobookCategoryActivity;
import com.ushaqi.zhuishushenqi.ui.BookCategoryActivity;
import com.ushaqi.zhuishushenqi.ui.BookRankListActivity;
import com.ushaqi.zhuishushenqi.ui.MhdListActivity;
import com.ushaqi.zhuishushenqi.ui.ugcbook.UGCMainActivity;
import com.ushaqi.zhuishushenqi.util.InsideLinkIntent;
import com.ushaqi.zhuishushenqi.widget.HomeFindGameItem;
import com.ushaqi.zhuishushenqi.widget.HomeFindItem;
import com.ushaqi.zhuishushenqi.widget.HomeFindLuckyGameItem;
import com.ushaqi.zhuishushenqi.widget.HomeFindSecretItem;

public class HomeFindFragment extends HomeFragment
{
  private ViewGroup a;
  private HomeFindSecretItem b;
  private HomeFindGameItem c;
  private HomeFindLuckyGameItem d;

  public static HomeFindFragment a(Bundle paramBundle)
  {
    HomeFindFragment localHomeFindFragment = new HomeFindFragment();
    localHomeFindFragment.setArguments(paramBundle);
    return localHomeFindFragment;
  }

  public final String a()
  {
    return "home_find";
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.removeView(this.d);
      if (this.c == null)
        this.c = new HomeFindGameItem(getActivity());
      this.a.addView(this.c);
      this.a.addView(this.d);
      return;
    }
    this.a.removeView(this.c);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903212, paramViewGroup, false);
    FragmentActivity localFragmentActivity = getActivity();
    this.a = ((ViewGroup)localView.findViewById(2131493439));
    this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034450), 2130837830, new Intent(localFragmentActivity, BookRankListActivity.class)));
    this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034565), 2130837833, new Intent(localFragmentActivity, UGCMainActivity.class)));
    this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034334), 2130837823, BookCategoryActivity.a(localFragmentActivity)));
    if (a.r(getActivity(), "switch_audiobook"))
      this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034314), 2130837825, AudiobookCategoryActivity.a(localFragmentActivity)));
    this.b = new HomeFindSecretItem(localFragmentActivity);
    this.a.addView(this.b);
    this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034412), 2130837828, MhdListActivity.a(localFragmentActivity)));
    if (getArguments().getBoolean("game_center_show"))
    {
      this.c = new HomeFindGameItem(localFragmentActivity);
      this.a.addView(this.c);
    }
    if (("1".equals(b.b(getActivity(), "one_yuan_open"))) && (a.z(getActivity())));
    try
    {
      localObject = new InsideLinkIntent(localFragmentActivity, "link:http://zssq.1yuan18.com/v/index.html");
      this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034426), 2130837829, (Intent)localObject));
      this.d = new HomeFindLuckyGameItem(localFragmentActivity);
      this.a.addView(this.d);
      return localView;
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject = AdWebViewActivity.a(localFragmentActivity, getString(2131034426), "http://zssq.1yuan18.com/v/index.html");
    }
  }

  public void onResume()
  {
    super.onResume();
    this.b.a();
    if (this.c != null)
      this.c.a();
    this.d.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.HomeFindFragment
 * JD-Core Version:    0.6.0
 */