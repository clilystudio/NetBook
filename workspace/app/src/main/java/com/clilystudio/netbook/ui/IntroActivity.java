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

import java.util.ArrayList;

public class IntroActivity extends Activity implements ViewPager.OnPageChangeListener, View.OnClickListener {
    private static final int[] mImageResIds = new int[]{R.drawable.bg_intro_1, R.drawable.bg_intro_2};
    private Button mQuickLoginButton;
    private Button mEntryAppButton;
    private ArrayList<View> mImageViewList;
    private ImageView[] mIndicatorImageView;
    private int mCurrPage;
    private boolean mIsStop = false;

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnQuickLogin:
                startActivity(AuthLoginActivity.a(this));
                break;
            case R.id.btnEntryApp:
                startActivity(new Intent(this, HomeActivity.class));
                finish();
                break;
        }
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.splash_intro);
        mImageViewList = new ArrayList<>();
        ViewPager viewPager = (ViewPager) findViewById(R.id.vp_intro);
        PagerAdapter pagerAdapter = new PagerAdapter() {

            @Override
            public int getCount() {
                return mImageViewList.size();
            }

            @Override
            public Object instantiateItem(ViewGroup container, int position) {
                container.addView(mImageViewList.get(position), 0);
                return mImageViewList.get(position);
            }

            @Override
            public void destroyItem(ViewGroup container, int position, Object object) {
                container.removeView(mImageViewList.get(position));
            }

            @Override
            public boolean isViewFromObject(View view, Object object) {
                return view == object;
            }
        };
        mQuickLoginButton = (Button) findViewById(R.id.btnQuickLogin);
        mQuickLoginButton.setOnClickListener(this);
        mEntryAppButton = (Button) findViewById(R.id.btnEntryApp);
        mEntryAppButton.setOnClickListener(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        for (int resId : mImageResIds) {
            ImageView imageView = new ImageView(this);
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(resId);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            mImageViewList.add(imageView);
        }
        viewPager.setAdapter(pagerAdapter);
        viewPager.addOnPageChangeListener(this);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.linear_bottom_dots);
        mIndicatorImageView = new ImageView[2];
        for (int i = 0; i < mIndicatorImageView.length; ++i) {
            mIndicatorImageView[i] = (ImageView) linearLayout.getChildAt(i);
            mIndicatorImageView[i].setImageResource(R.drawable.ic_point_normal);
            mIndicatorImageView[i].setTag(i);
        }
        mCurrPage = 0;
        mIndicatorImageView[mCurrPage].setImageResource(R.drawable.ic_point_select);
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f, int n2) {
    }

    @Override
    public void onPageSelected(int position) {
        if (position < 0 || position > 1 || mCurrPage == position) {
            return;
        }
        mIndicatorImageView[position].setImageResource(R.drawable.ic_point_select);
        mIndicatorImageView[mCurrPage].setImageResource(R.drawable.ic_point_normal);
        mCurrPage = position;
        if (mCurrPage == 0) {
            mEntryAppButton.setTextColor(getResources().getColor(R.color.intro_blue_color));
            mQuickLoginButton.setTextColor(getResources().getColor(R.color.intro_blue_color));
        } else {
            mEntryAppButton.setTextColor(getResources().getColor(R.color.intro_red_color));
            mQuickLoginButton.setTextColor(getResources().getColor(R.color.intro_red_color));
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (mIsStop) {
            startActivity(new Intent(this, HomeActivity.class));
            finish();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        mIsStop = true;
    }
}
