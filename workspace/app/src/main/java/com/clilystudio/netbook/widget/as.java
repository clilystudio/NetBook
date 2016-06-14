package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class as extends com.clilystudio.netbook.a_pack.e<String, Void, ResultStatus> {
    private /* synthetic */ PostUsefulView a;

    private as(PostUsefulView postUsefulView) {
        this.a = postUsefulView;
    }

    /* synthetic */ as(PostUsefulView postUsefulView, byte by) {
        this(postUsefulView);
    }

    private static /* varargs */ ResultStatus a(String... arrstring) {
        try {
            b.a();
            ResultStatus resultStatus = b.b().m(arrstring[0], arrstring[1], arrstring[2]);
            return resultStatus;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return as.a((String[]) arrobject);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        super.onPostExecute(resultStatus);
        if (resultStatus == null) {
            e.a((Activity) PostUsefulView.b(this.a), (String) "\u8bc4\u4ef7\u5931\u8d25");
            return;
        }
        if (resultStatus.isOk()) {
            int n = PostUsefulView.a(this.a) ? 1 : 2;
            PostUsefulView.a(this.a, n, true);
            PostUsefulView.a(this.a, n);
            e.a((Activity) PostUsefulView.b(this.a), (String) "\u8bc4\u4ef7\u6210\u529f");
            return;
        } else {
            if ("TOKEN_INVALID".equals(resultStatus.getCode())) {
                e.a((Activity) PostUsefulView.b(this.a), (int) 2131034529);
                return;
            }
            if (!"ALREADY_SET".equals(resultStatus.getCode())) return;
            {
                e.a((Activity) PostUsefulView.b(this.a), (String) "\u60a8\u5df2\u7ecf\u8bc4\u4ef7\u8fc7\u5566");
                return;
            }
        }
    }
}
