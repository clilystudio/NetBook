package com.clilystudio.netbook.ui.home;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
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

    public static HomeFindFragment a(Bundle bundle) {
        HomeFindFragment homeFindFragment = new HomeFindFragment();
        homeFindFragment.setArguments(bundle);
        return homeFindFragment;
    }

    @Override
    public final String a() {
        return "home_find";
    }

    public final void a(boolean bl) {
        if (bl) {
            this.a.removeView(this.d);
            if (this.c == null) {
                this.c = new HomeFindGameItem(this.getActivity());
            }
            this.a.addView(this.c);
            this.a.addView(this.d);
            return;
        }
        this.a.removeView(this.c);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_home_find, viewGroup, false);
        FragmentActivity fragmentActivity = this.getActivity();
        this.a = (ViewGroup) view.findViewById(R.id.home_find_container);
        this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.rank_list), R.drawable.home_find_rank, new Intent(fragmentActivity, BookRankListActivity.class)));
        this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.ugc_list), R.drawable.home_find_topic, new Intent(fragmentActivity, UGCMainActivity.class)));
        this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.category), R.drawable.home_find_category, BookCategoryActivity.a(fragmentActivity)));
        if (a.r(this.getActivity(), "switch_audiobook")) {
            this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.audiobooks), R.drawable.home_find_listen, AudiobookCategoryActivity.a(fragmentActivity)));
        }
        this.b = new HomeFindSecretItem(fragmentActivity);
        this.a.addView(this.b);
        this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.mhd_list), R.drawable.home_find_mhd, MhdListActivity.a(fragmentActivity)));
        if (this.getArguments().getBoolean("game_center_show")) {
            this.c = new HomeFindGameItem(fragmentActivity);
            this.a.addView(this.c);
        }
        if ("1".equals(b.b(this.getActivity(), "one_yuan_open")) && a.z(this.getActivity())) {
            void var6_7;
            try {
                InsideLinkIntent insideLinkIntent = new InsideLinkIntent((Context) fragmentActivity, "link:http://zssq.1yuan18.com/v/index.html");
            } catch (Exception var7_9) {
                Intent intent = AdWebViewActivity.a(fragmentActivity, this.getString(R.string.one_yuan), "http://zssq.1yuan18.com/v/index.html");
            }
            this.a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.one_yuan), R.drawable.home_find_oneyuan, (Intent) var6_7));
        }
        this.d = new HomeFindLuckyGameItem(fragmentActivity);
        this.a.addView(this.d);
        return view;
    }

    @Override
    public void onResume() {
        super.onResume();
        this.b.a();
        if (this.c != null) {
            this.c.a();
        }
        this.d.a();
    }
}
