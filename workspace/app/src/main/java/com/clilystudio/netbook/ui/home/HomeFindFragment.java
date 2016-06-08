package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.ui.AdWebViewActivity;
import com.clilystudio.netbook.ui.AudiobookCategoryActivity;
import com.clilystudio.netbook.ui.BookCategoryActivity;
import com.clilystudio.netbook.ui.BookRankListActivity;
import com.clilystudio.netbook.ui.MhdListActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCMainActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.widget.HomeFindGameItem;
import com.clilystudio.netbook.widget.HomeFindItem;
import com.clilystudio.netbook.widget.HomeFindLuckyGameItem;
import com.clilystudio.netbook.widget.HomeFindSecretItem;

public class HomeFindFragment extends HomeFragment {
    private ViewGroup a;
    private HomeFindSecretItem b;
    private HomeFindGameItem c;
    private HomeFindLuckyGameItem d;

    public static HomeFindFragment a(Bundle paramBundle) {
        HomeFindFragment localHomeFindFragment = new HomeFindFragment();
        localHomeFindFragment.setArguments(paramBundle);
        return localHomeFindFragment;
    }

    public final String a() {
        return "home_find";
    }

    public final void a(boolean paramBoolean) {
        if (paramBoolean) {
            this.a.removeView(this.d);
            if (this.c == null)
                this.c = new HomeFindGameItem(getActivity());
            this.a.addView(this.c);
            this.a.addView(this.d);
            return;
        }
        this.a.removeView(this.c);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903212, paramViewGroup, false);
        FragmentActivity localFragmentActivity = getActivity();
        this.a = ((ViewGroup) localView.findViewById(2131493439));
        this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034450), 2130837830, new Intent(localFragmentActivity, BookRankListActivity.class)));
        this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034565), 2130837833, new Intent(localFragmentActivity, UGCMainActivity.class)));
        this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034334), 2130837823, BookCategoryActivity.a(localFragmentActivity)));
        if (a.r(getActivity(), "switch_audiobook"))
            this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034314), 2130837825, AudiobookCategoryActivity.a(localFragmentActivity)));
        this.b = new HomeFindSecretItem(localFragmentActivity);
        this.a.addView(this.b);
        this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034412), 2130837828, MhdListActivity.a(localFragmentActivity)));
        if (getArguments().getBoolean("game_center_show")) {
            this.c = new HomeFindGameItem(localFragmentActivity);
            this.a.addView(this.c);
        }
        if (("1".equals(b.b(getActivity(), "one_yuan_open"))) && (a.z(getActivity()))) ;
        try {
            localObject = new InsideLinkIntent(localFragmentActivity, "link:http://zssq.1yuan18.com/v/index.html");
            this.a.addView(new HomeFindItem(localFragmentActivity, getString(2131034426), 2130837829, (Intent) localObject));
            this.d = new HomeFindLuckyGameItem(localFragmentActivity);
            this.a.addView(this.d);
            return localView;
        } catch (Exception localException) {
            while (true)
                Object localObject = AdWebViewActivity.a(localFragmentActivity, getString(2131034426), "http://zssq.1yuan18.com/v/index.html");
        }
    }

    public void onResume() {
        super.onResume();
        this.b.a();
        if (this.c != null)
            this.c.a();
        this.d.a();
    }
}

