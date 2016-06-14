package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.adapter.b;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.album.Album;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class AudiobookCategoryListActivity extends BaseLoadingActivity {
    private String a;
    private b b;
    private ScrollLoadListView c;
    private View e;
    private List<Album> f = new ArrayList<Album>();
    private CommonRequest g;
    private int h = 1;
    private av i;

    public AudiobookCategoryListActivity() {
        this.i = new y(this);
    }

    public static Intent a(Context context, String string) {
        return new d().a(context, AudiobookCategoryListActivity.class).a("TAG_NAME", string).a();
    }

    static /* synthetic */ List a(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.f;
    }

    static /* synthetic */ void a(AudiobookCategoryListActivity audiobookCategoryListActivity, Album album) {
        if (album != null) {
            audiobookCategoryListActivity.startActivity(AudiobookInfoActivity.a(audiobookCategoryListActivity, (long) ((int) album.getId())));
        }
    }

    static /* synthetic */ View b(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.e;
    }

    static /* synthetic */ b c(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.b;
    }

    static /* synthetic */ int d(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.h;
    }

    static /* synthetic */ ScrollLoadListView e(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.c;
    }

    static /* synthetic */ av f(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        return audiobookCategoryListActivity.i;
    }

    static /* synthetic */ int g(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        int n = audiobookCategoryListActivity.h;
        audiobookCategoryListActivity.h = n + 1;
        return n;
    }

    static /* synthetic */ void h(AudiobookCategoryListActivity audiobookCategoryListActivity) {
        audiobookCategoryListActivity.j();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void j() {
        boolean bl = this.f.isEmpty();
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("category_id", "3");
        hashMap.put("tag_name", this.a);
        hashMap.put("page", "" + this.h);
        try {
            this.g.setDefaultPagesize(50);
        } catch (XimalayaException var6_3) {
            var6_3.printStackTrace();
        }
        CommonRequest.getAlbums(hashMap, new x(this, bl));
    }

    @Override
    protected final void b() {
        this.i();
        this.f.clear();
        this.j();
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a(2130903386);
        this.a = this.getIntent().getStringExtra("TAG_NAME");
        this.b(this.a);
        as.a();
        this.g = as.b();
        LayoutInflater layoutInflater = LayoutInflater.from(this);
        this.e = layoutInflater.inflate(2130903325, null);
        this.e.setVisibility(8);
        this.c = (ScrollLoadListView) this.findViewById(2131493981);
        this.c.addFooterView(this.e);
        this.c.setOnItemClickListener((AdapterView.OnItemClickListener) ((Object) new w(this)));
        this.b = new b(layoutInflater);
        this.c.setAdapter(this.b);
        this.b();
    }
}
