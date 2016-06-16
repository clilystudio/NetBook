package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

import java.util.ArrayList;

public class IntroActivity extends Activity implements ViewPager$OnPageChangeListener,
        View.OnClickListener {
    private static final int[] f = new int[]{R.drawable.bg_intro_1, R.drawable.bg_intro_2};
    private ViewPager a;
    private bc b;
    private Button c;
    private Button d;
    private ArrayList<View> e;
    private ImageView[] g;
    private int h;
    private boolean i = false;

    static /* synthetic */ ArrayList a(IntroActivity introActivity) {
        return introActivity.e;
    }

    private static void a(ImageView imageView, boolean bl) {
        if (bl) {
            imageView.setImageResource(R.drawable.ic_point_select);
            return;
        }
        imageView.setImageResource(R.drawable.ic_point_normal);
    }

    private void a() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        for (int i = 0; i < 2; ++i) {
            ImageView imageView = new ImageView(this);
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(f[i]);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            this.e.add(imageView);
        }
        this.a.setAdapter((PagerAdapter) ((Object) this.b));
        this.a.addOnPageChangeListener(this);
        this.b();
    }

    private void b() {
        LinearLayout linearLayout = (LinearLayout) this.findViewById(R.id.linear_bottom_dots);
        this.g = new ImageView[2];
        for (int i = 0; i < 2; ++i) {
            this.g[i] = (ImageView) linearLayout.getChildAt(i);
            IntroActivity.a(this.g[i], false);
            this.g[i].setTag(i);
        }
        this.h = 0;
        IntroActivity.a(this.g[this.h], true);
    }

    private void c() {
        this.startActivity(new Intent(this, HomeActivity.class));
        this.finish();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.btnQuickLogin: {
                this.startActivity(AuthLoginActivity.a(this));
                b.a(this, "intro_quick_login");
                return;
            }
            case R.id.btnEntryApp:
        }
        this.c();
        b.a(this, "intro_entry_app");
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.splash_intro);
        this.e = new ArrayList();
        this.a = (ViewPager) this.findViewById(R.id.vp_intro);
        this.b = new bc(this);
        this.c = (Button) this.findViewById(R.id.btnQuickLogin);
        this.c.setOnClickListener(this);
        this.d = (Button) this.findViewById(R.id.btnEntryApp);
        this.d.setOnClickListener(this);
        this.a();
        b.a(this, "intro_show_count");
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f, int n2) {
    }

    @Override
    public void onPageSelected(int n) {
        if (n < 0 || n > 1 || this.h == n) {
            return;
        }
        IntroActivity.a(this.g[n], true);
        IntroActivity.a(this.g[this.h], false);
        this.h = n;
        if (this.h == 0) {
            this.d.setTextColor(this.getResources().getColor(R.color.intro_blue_color));
            this.c.setTextColor(this.getResources().getColor(R.color.intro_blue_color));
            return;
        }
        this.d.setTextColor(this.getResources().getColor(R.color.intro_red_color));
        this.c.setTextColor(this.getResources().getColor(R.color.intro_red_color));
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (this.i) {
            this.c();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        this.i = true;
    }
}
