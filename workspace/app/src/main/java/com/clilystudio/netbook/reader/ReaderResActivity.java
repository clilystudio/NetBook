package com.clilystudio.netbook.reader;

import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.ActivityStack;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.IntentBuilder;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.ModeChangedEvent;
import com.clilystudio.netbook.model.TopicCount;
import com.squareup.otto.Subscribe;

public class ReaderResActivity extends ReaderModeActivity {
    private View e;
    private int f;

    public static Intent a(Context context, String string, String string2, int n) {
        return new IntentBuilder().put(context, ReaderResActivity.class).put("BOOK_ID", string).put("BOOK_TITLE", string2).put("BOOK_MODE", n).build();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.content_frame);
        this.c();
        View view = LayoutInflater.from(this).inflate(R.layout.actionbar_custom_read_mode, (ViewGroup)getWindow().getDecorView(), false);
        view.findViewById(R.id.reader_ab_more).setVisibility(View.GONE);
        view.findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderResActivity.this.finish();
            }
        });
        view.findViewById(R.id.reader_ab_read_mode).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ReaderResActivity.this.b();
            }
        });
        this.e = view.findViewById(R.id.reader_ab_topic_count);
        ActionBar actionBar = this.getActionBar();
        assert actionBar != null;
        actionBar.setCustomView(view);
        actionBar.setDisplayShowCustomEnabled(true);
        BusProvider.getInstance().register(this);
        this.f(this.c);
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        Fragment var4_6;
        if (this.a == 0) {
            var4_6 = this.getSupportFragmentManager().findFragmentByTag(ReaderResourceFragment.class.getName());
            if (var4_6 == null) {
                var4_6 = ReaderResourceFragment.a(this.b, this.c);
            }
        } else {
            var4_6 = this.a(this.c);
        }
        fragmentTransaction.replace(R.id.content_frame, var4_6).commit();
        ActivityStack.getInstance();
        ActivityStack.add(this);
        BaseAsyncTask<String, Void, TopicCount> bT2 = new BaseAsyncTask<String, Void, TopicCount>(){

            @Override
            protected TopicCount doInBackground(String... params) {
                ApiServiceProvider.getInstance();
                return ApiServiceProvider.getApiService().I(params[0]);
            }

            @Override
            protected void onPostExecute(TopicCount topicCount) {
                super.onPostExecute(topicCount);
                if (topicCount != null && topicCount.isOk()) {
                    ReaderResActivity.this.f = topicCount.getCount();
                    if (Math.max(0, ReaderResActivity.this.f - BookTopicEnterRecord.get(ReaderResActivity.this.b).getVisitCount()) == 0) {
                        ReaderResActivity.this.e.setVisibility(View.INVISIBLE);
                    } else {
                        ReaderResActivity.this.e.setVisibility(View.VISIBLE);
                    }
                }
            }
        };
        String[] arrstring = new String[]{this.b};
        bT2.b(arrstring);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BusProvider.getInstance().unregister(this);
    }

    @Subscribe
    public void onModeChanged(ModeChangedEvent v2) {
        this.finish();
    }
}
