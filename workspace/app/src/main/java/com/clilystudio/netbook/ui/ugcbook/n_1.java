package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;

import com.clilystudio.netbook.ui.cd;

final class n implements cd {
    private /* synthetic */ UGCDetailActivity a;

    n(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final void a(int var1_1) {
        switch (var1_1) {
            case 0: {
                UGCDetailActivity.a(this.a, "\u9009\u5bf9\u59ff\u52bf\u770b\u5c0f\u8bf4\uff0c\u4e66\u8352886~" + UGCDetailActivity.i(this.a) + "\uff0c\u7cfb\u5217\u597d\u4e66\u6253\u5305\u63a8\u8350\uff1a" + UGCDetailActivity.j(this.a));
                **break;
            }
            case 1:
            case 3:
            case 4: {
                UGCDetailActivity.a(this.a, "\u7cfb\u5217\u597d\u4e66\u6253\u5305\u63a8\u8350\uff1a" + UGCDetailActivity.j(this.a));
            }
            lbl7:
            // 3 sources:
            default:
            {
                **GOTO lbl11
            }
            case 2:
        }
        UGCDetailActivity.a(this.a, UGCDetailActivity.i(this.a));
        lbl11:
        // 2 sources:
        this.a.a(var1_1);
        a.a((Context) this.a, var1_1, 3);
    }
}
