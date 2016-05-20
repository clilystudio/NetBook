.class final Lcom/ushaqi/zhuishushenqi/reader/cx;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V
    .locals 0

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cx;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;B)V
    .locals 0

    .prologue
    .line 2793
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cx;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cx;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a()V

    .line 2797
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 2801
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cx;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a()V

    .line 2802
    return-void
.end method
