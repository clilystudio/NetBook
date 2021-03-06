package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.ToastUtil;
import com.clilystudio.netbook.widget.JustifyTextView;

import java.text.SimpleDateFormat;
import java.util.Locale;

public final class ReaderPageManager {
    private static final SimpleDateFormat a = new SimpleDateFormat("HH:mm", Locale.CHINA);
    private final Activity mActivity;
    private final ReaderStyle mReaderStyle;
    private ReaderLineInfo d;
    private boolean e;
    private View mReaderPageView;
    private TextView mTitleTV;
    private TextView mBodyTV;
    private TextView mPageNumberTV;
    private View mPageErrorView;
    private ImageView mErrorImageView;
    private TextView mErrorTitleTV;
    private TextView mErrorHintTV;
    private TextView mErrorTextTV;
    private TextView mErrorSubTextTV;
    private boolean p;
    private G q;
    private OnReloadSourceListener mOnReloadSourceListener;
    private OnSourceChangeListener mSourceChangeListener;

    public ReaderPageManager(Activity activity, ReaderStyle readerStyle) {
        this.mActivity = activity;
        this.mReaderStyle = readerStyle;
        this.mReaderPageView = this.mActivity.getLayoutInflater().inflate(R.layout.reader_page, (ViewGroup) this.mActivity.getWindow().getDecorView(), false);
        View view = this.mReaderPageView.findViewById(R.id.reader_page_normal);
        view.setVisibility(View.VISIBLE);
        this.mTitleTV = (TextView) this.mReaderPageView.findViewById(R.id.tv_title);
        this.mBodyTV = (TextView) this.mReaderPageView.findViewById(R.id.tv_body);
        this.mPageNumberTV = (TextView) this.mReaderPageView.findViewById(R.id.tv_page_number);
        this.mPageErrorView = this.mReaderPageView.findViewById(R.id.reader_page_error);
        this.mErrorImageView = (ImageView) this.mReaderPageView.findViewById(R.id.reader_page_error_img);
        this.mErrorTitleTV = (TextView) this.mReaderPageView.findViewById(R.id.reader_page_error_title);
        this.mErrorHintTV = (TextView) this.mReaderPageView.findViewById(R.id.reader_page_error_hint);
        this.mErrorTextTV = (TextView) this.mReaderPageView.findViewById(R.id.reader_page_error_txt);
        this.mErrorSubTextTV = (TextView) this.mReaderPageView.findViewById(R.id.reader_page_sub_error_txt);
        this.mReaderPageView.setPadding(this.mReaderStyle.paddingHori, this.mReaderStyle.paddingVert, this.mReaderStyle.paddingHori, this.mReaderStyle.paddingVert);
        this.l();
        this.m();
        this.k();
        BusProvider.getInstance().register(this);
    }

    private void setErrorImage(int resId) {
        if (this.mErrorImageView != null) {
            this.mErrorImageView.setImageResource(resId);
        }
    }

    private void l() {
        this.mReaderPageView.setBackgroundResource(this.mReaderStyle.h);
        this.mTitleTV.setTextColor(this.mReaderStyle.titleColor);
        this.mBodyTV.setTextColor(this.mReaderStyle.bodyColor);
        this.mPageNumberTV.setTextColor(this.mReaderStyle.titleColor);
        TextView textView = (TextView) this.mReaderPageView.findViewById(R.id.tv_battery);
        textView.setTextColor(this.mReaderStyle.titleColor);
        textView.setBackgroundResource(this.mReaderStyle.batteryBackground);
        ((TextView) this.mReaderPageView.findViewById(R.id.tv_time)).setTextColor(this.mReaderStyle.titleColor);
    }

    private void m() {
        this.mBodyTV.setHeight(this.mReaderStyle.bodyHeight);
        this.mBodyTV.setTextSize(0, this.mReaderStyle.textSize);
        this.mBodyTV.setLineSpacing(this.mReaderStyle.lineSpacing, 1.0f);
    }

