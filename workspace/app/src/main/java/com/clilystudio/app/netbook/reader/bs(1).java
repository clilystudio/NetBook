package com.clilystudio.app.netbook.reader;

import android.content.Intent;
import android.view.View;

import com.clilystudio.app.netbook.a_packA.f;
import com.clilystudio.app.netbook.exception.UnImplementException;
import com.clilystudio.app.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.app.netbook.util.InsideLinkIntent;

final class bs
        implements View.OnClickListener {
    bs(ReaderMenuFragment paramReaderMenuFragment) {
    }

    public final void onClick(View paramView) {
        switch (paramView.getId()) {
            default:
            case 2131492916:
            case 2131492933:
            case 2131493452:
            case 2131493455:
            case 2131493459:
        }
        ReaderActivity localReaderActivity;
        do {
            return;
            if (ReaderMenuFragment.a(this.a))
                try {
                    this.a.startActivity(new InsideLinkIntent(this.a.getActivity(), ReaderMenuFragment.b(this.a)));
                    return;
                } catch (UnImplementException localUnImplementException) {
                    localUnImplementException.printStackTrace();
                    return;
                }
            ReaderMenuFragment.a(this.a, ReaderMenuFragment.c(this.a), ReaderMenuFragment.d(this.a), ReaderMenuFragment.e(this.a));
            return;
            b.a(this.a.getActivity(), "reader_menu_topic");
            Intent localIntent = BookPostTabActivity.a(this.a.getActivity(), ReaderMenuFragment.f(this.a), ReaderMenuFragment.g(this.a));
            localIntent.putExtra("extra_sort_type", "created");
            this.a.startActivity(localIntent);
            new f(ReaderMenuFragment.f(this.a)).b(new Void[0]);
            ReaderMenuFragment.h(this.a);
            return;
            ReaderMenuFragment.i(this.a);
            return;
            localReaderActivity = (ReaderActivity) this.a.getActivity();
        }
        while (localReaderActivity == null);
        localReaderActivity.i();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bs
 * JD-Core Version:    0.6.2
 */