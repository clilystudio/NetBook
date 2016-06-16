package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.Intent;
import android.view.View;

import com.clilystudio.netbook.a_pack.f;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;

final class bs implements View.OnClickListener {
    private /* synthetic */ ReaderMenuFragment a;

    bs(ReaderMenuFragment readerMenuFragment) {
        this.a = readerMenuFragment;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public final void onClick(View view) {
        switch (view.getId()) {
            default: {
                return;
            }
            case R.id.download:
            case R.id.slm_reader_layout_ad: {
                if (!ReaderMenuFragment.a(this.a)) {
                    ReaderMenuFragment.a(this.a, ReaderMenuFragment.c(this.a), ReaderMenuFragment.d(this.a), ReaderMenuFragment.e(this.a));
                    return;
                }
                try {
                    this.a.startActivity(new InsideLinkIntent((Context) this.a.getActivity(), ReaderMenuFragment.b(this.a)));
                    return;
                } catch (UnImplementException var6_2) {
                    var6_2.printStackTrace();
                    return;
                }
            }
            case R.id.slm_reader_all_post: {
                b.a(this.a.getActivity(), "reader_menu_topic");
                Intent intent = BookPostTabActivity.a(this.a.getActivity(), ReaderMenuFragment.f(this.a), ReaderMenuFragment.g(this.a));
                intent.putExtra("extra_sort_type", "created");
                this.a.startActivity(intent);
                new f(ReaderMenuFragment.f(this.a)).b(new Void[0]);
                ReaderMenuFragment.h(this.a);
                return;
            }
            case R.id.slm_reader_relate_book: {
                ReaderMenuFragment.i(this.a);
                return;
            }
            case R.id.slm_reader_more_source: {
                ReaderActivity readerActivity = (ReaderActivity) this.a.getActivity();
                if (readerActivity == null) return;
                readerActivity.i();
                return;
            }
        }
    }
}
