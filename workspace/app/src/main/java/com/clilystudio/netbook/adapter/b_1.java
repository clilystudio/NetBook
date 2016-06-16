package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.ximalaya.ting.android.opensdk.model.album.Album;

public final class b extends W<Album> {
    private Resources a;

    public b(LayoutInflater layoutInflater) {
        super(layoutInflater, R.layout.list_item_audio_book);
        this.a = layoutInflater.getContext().getResources();
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        Album album = (Album) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(album.getCoverUrlSmall(), R.drawable.cover_default);
        this.a(1, album.getAlbumTitle());
        this.a(2, album.getAlbumIntro());
        Resources resources = this.a;
        Object[] arrobject = new Object[1];
        int n2 = (int) (album.getPlayCount() / 1000);
        if (n2 == 0) {
            n2 = 1;
        }
        arrobject[0] = n2;
        this.a(3, resources.getString(R.string.follower_count_format, arrobject));
        Resources resources2 = this.a;
        Object[] arrobject2 = new Object[]{album.getIncludeTrackCount()};
        this.a(4, resources2.getString(R.string.total_track_count, arrobject2));
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.iv_cover, R.id.tv_title, R.id.tv_short_intro, R.id.tv_favorite_count, R.id.tv_track_count, R.id.iv_track_count};
    }
}
