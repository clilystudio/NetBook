package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.ximalaya.ting.android.opensdk.model.album.Album;

final class w implements AdapterView.OnItemClickListener {
    private /* synthetic */ AudiobookCategoryListActivity a;

    w(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        this.a = audiobookCategoryListActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        if (n >= 0 && n < AudiobookCategoryListActivity.a(this.a).size()) {
            Album album = (Album) AudiobookCategoryListActivity.a(this.a).get(n);
            AudiobookCategoryListActivity.a(this.a, album);
        }
    }
}
