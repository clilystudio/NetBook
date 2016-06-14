package com.clilystudio.netbook.ui;

import android.view.MenuItem;

final class E implements m {
    private /* synthetic */ AudiobookInfoActivity a;

    E(AudiobookInfoActivity audiobookInfoActivity) {
        this.a = audiobookInfoActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final boolean a(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 2131494057: {
                if (AudiobookInfoActivity.f(this.a)) return true;
                {
                    AudiobookInfoActivity.e(this.a, true);
                    AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.f(this.a));
                    AudiobookInfoActivity.o(this.a).setText(this.a.getResources().getString(2131034311));
                    AudiobookInfoActivity.c(this.a, 1 + (AudiobookInfoActivity.j(this.a) - AudiobookInfoActivity.m(this.a)));
                    if (!AudiobookInfoActivity.p(this.a)) return true;
                    {
                        AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), AudiobookInfoActivity.l(this.a));
                        return true;
                    }
                }
            }
            default: {
                return true;
            }
            case 2131494058:
        }
        if (!AudiobookInfoActivity.f(this.a)) return true;
        {
            AudiobookInfoActivity.e(this.a, false);
            AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.f(this.a));
            AudiobookInfoActivity.o(this.a).setText(this.a.getResources().getString(2131034312));
            AudiobookInfoActivity.c(this.a, 1 + (AudiobookInfoActivity.j(this.a) - AudiobookInfoActivity.m(this.a)));
            if (!AudiobookInfoActivity.p(this.a)) return true;
            {
                AudiobookInfoActivity.h(this.a).a(AudiobookInfoActivity.m(this.a), AudiobookInfoActivity.l(this.a));
                return true;
            }
        }
    }
}
