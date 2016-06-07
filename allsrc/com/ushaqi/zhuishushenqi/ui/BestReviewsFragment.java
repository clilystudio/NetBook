package com.ushaqi.zhuishushenqi.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import butterknife.ButterKnife;
import com.arcsoft.hpay100.a.a;

public class BestReviewsFragment extends Fragment
{
  private View a;
  private LinearLayout b;
  private boolean c = false;

  public static BestReviewsFragment a(String paramString1, String paramString2)
  {
    BestReviewsFragment localBestReviewsFragment = new BestReviewsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("args_book_id", paramString1);
    localBundle.putString("args_book_title", paramString2);
    localBestReviewsFragment.setArguments(localBundle);
    return localBestReviewsFragment;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    ah localah = new ah(this, 0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = getArguments().getString("args_book_id");
    localah.b(arrayOfString);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903208, paramViewGroup, false);
    ButterKnife.inject(this, this.a);
    this.b = ((LinearLayout)this.a.findViewById(2131493435));
    this.c = a.r(this.a.getContext(), "community_user_gender_icon_toggle");
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.BestReviewsFragment
 * JD-Core Version:    0.6.0
 */