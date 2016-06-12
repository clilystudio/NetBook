package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

import com.ximalaya.ting.android.opensdk.model.album.Album;

final class w implements AdapterView$OnItemClickListener {

    private AudiobookCategoryListActivity a;

    w(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        a = AudiobookCategoryListActivity1;
    }

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
        if (int3 >= 0 && int3 < AudiobookCategoryListActivity.a(a).size()) {
            Album Album6 = (Album) AudiobookCategoryListActivity.a(a).get(int3);

            AudiobookCategoryListActivity.a(a, Album6);
        }
    }
}
