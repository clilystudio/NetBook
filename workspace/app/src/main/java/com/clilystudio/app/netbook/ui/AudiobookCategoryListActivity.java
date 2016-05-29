package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;

import com.clilystudio.app.netbook.adapter.b;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.util.as;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;
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
    private List<Album> f = new ArrayList();
    private CommonRequest g;
    private int h = 1;
    private av i = new y(this);

    public static Intent a(Context paramContext, String paramString) {
        return new d_IntentFactory().a_setClass(paramContext, AudiobookCategoryListActivity.class).a_putExtra("TAG_NAME", paramString).a();
    }

    private void j() {
        boolean bool = this.f.isEmpty();
        HashMap localHashMap = new HashMap();
        localHashMap.put("category_id", "3");
        localHashMap.put("tag_name", this.a);
        localHashMap.put("page", this.h);
        try {
            this.g.setDefaultPagesize(50);
            CommonRequest.getAlbums(localHashMap, new x(this, bool));
            return;
        } catch (XimalayaException localXimalayaException) {
            while (true)
                localXimalayaException.printStackTrace();
        }
    }

    protected final void b() {
        i();
        this.f.clear();
        j();
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        a(2130903386);
        this.a = getIntent().getStringExtra("TAG_NAME");
        b(this.a);
        as.a();
        this.g = as.b();
        LayoutInflater localLayoutInflater = LayoutInflater.from(this);
        this.e = localLayoutInflater.inflate(2130903325, null);
        this.e.setVisibility(8);
        this.c = ((ScrollLoadListView) findViewById(2131493981));
        this.c.addFooterView(this.e);
        this.c.setOnItemClickListener(new w(this));
        this.b = new b(localLayoutInflater);
        this.c.setAdapter(this.b);
        b();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.AudiobookCategoryListActivity
 * JD-Core Version:    0.6.2
 */