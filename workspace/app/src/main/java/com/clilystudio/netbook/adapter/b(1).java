package com.clilystudio.netbook.adapter;

import android.content.res.Resources;
import android.view.LayoutInflater;

import com.clilystudio.netbook.util.W;
import com.ximalaya.ting.android.opensdk.model.album.Album;

public final class b extends W<Album> {
    private Resources a;

    public b(LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903264);
        this.a = paramLayoutInflater.getContext().getResources();
    }

    protected final int[] a() {
        return new int[]{2131493616, 2131493605, 2131493617, 2131493619, 2131493621, 2131493620};
    }
}

