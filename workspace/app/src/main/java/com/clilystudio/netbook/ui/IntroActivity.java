package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

import java.util.ArrayList;

public class IntroActivity extends Activity implements ViewPager.OnPageChangeListener,
        View.OnClickListener {
    private static final int[] f = new int[]{R.drawable.bg_intro_1, R.drawable.bg_intro_2};
    private ViewPager a;
    private PagerAdapter b;
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
        this.a.setAdapter(this.b);
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
            case R.id.btnQuickLogin:
                this.startActivity(AuthLoginActivity.a(this));
                MiStatInterfaceImpl.recordCountEvent("intro_quick_login", null);
                break;
            case R.id.btnEntryApp:
                this.c();
                MiStatInterfaceImpl.recordCountEvent("intro_entry_app", null);
                break;
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.splash_intro);
        this.e = new ArrayList<>();
        this.a = (ViewPager) this.findViewById(R.id.vp_intro);
        this.b = new PagerAdapter() {

            @Override
            public int getCount() {
                return IntroActivity.a(IntroActivity.this).size();
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                container.addView((View) IntroActivity.a(IntroActivity.this).get(position), 0);
                return IntroActivity.a(IntroActivity.this).get(position);
            }

            @Override
            public void destroyItem(ViewGroup container, int position, Object object) {
                container.removeView((View) IntroActivity.a(IntroActivity.this).get(position));
            }

            @Override
            public boolean isViewFromObject(View view, Object object) {
                return view == object;
            }
        };
        this.c = (Button) this.findViewById(R.id.btnQuickLogin);
        this.c.setOnClickListener(this);
        this.d = (Button) this.findViewById(R.id.btnEntryApp);
        this.d.setOnClickListener(this);
        this.a();
        MiStatInterfaceImpl.recordCountEvent("intro_show_count", null);
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
