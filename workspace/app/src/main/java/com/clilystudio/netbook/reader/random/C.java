package com.clilystudio.netbook.reader.random;

import com.a.a.c;
import com.clilystudio.netbook.util.e;

import org.json.JSONArray;
import org.json.JSONException;

final class C extends c {
    C(ReaderRandomActivity paramReaderRandomActivity) {
    }

    public final void a(JSONArray paramJSONArray) {
        if (paramJSONArray.length() > 0)
            try {
                String str = paramJSONArray.getJSONObject(0).getString("iid");
                if ((str != null) && (str.length() > 0)) {
                    if (ReaderRandomActivity.h(this.a).isShowing())
                        new a(ReaderRandomActivity.h(this.a), this.a, true).b(new String[]{str});
                    com.arcsoft.hpay100.a.a.c(this.a, str, "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B");
                    com.arcsoft.hpay100.a.a.i(this.a, str);
                    return;
                }
                e.a(this.a, "打开失败或暂时未开放");
                ReaderRandomActivity.h(this.a).dismiss();
                return;
            } catch (JSONException localJSONException) {
                localJSONException.printStackTrace();
                e.a(this.a, "打开失败或暂时未开放");
                ReaderRandomActivity.h(this.a).dismiss();
            }
    }
}
