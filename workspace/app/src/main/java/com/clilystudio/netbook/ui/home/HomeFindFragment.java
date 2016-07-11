package com.clilystudio.netbook.ui.home;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.BookCategoryActivity;
import com.clilystudio.netbook.ui.BookRankListActivity;
import com.clilystudio.netbook.ui.ugcbook.UGCMainActivity;
import com.clilystudio.netbook.widget.HomeFindItem;

public class HomeFindFragment extends Fragment {

    public static HomeFindFragment a(Bundle bundle) {
        HomeFindFragment homeFindFragment = new HomeFindFragment();
        homeFindFragment.setArguments(bundle);
        return homeFindFragment;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.fragment_home_find, viewGroup, false);
        FragmentActivity fragmentActivity = this.getActivity();
        ViewGroup a = (ViewGroup) view.findViewById(R.id.home_find_container);
        a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.rank_list), R.drawable.home_find_rank, new Intent(fragmentActivity, BookRankListActivity.class)));
        a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.ugc_list), R.drawable.home_find_topic, new Intent(fragmentActivity, UGCMainActivity.class)));
        a.addView(new HomeFindItem(fragmentActivity, this.getString(R.string.category), R.drawable.home_find_category, BookCategoryActivity.a(fragmentActivity)));
        return view;
    }
}
