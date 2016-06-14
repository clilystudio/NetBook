package com.clilystudio.netbook.ui;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.util.as;
import com.ximalaya.ting.android.opensdk.model.track.Track;

public final class n extends BaseAdapter {
    final /* synthetic */ AudioBookPlayActivity a;
    private LayoutInflater b;

    public n(AudioBookPlayActivity audioBookPlayActivity, Context context) {
        this.a = audioBookPlayActivity;
        this.b = LayoutInflater.from(context);
    }

    @Override
    public final int getCount() {
        return AudioBookPlayActivity.i(this.a).size();
    }

    @Override
    public final Object getItem(int n2) {
        return AudioBookPlayActivity.i(this.a).get(n2);
    }

    @Override
    public final long getItemId(int n2) {
        return n2;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final View getView(int n2, View view, ViewGroup viewGroup) {
        p p2;
        if (view == null) {
            p2 = new p(this.a);
            view = this.b.inflate(2130903150, null);
            p2.a = (TextView) view.findViewById(2131493297);
            p2.b = (TextView) view.findViewById(2131493299);
            p2.c = (ImageView) view.findViewById(2131493298);
            view.setTag(p2);
        } else {
            p2 = (p) view.getTag();
        }
        Track track = (Track) AudioBookPlayActivity.i(this.a).get(n2);
        p2.a.setText(String.valueOf(n2 + 1));
        p2.b.setText(track.getTrackTitle());
        if (n2 != AudioBookPlayActivity.k(this.a)) {
            p2.c.setImageResource(2130837589);
        } else if (as.c()) {
            p2.c.setImageResource(2130837602);
            ((AnimationDrawable) p2.c.getDrawable()).start();
        } else {
            p2.c.setImageResource(2130837603);
        }
        view.setOnClickListener(new o(this, n2));
        return view;
    }
}
