package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.util.e;

final class g
        extends c<String, ResultStatus> {
    private /* synthetic */ AbsPostActivity a;

    public g(AbsPostActivity absPostActivity, Activity activity, int n) {
        this.a = absPostActivity;
        super(activity, 2131034430);
    }

    private /* varargs */ ResultStatus a(String... arrstring) {
        try {
            ResultStatus resultStatus = b.b().f(arrstring[0], arrstring[1], arrstring[2], arrstring[3]);
            return resultStatus;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        ResultStatus resultStatus = (ResultStatus) object;
        boolean bl = true;
        if (resultStatus != null) {
            if (resultStatus.isOk()) {
                e.a((Activity) this.a, "\u56de\u590d\u6210\u529f");
                this.a.o();
            } else if ("TOKEN_INVALID".equals(resultStatus.getCode())) {
                this.a.d();
            } else if ("FORBIDDEN".equals(resultStatus.getCode())) {
                String string = resultStatus.getMsg();
                if (string != null) {
                    e.a((Activity) this.a, string);
                    bl = false;
                } else {
                    e.a((Activity) this.a, 2131034388);
                }
            } else {
                e.a((Activity) this.a, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
            }
        } else {
            e.a((Activity) this.a, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
        }
        this.a.a(bl);
    }
}