    private void n() {
        if (this.d == null) {
            return;
        }
        switch (this.d.getStatus()) {
            default: {
                return;
            }
            case -5: {
                this.p();
                this.mErrorTextTV.setVisibility(View.GONE);
                this.mErrorTitleTV.setText("本来源暂无该小说");
                this.mErrorHintTV.setText("请切换到其他来源");
                this.setErrorImage(R.drawable.ic_reader_connection_error_network_normal);
                this.u();
                return;
            }
            case 1: {
                this.e();
                return;
            }
            case -1: {
                this.p();
                this.mErrorTextTV.setVisibility(View.VISIBLE);
                this.t();
                if (CommonUtil.isConnectedOrConnecting(this.mActivity)) {
                    this.mErrorTitleTV.setText("连接超时，再试试？");
                    this.mErrorHintTV.setText("请刷新重试或切换来源");
                    this.setErrorImage(R.drawable.ic_reader_connection_error_network_normal);
                    this.u();
                    return;
                }
                this.mErrorTitleTV.setText("没网，连不上呀");
                this.mErrorHintTV.setText("请检查网络后重试");
                this.setErrorImage(R.drawable.ic_reader_connection_error_no_network);
                this.mErrorSubTextTV.setVisibility(View.GONE);
                this.mErrorTextTV.setText(R.string.retry);
                return;
            }
            case -3: {
                this.p();
                this.mErrorTextTV.setVisibility(View.VISIBLE);
                this.mErrorTitleTV.setText("本章暂无文字");
                this.mErrorHintTV.setText("未找到本章的文字内容");
                this.setErrorImage(R.drawable.ic_reader_connection_error_network_normal);
                this.t();
                this.u();
                return;
            }
            case -2: {
                this.p();
                this.mErrorTitleTV.setText("此来源尚未更新，请稍后再试");
                this.mErrorHintTV.setText("");
                this.setErrorImage(R.drawable.ic_reader_error_no_content);
                this.u();
                return;
            }
            case -4: {
                this.p();
                this.mErrorTextTV.setVisibility(View.VISIBLE);
                this.mErrorTitleTV.setText("连接超时，再试试？");
                this.mErrorHintTV.setText("请刷新重试或切换来源");
                this.setErrorImage(R.drawable.ic_reader_connection_error_network_normal);
                this.mErrorTextTV.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View v) {
                        if (CommonUtil.isConnectedOrConnecting(ReaderPageManager.this.mActivity)) {
                            ReaderPageManager.this.mPageErrorView.setVisibility(View.GONE);
                            if (ReaderPageManager.this.mOnReloadSourceListener != null) {
                                ReaderPageManager.this.mOnReloadSourceListener.onReload();
                            }
                         } else {
                            ToastUtil.showToast(ReaderPageManager.this.mActivity, R.string.network_unconnected);
                        }
                    }
                });
                this.u();
                return;
            }
            case 0:
        }
        this.mPageErrorView.setVisibility(View.GONE);
        this.mTitleTV.setText("");
        this.mBodyTV.setText("");
        this.mPageNumberTV.setText("");
    }

    private void p() {
        this.mPageErrorView.setVisibility(View.VISIBLE);
        this.mTitleTV.setText(this.d.i());
        this.mBodyTV.setText("");
        this.mPageNumberTV.setText("");
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean q() {
        if (MyApplication.getInstance().getReadMode() == 9) {
            return false;
        }
        boolean bl = false;
        if (!bl) {
            if (this.d == null) return false;
            if (this.d.l() % 5 == 4 && this.d.isLast()) {
                return true;
            }
        }
        return false;
    }

    private void t() {
        this.mErrorTextTV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (CommonUtil.isConnectedOrConnecting(ReaderPageManager.this.mActivity)) {
                    ReaderPageManager.this.mPageErrorView.setVisibility(View.GONE);
                    if (ReaderPageManager.this.q != null) {
                        ReaderPageManager.this.q.a(ReaderPageManager.this.d.l());
                    }
                    return;
                }
                ToastUtil.showToast(ReaderPageManager.this.mActivity, R.string.network_unconnected);
            }
        });
    }

    private void u() {
        this.mErrorSubTextTV.setVisibility(View.VISIBLE);
        this.mErrorSubTextTV.setText("更换来源");
        this.mErrorSubTextTV.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (ReaderPageManager.this.mSourceChangeListener != null) {
                    ReaderPageManager.this.mSourceChangeListener.onChanged();
                }
            }
        });
    }

    public final void a() {
        this.p = true;
    }

    public final void a(int n2) {
        ((TextView) this.mReaderPageView.findViewById(R.id.tv_battery)).setText(String.valueOf(n2));
    }

    public final void a(int n2, int n3) {
        if (this.mBodyTV instanceof JustifyTextView) {
            ((JustifyTextView) this.mBodyTV).setHighLight(n2, n3);
        }
    }

    public final void setSourceChangeListener(OnSourceChangeListener listener) {
        this.mSourceChangeListener = listener;
    }

    public final void a(G g2) {
        this.q = g2;
    }

    public final void a(OnReloadSourceListener h2) {
        this.mOnReloadSourceListener = h2;
    }

    public final void a(ReaderLineInfo n2) {
        this.d = n2;
        this.e = false;
        this.n();
    }

    public final void a(ReaderLineInfo n2, boolean bl) {
        this.d = n2;
        this.e = bl;
        this.n();
    }

    public final void b() {
        this.l();
    }

    public final void c() {
        this.l();
    }

    public final int d() {
        return this.mBodyTV.getHeight();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void e() {
        if (this.d == null) {
            return;
        }
        if (this.f()) {
            ToastUtil.showShortToast(mActivity, "需要付费的章节");
            return;
        }
        if (this.p) {
            this.m();
        }
        this.mPageErrorView.setVisibility(View.GONE);
        this.mTitleTV.setText(this.d.i());
        if (this.mReaderStyle.needCovert()) {
            this.mBodyTV.setText(this.d.a(this.mActivity));
        } else {
            this.mBodyTV.setText(this.d.c());
        }
        TextView textView = this.mPageNumberTV;
        Object[] arrobject = new Object[]{1 + this.d.getCurrIndex(), this.d.k()};
        textView.setText(String.format("%s/%s", arrobject));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public final boolean f() {
        try {
            if (this.d == null) {
                return false;
            }
            ChapterLink[] arrchapterLink = MyApplication.getInstance().getReader().d();
            if (arrchapterLink == null) return false;
            if (arrchapterLink.length == 0) {
                return false;
            }
            int n2 = this.d.l();
            if (n2 < 0) {
                n2 = 0;
            } else if (n2 >= arrchapterLink.length) {
                n2 = -1 + arrchapterLink.length;
            }
            if (!arrchapterLink[n2].isVip()) {
                return false;
            }
            String string = this.d.a().getKey();
            if (string == null && (string = this.d.getReaderPageTransformer().a().e().get(this.d.a().getId())) != null) {
                this.d.a().setKey(string);
            }
            return string == null;
        } catch (Exception var1_4) {
            var1_4.printStackTrace();
            return false;
        }
    }

    public final View i() {
        return this.mReaderPageView;
    }

    public final ReaderLineInfo j() {
        return this.d;
    }

    public final void k() {
        ((TextView) this.mReaderPageView.findViewById(R.id.tv_time)).setText(a.format(System.currentTimeMillis()));
    }

    public interface OnSourceChangeListener {
        void onChanged();
    }

    public interface G {
        void a(int var1);
    }

    public interface OnReloadSourceListener {
        void onReload();
    }
}
