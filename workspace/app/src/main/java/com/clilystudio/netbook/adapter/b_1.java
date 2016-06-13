package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;
import com.ximalaya.ting.android.opensdk.model.album.Album;

public final class b
        extends W<Album> {
    private Resources a;

    public b(LayoutInflater layoutInflater) {
        super(layoutInflater, 2130903264);
        this.a = layoutInflater.getContext().getResources();
    }

    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        Album album = (Album) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(album.getCoverUrlSmall(), 2130837766);
        this.a(1, album.getAlbumTitle());
        this.a(2, album.getAlbumIntro());
        Resources resources = this.a;
        Object[] arrobject = new Object[1];
        int n2 = (int) (album.getPlayCount() / 1000);
        if (n2 == 0) {
            n2 = 1;
        }
        arrobject[0] = n2;
        this.a(3, resources.getString(2131034387, arrobject));
        Resources resources2 = this.a;
        Object[] arrobject2 = new Object[]{album.getIncludeTrackCount()};
        this.a(4, resources2.getString(2131034530, arrobject2));
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493619, 2131493621, 2131493620};
    }
}
