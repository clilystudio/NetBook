package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.ximalaya.ting.android.opensdk.model.album.Album;

final class w
        implements AdapterView.OnItemClickListener {
    w(AudiobookCategoryListActivity paramAudiobookCategoryListActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        if ((paramInt >= 0) && (paramInt < AudiobookCategoryListActivity.a(this.a).size())) {
            Album localAlbum = (Album) AudiobookCategoryListActivity.a(this.a).get(paramInt);
            AudiobookCategoryListActivity.a(this.a, localAlbum);
        }
    }
}

