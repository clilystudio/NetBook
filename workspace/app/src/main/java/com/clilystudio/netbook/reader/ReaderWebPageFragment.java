package com.clilystudio.netbook.reader;

import android.os.Bundle;

import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.util.CommonUtil;

import java.util.Locale;

public class ReaderWebPageFragment extends WebPageFragment {

    public static ReaderWebPageFragment a(int n, String string) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, int n2) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        bundle.putInt("CHAPTER_INDEX", n2);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, int n2, String string2) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("KEY", string);
        bundle.putInt("CHAPTER_INDEX", n2);
        bundle.putString("CHAPTER_URL", string2);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    public static ReaderWebPageFragment a(int n, String string, String string2, String string3, String string4, String string5) {
        ReaderWebPageFragment readerWebPageFragment = new ReaderWebPageFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("MODE", n);
        bundle.putString("SG_MD", string);
        bundle.putString("KEY", string2);
        bundle.putString("SG_CMD", string3);
        bundle.putString("CHAPTER_URL", string4);
        bundle.putString("SG_CHAPTER", string5);
        readerWebPageFragment.setArguments(bundle);
        return readerWebPageFragment;
    }

    @Override
    protected final String a() {
        String key = this.getArguments().getString("KEY");
        ApiServiceProvider.getInstance();
        ApiServiceProvider.getApiService();
        switch (this.getArguments().getInt("MODE")) {
            case 2:
                return "http://tieba.baidu.com/f?kw=" + key;
            case 3:
                String[] ids = CommonUtil.splitSourceId(key);
                if (ids != null) {
                    return String.format(Locale.CHINA, "http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s", ids[0], ids[1], this.getArguments().getInt("CHAPTER_INDEX"), CommonUtil.encodeUrl(this.getArguments().getString("CHAPTER_URL")));
                } else {
                    return null;
                }
            case 4:
                return "http://m.sm.cn/s?q=" + key;
            case 6:
                return String.format(Locale.CHINA, "http://book.soso.com/#!/detail/%s/%d/%s", key, this.getArguments().getInt("CHAPTER_INDEX"), CommonUtil.encodeUrl(CommonUtil.encodeUrl(this.getArguments().getString("CHAPTER_URL"))));
            case 7:
                return String.format(Locale.CHINA, "http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail", this.getArguments().getString("SG_MD"), key, this.getArguments().getString("SG_CMD"), this.getArguments().getString("CHAPTER_URL"), this.getArguments().getString("SG_CHAPTER"));
            case 8:
                return String.format(Locale.CHINA, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d", key, this.getArguments().getInt("CHAPTER_INDEX"));
            default:
                return "http://m.baidu.com/s?word=" + key;
        }
    }
}
