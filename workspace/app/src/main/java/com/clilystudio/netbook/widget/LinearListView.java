package com.clilystudio.netbook.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.ximalaya.ting.android.opensdk.model.track.Track;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class LinearListView extends LinearLayout {
    private static final Integer a = 1;
    private static final Integer b = 2;
    private static final Integer c = 0;
    private Context d;
    private LinearLayout.LayoutParams e;
    private List<Track> f = new ArrayList<Track>();
    private int g = 1;
    private ad h;

    public LinearListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = context;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(LinearListView linearListView, int n) {
        boolean bl;
        Track track = linearListView.f.get(n - 1);
        if (linearListView.g == n) {
            Integer n2 = (Integer) track.getExtra();
            boolean bl2 = n2 == null || c == n2 ? true : a != n2;
            if (bl2) {
                track.setExtra(a);
                bl = bl2;
            } else {
                track.setExtra(b);
                bl = bl2;
            }
        } else {
            linearListView.f.get(-1 + linearListView.g).setExtra(c);
            ((ImageView) linearListView.getChildAt(-1 + linearListView.g).findViewById(R.id.img_play_button)).setImageResource(R.drawable.audiobook_item_play);
            track.setExtra(a);
            linearListView.g = n;
            bl = true;
        }
        linearListView.b(n, bl);
        if (linearListView.h != null) {
            linearListView.h.a(n, bl);
        }
    }

    private void a(int n, int n2) {
        View view = LayoutInflater.from(this.d).inflate(R.layout.list_item_audiobook_track, null);
        view.setOnClickListener((View.OnClickListener) ((Object) new ac(this, n)));
        ((TextView) view.findViewById(R.id.tv_track_number)).setText("" + n2);
        ((TextView) view.findViewById(R.id.tv_track_name)).setText(this.f.get(n - 1).getTrackTitle());
        this.addView(view, this.e);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private void b(int n, boolean bl) {
        AnimationDrawable animationDrawable;
        ImageView imageView = (ImageView) this.getChildAt(n - 1).findViewById(R.id.img_play_button);
        try {
            animationDrawable = (AnimationDrawable) imageView.getDrawable();
        } catch (Exception var4_5) {
            imageView.setImageResource(R.drawable.audiobook_playing);
            animationDrawable = (AnimationDrawable) imageView.getDrawable();
        }
        if (bl) {
            animationDrawable.start();
            return;
        }
        animationDrawable.stop();
    }

    public final List<Track> a() {
        return this.f;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(int n, boolean bl) {
        Integer n2 = bl ? a : b;
        int n3 = n2;
        this.f.get(n - 1).setExtra(n3);
        this.b(n, bl);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a(boolean bl) {
        Collections.reverse(this.f);
        this.removeAllViews();
        int n = this.f.size();
        int n2 = 1;
        while (n2 <= n) {
            int n3 = bl ? n2 : 1 + (n - n2);
            this.a(n2, n3);
            ++n2;
        }
    }

    public void setCurrentPlayIndex(int n) {
        this.g = n;
    }

    public void setItemHeight(int n) {
        this.e = new LinearLayout.LayoutParams(-1, n);
    }

    public void setPlayButtonDefault(int n) {
        if (n > 0 && this.getChildAt(n - 1) != null) {
            ((ImageView) this.getChildAt(n - 1).findViewById(R.id.img_play_button)).setImageResource(R.drawable.audiobook_item_play);
            this.f.get(n - 1).setExtra(c);
        }
    }

    public void setPlayTrackInterface(ad ad2) {
        this.h = ad2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setShowData(List<Track> list, boolean bl, int n) {
        if (list == null) {
            throw new IllegalArgumentException("tracks must not null");
        }
        if (n == 1) {
            this.f.clear();
            this.removeAllViews();
        }
        int n2 = 1 + this.f.size();
        this.f.addAll(list);
        int n3 = this.f.size();
        while (n2 <= n3) {
            int n4 = bl ? n2 : 1 + (n3 - n2);
            this.a(n2, n4);
            ++n2;
        }
        return;
    }
}
