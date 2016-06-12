package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;

import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.ScrollLoadListView;
import com.clilystudio.netbook.widget.av;
import com.ximalaya.ting.android.opensdk.datatrasfer.CommonRequest;
import com.ximalaya.ting.android.opensdk.datatrasfer.IDataCallBack;
import com.ximalaya.ting.android.opensdk.httputil.XimalayaException;
import com.ximalaya.ting.android.opensdk.model.album.Album;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AudiobookCategoryListActivity extends BaseLoadingActivity {

    private String a;
    private com.clilystudio.netbook.adapter.b b;
    private ScrollLoadListView c;
    private View e;
    private CommonRequest g;
    private List f = new ArrayList();
    private int h = 1;
    private av i = new y(this);
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2) {
    }

    static List a(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.f;
    }

    static void a(AudiobookCategoryListActivity AudiobookCategoryListActivity1, Album Album2) {
        if (Album2 != null)
            AudiobookCategoryListActivity1.startActivity(AudiobookInfoActivity.a((Context) AudiobookCategoryListActivity1, (long) (int) Album2.getId()));
    }

    static View b(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.e;
    }

    static com.clilystudio.netbook.adapter.b c(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.b;
    }

    static int d(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.h;
    }

    static ScrollLoadListView e(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.c;
    }

    static av f(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        return AudiobookCategoryListActivity1.i;
    }

    static int g(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        int int2 = AudiobookCategoryListActivity1.h;

        AudiobookCategoryListActivity1.h = int2 + 1;
        return int2;
    }

    static void h(AudiobookCategoryListActivity AudiobookCategoryListActivity1) {
        AudiobookCategoryListActivity1.j();
    }

    private void j() {
        boolean boolean1 = f.isEmpty();
        Object Object2 = new HashMap();

        ((Map) Object2).put("category_id", "3");
        ((Map) Object2).put("tag_name", a);
        ((Map) Object2).put("page", new StringBuilder().append(h).toString());
        try {
            g.setDefaultPagesize(50);
        } catch (XimalayaException XimalayaException6) {
            XimalayaException6.printStackTrace();
        }
        CommonRequest.getAlbums((Map) Object2, (IDataCallBack) new x(this, boolean1));
    }

    protected final void b() {
        i();
        f.clear();
        j();
    }

    protected void onCreate(Bundle Bundle1) {
        LayoutInflater LayoutInflater3;

        super.onCreate(Bundle1);
        a(2130903386);
        a = getIntent().getStringExtra("TAG_NAME");
        b(a);
        as.a();
        g = as.b();
        LayoutInflater3 = LayoutInflater.from((Context) this);
        e = LayoutInflater3.inflate(2130903325, null);
        e.setVisibility(8);
        c = (ScrollLoadListView) findViewById(2131493981);
        c.addFooterView(e);
        c.setOnItemClickListener((AdapterView$OnItemClickListener) new w(this));
        b = new com.clilystudio.netbook.adapter.b(LayoutInflater3);
        c.setAdapter((ListAdapter) b);
        b();
    }
}
